// Proxy DLL for DirectX 8.  When compiled as d3d8.dll and placed in
// the same directory as the original game, this DLL loads the
// original implementation (`d3d8_orig.dll`), forwards selected exports
// and installs our runtime hooks.  It combines the proxy approach
// demonstrated in the old dllmain with the MinHook‑based hooks used
// elsewhere in this project.

#include <windows.h>
#include "hooks.h"
#include "MinHook.h"
#include <cstdint>
#include <cstring>

// Apply an in‑memory patch to bypass the CD check.  The patch data
// and offsets were extracted from the original project.  On success
// this routine writes a few bytes to specific offsets relative to
// the module base to disable the CD verification.  If the patch
// cannot be applied nothing else is done.
static void ApplyNoCD() {
    uintptr_t baseAddress = reinterpret_cast<uintptr_t>(GetModuleHandleA(NULL));
    struct Patch {
        uintptr_t offset;
        unsigned char data[8];
        size_t size;
    } patches[] = {
        { 0x00667C, { 0xEB }, 1 },
        { 0x0066FD, { 0xEB, 0x06 }, 2 },
        { 0x006A6B, { 0x00 }, 1 },
        { 0x006FFA, { 0x00 }, 1 },
    };
    for (const auto& patch : patches) {
        void* address = reinterpret_cast<void*>(baseAddress + patch.offset);
        DWORD oldProtect;
        if (VirtualProtect(address, patch.size, PAGE_EXECUTE_READWRITE, &oldProtect)) {
            std::memcpy(address, patch.data, patch.size);
            VirtualProtect(address, patch.size, oldProtect, &oldProtect);
            // Optionally log the patch application via debug output.
            // OutputDebugStringA("Applied NoCD patch\n");
        }
    }
}
// Handle to the original Direct3D 8 library.  We assume the original
// has been renamed to D3D8_org.dll and resides alongside this DLL.  The
// original name used by the game might differ (for example, some builds
// include an extra "i" in the filename).  To avoid confusion and to
// match the file included with this project, the proxy always attempts
// to load "D3D8_org.dll".
static HMODULE g_d3d8 = nullptr;

// -----------------------------------------------------------------------------
// Basic OpenGL window creation
//
// To aid in porting the renderer while keeping the game functional we
// optionally create a secondary window with an OpenGL context.  This
// allows you to experiment with rendering the scene using OpenGL
// alongside the original Direct3D 8 pipeline.  The window is
// created on the first call to Direct3DCreate8() and remains open
// until the process exits.  In a complete implementation you would
// draw your OpenGL scene every frame and synchronise it with the
// game state.

static bool g_OpenGLWindowCreated = false;
static HWND g_hWndGL = nullptr;
static HGLRC g_hGLRC = nullptr;
static HDC  g_hDCGL = nullptr;

// Creates a simple Win32 window and initialises an OpenGL context.
// Returns true on success.  This routine registers a minimal window
// class, creates the window, selects an appropriate pixel format and
// binds an OpenGL rendering context.  If any step fails the
// function silently returns false and no window is shown.  You can
// enhance error handling as needed.
static bool CreateOpenGLWindow() {
    if (g_OpenGLWindowCreated) {
        return true;
    }
    // Register a simple window class.  We use DefWindowProc as the
    // window procedure since we do not process any messages here.
    WNDCLASSA wc = {};
    wc.style         = CS_OWNDC;
    wc.lpfnWndProc   = DefWindowProcA;
    wc.hInstance     = GetModuleHandleA(NULL);
    wc.lpszClassName = "DWOpenGLWindow";
    if (!RegisterClassA(&wc)) {
        // The class may already be registered; ignore errors.
    }
    // Create the window offscreen initially; you can adjust
    // dimensions as needed.  WS_OVERLAPPEDWINDOW provides a
    // resizable window with caption and border.
    g_hWndGL = CreateWindowExA(0, wc.lpszClassName, "Digimon OpenGL Renderer", WS_OVERLAPPEDWINDOW,
                               CW_USEDEFAULT, CW_USEDEFAULT, 640, 480,
                               nullptr, nullptr, wc.hInstance, nullptr);
    if (!g_hWndGL) {
        return false;
    }
    // Get the device context for the window.  We keep it around for
    // subsequent buffer swaps.
    g_hDCGL = GetDC(g_hWndGL);
    if (!g_hDCGL) {
        DestroyWindow(g_hWndGL);
        g_hWndGL = nullptr;
        return false;
    }
    // Choose and set a pixel format compatible with OpenGL.  We
    // request a 32‑bit RGBA framebuffer with double buffering.  The
    // PIXELFORMATDESCRIPTOR structure is documented on MSDN.
    PIXELFORMATDESCRIPTOR pfd = {};
    pfd.nSize        = sizeof(pfd);
    pfd.nVersion     = 1;
    pfd.dwFlags      = PFD_DRAW_TO_WINDOW | PFD_SUPPORT_OPENGL | PFD_DOUBLEBUFFER;
    pfd.iPixelType   = PFD_TYPE_RGBA;
    pfd.cColorBits   = 32;
    pfd.cDepthBits   = 24;
    pfd.cStencilBits = 8;
    pfd.iLayerType   = PFD_MAIN_PLANE;
    int pf = ChoosePixelFormat(g_hDCGL, &pfd);
    if (pf == 0) {
        ReleaseDC(g_hWndGL, g_hDCGL);
        DestroyWindow(g_hWndGL);
        g_hWndGL = nullptr;
        g_hDCGL = nullptr;
        return false;
    }
    if (!SetPixelFormat(g_hDCGL, pf, &pfd)) {
        ReleaseDC(g_hWndGL, g_hDCGL);
        DestroyWindow(g_hWndGL);
        g_hWndGL = nullptr;
        g_hDCGL = nullptr;
        return false;
    }
    // Create the OpenGL rendering context and make it current.
    g_hGLRC = wglCreateContext(g_hDCGL);
    if (!g_hGLRC) {
        ReleaseDC(g_hWndGL, g_hDCGL);
        DestroyWindow(g_hWndGL);
        g_hWndGL = nullptr;
        g_hDCGL = nullptr;
        return false;
    }
    if (!wglMakeCurrent(g_hDCGL, g_hGLRC)) {
        wglDeleteContext(g_hGLRC);
        ReleaseDC(g_hWndGL, g_hDCGL);
        DestroyWindow(g_hWndGL);
        g_hWndGL = nullptr;
        g_hDCGL = nullptr;
        g_hGLRC = nullptr;
        return false;
    }
    // Show the window.  At this point the window is visible and the
    // context is current.  You can now perform OpenGL calls such as
    // glClear, glViewport, etc.  Here we simply clear the colour
    // buffer to a distinctive colour to indicate success.
    ShowWindow(g_hWndGL, SW_SHOW);
    // Load minimal GL functions via the Windows OpenGL headers.  We
    // avoid linking against GLEW/GLAD here to keep the example self‑
    // contained.  The function pointers below are available in
    // opengl32.lib on Windows XP and later.
    typedef void (APIENTRY* PFNGLCLEARCOLORPROC)(float, float, float, float);
    typedef void (APIENTRY* PFNGLCLEARPROC)(unsigned int);
    PFNGLCLEARCOLORPROC pglClearColor = (PFNGLCLEARCOLORPROC)wglGetProcAddress("glClearColor");
    PFNGLCLEARPROC      pglClear      = (PFNGLCLEARPROC)wglGetProcAddress("glClear");
    const unsigned int GL_COLOR_BUFFER_BIT = 0x00004000;
    if (pglClearColor && pglClear) {
        pglClearColor(0.1f, 0.2f, 0.3f, 1.0f);
        pglClear(GL_COLOR_BUFFER_BIT);
        SwapBuffers(g_hDCGL);
    }
    g_OpenGLWindowCreated = true;
    return true;
}

// -----------------------------------------------------------------------------
// Custom implementation of Direct3DCreate8
//
// When the game calls Direct3DCreate8 it expects to receive a pointer to
// an IDirect3D8 interface.  To allow us to replace the DirectX renderer
// with an OpenGL implementation we provide our own exported version of
// Direct3DCreate8 here.  This function logs that it has been invoked
// and can perform any initialisation required for an OpenGL context.
// After performing its work it can either return nullptr (to disable
// Direct3D entirely) or delegate to the original Direct3DCreate8
// implementation in D3D8_org.dll.  For now we simply delegate to the
// original to preserve the game’s existing behaviour.  Replace the
// delegation with your OpenGL setup code as you port the renderer.

// Forward declaration of the Direct3D 8 interface.  We avoid pulling
// in the full d3d8.h header by declaring the type as an opaque
// struct.  This is sufficient for pointer comparisons and returns.
struct IDirect3D8;

// Type definition matching the prototype of Direct3DCreate8.  The
// WINAPİ (__stdcall) calling convention is required on 32‑bit
// Windows.  The single parameter is the SDK version constant used
// by the caller to verify binary compatibility.
using PFN_Direct3DCreate8 = IDirect3D8* (WINAPI*)(UINT);

// Cached pointer to the original Direct3DCreate8 function inside
// D3D8_org.dll.  We resolve this on first use to avoid repeatedly
// calling GetProcAddress.
static PFN_Direct3DCreate8 g_origDirect3DCreate8 = nullptr;

// Exported Direct3DCreate8 replacement.  This function is exported
// from our DLL under both the decorated and undecorated names via
// the linker directive above.  It can perform any setup needed for
// an OpenGL backend and then return an IDirect3D8 pointer if
// continuing to use the original renderer.  Returning nullptr would
// signal that Direct3D is unavailable.
extern "C" __declspec(dllexport) IDirect3D8* WINAPI Direct3DCreate8(UINT sdkVersion) {
    // Log that our replacement has been called.  Use OutputDebugStringA so
    // that messages appear in the debugger without popping up a
    // MessageBox.
    OutputDebugStringA("Direct3DCreate8 called – consider initialising OpenGL here\n");
    // On the first invocation create an OpenGL window and context.
    // Subsequent calls will see g_OpenGLWindowCreated set and skip this.
    if (!g_OpenGLWindowCreated) {
        CreateOpenGLWindow();
    }
    // If we haven’t loaded the original function yet, do so now.
    if (!g_origDirect3DCreate8) {
        if (g_d3d8) {
            g_origDirect3DCreate8 = reinterpret_cast<PFN_Direct3DCreate8>(
                GetProcAddress(g_d3d8, "Direct3DCreate8"));
        }
    }
    // If we have an original function, call it to obtain a real
    // IDirect3D8 interface.  You can remove this call once you
    // implement your OpenGL renderer and no longer need Direct3D.
    if (g_origDirect3DCreate8) {
        return g_origDirect3DCreate8(sdkVersion);
    }
    // If the original function is unavailable return nullptr to
    // indicate failure.  The game should handle this gracefully.
    return nullptr;
}

// We no longer define function pointer types, global pointers or stub
// implementations for the Direct3D 8 exports.  Instead we forward
// these exports directly to the original D3D8_org.dll using linker
// directives below.  The original library will provide the correct
// calling conventions and parameter lists, avoiding stack imbalance
// errors.

// The following linker directives force the exports to be named exactly as
// expected by the game.  Without these directives, __stdcall functions
// compiled with __declspec(dllexport) may be decorated (e.g. with
// `@4` suffix) which prevents the loader from resolving the import.  These
// directives map the undecorated export names to the corresponding
// functions defined above.
// Because these functions use the __stdcall (WINAPI) calling
// convention, the compiler decorates their symbols as
// _FunctionName@<bytes>.  To export them under their expected
// undecorated names we specify the decorated name on the right-hand
// side.  The numbers reflect the total size of the parameters: each
// parameter is 4 bytes on x86.  See the Visual C++ documentation
// for details.
// Forward the Direct3D 8 exports to the original D3D8_org.dll.  This
// ensures that calls from the game use the correct calling
// conventions and parameter lists without us having to re‑declare the
// signatures.  The first part before the equals sign specifies the
// export name from this DLL; the second part specifies the target
// DLL and symbol.  Note that the target DLL name is case‑sensitive in
// the directive but Windows treats file names case‑insensitively.
//
// We intentionally do not forward Direct3DCreate8 here because we
// provide our own implementation below that can initialise an
// alternative rendering backend (such as OpenGL) before optionally
// delegating to the original D3D8 entry point.  See
// Direct3DCreate8() further down in this file.
#pragma comment(linker, "/export:DebugSetMute=D3D8_org.DebugSetMute")
#pragma comment(linker, "/export:ValidatePixelShader=D3D8_org.ValidatePixelShader")
#pragma comment(linker, "/export:ValidateVertexShader=D3D8_org.ValidateVertexShader")
// Export our custom Direct3DCreate8 function under its undecorated
// name.  Without this directive the compiler will export it only
// under the decorated symbol `_Direct3DCreate8@4`, which will not
// satisfy the game's import table.  See hooks.cpp for a similar
// pattern with MinHook detours.
#pragma comment(linker, "/export:Direct3DCreate8=_Direct3DCreate8@4")

// DLL entry point.  On process attach we load the original DX8
// library and resolve the address of Direct3DCreate8.  We also
// initialise and enable our hooks.  On detach we disable hooks and
// free the original library.
BOOL APIENTRY DllMain(HINSTANCE hinstDLL, DWORD fdwReason, LPVOID lpReserved) {
    switch (fdwReason) {
    case DLL_PROCESS_ATTACH:
        // Load the original Direct3D 8 library.  Attempt to load
        // "D3D8_org.dll" (matching the file supplied with this
        // project).  If this fails, the export stubs will return
        // ERROR_MOD_NOT_FOUND when called.  Windows file names are
        // case‑insensitive, so the difference in case is irrelevant.
        g_d3d8 = LoadLibraryA("D3D8_org.dll");
        // We intentionally do not resolve any function pointers here.  All
        // exported Direct3D 8 functions are forwarded directly to
        // D3D8_org.dll via linker directives.
        // Install our MinHook‑based detours.  If anything fails here
        // the hooks simply won't be active.
        InstallHooks();
        // Apply the NoCD patch to bypass the CD check in the original binary.
        ApplyNoCD();
        break;
    case DLL_PROCESS_DETACH:
        // Disable all hooks and uninitialise MinHook.
        MH_DisableHook(MH_ALL_HOOKS);
        MH_Uninitialize();
        // Free the original library if it was loaded.
        if (g_d3d8) {
            FreeLibrary(g_d3d8);
            g_d3d8 = nullptr;
        }
        // No function pointers to clear; exports are forwarded via the
        // linker directives.
        break;
    }
    return TRUE;
}