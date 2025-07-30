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
#pragma comment(linker, "/export:Direct3DCreate8=D3D8_org.Direct3DCreate8")
#pragma comment(linker, "/export:DebugSetMute=D3D8_org.DebugSetMute")
#pragma comment(linker, "/export:ValidatePixelShader=D3D8_org.ValidatePixelShader")
#pragma comment(linker, "/export:ValidateVertexShader=D3D8_org.ValidateVertexShader")

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