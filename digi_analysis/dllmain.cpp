// Proxy DLL originally designed to wrap DirectX 8.  This version strips
// out the Direct3D forwarding code and instead boots a minimal OpenGL
// context.  The DLL still installs runtime hooks and the No‑CD patch but
// no longer loads or delegates to the original D3D8 library.

#include <windows.h>
#include "hooks.h"
#include "MinHook.h"
#include <cstdint>
#include <cstring>
#include "opengl_utils.h"

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
// All OpenGL initialisation lives in opengl_utils.cpp.  This file now
// focuses purely on setting up hooks and exporting a replacement
// Direct3DCreate8 entry point.

// -----------------------------------------------------------------------------
// Custom implementation of Direct3DCreate8
//
// When the game calls Direct3DCreate8 it expects to receive a pointer to
// an IDirect3D8 interface.  To allow us to replace the DirectX renderer
// with an OpenGL implementation we provide our own exported version of
// Direct3DCreate8 here.  This function logs that it has been invoked
// and can perform any initialisation required for an OpenGL context.
// After performing its work it returns nullptr to signal that the
// original Direct3D path is unavailable.  All rendering should be
// performed via the OpenGL context initialised inside this function.

// Forward declaration of the Direct3D 8 interface.  We continue to
// declare it opaquely so callers can compile against this header
// without the full DirectX SDK.
struct IDirect3D8;

// Exported Direct3DCreate8 replacement.  This function is exported from
// our DLL under both the decorated and undecorated names via the linker
// directive above.  It initialises an OpenGL backend and returns nullptr
// to indicate that the original Direct3D implementation is absent.
extern "C" __declspec(dllexport) IDirect3D8* WINAPI Direct3DCreate8(UINT /*sdkVersion*/) {
    // Log that our replacement has been called.  Use OutputDebugStringA so
    // that messages appear in the debugger without popping up a MessageBox.
    OutputDebugStringA("Direct3DCreate8 called – OpenGL backend active\n");

    // Initialise the OpenGL context.  If this fails we simply report that
    // Direct3D is unavailable by returning nullptr.
    if (!InitOpenGL()) {
        return nullptr;
    }

    // No Direct3D implementation is provided; returning nullptr informs the
    // caller that the traditional Direct3D path is disabled.  All rendering
    // should now be performed via the OpenGL context created above.
    return nullptr;
}

// Export our custom Direct3DCreate8 function under its undecorated name.
// Without this directive the compiler will export it only under the
// decorated symbol `_Direct3DCreate8@4`, which will not satisfy the
// game's import table.
#pragma comment(linker, "/export:Direct3DCreate8=_Direct3DCreate8@4")

// DLL entry point.  On process attach we install hooks and apply the
// No‑CD patch.  On detach we remove hooks.  The original Direct3D8
// library is no longer loaded.
BOOL APIENTRY DllMain(HINSTANCE hinstDLL, DWORD fdwReason, LPVOID lpReserved) {
    switch (fdwReason) {
    case DLL_PROCESS_ATTACH:
        InstallHooks();
        ApplyNoCD();
        break;
    case DLL_PROCESS_DETACH:
        MH_DisableHook(MH_ALL_HOOKS);
        MH_Uninitialize();
        ShutdownOpenGL();
        break;
    }
    return TRUE;
}