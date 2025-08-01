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
#include "d3d8_gl_bridge.h"
#include "logger.h"

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
            Log("Applied NoCD patch at offset 0x%06lX\n", patch.offset);
        }
    }
}

// Forward declaration for InstallHooks function
void InstallHooks();

// Exported Direct3DCreate8 replacement.  This function is exported from
// our DLL under both the decorated and undecorated names via the linker
// directive above.  It simply allocates the bridge object and returns it
// to the caller.
extern "C" __declspec(dllexport) IDirect3D8* WINAPI Direct3DCreate8(UINT /*sdkVersion*/) {
    Log("Direct3DCreate8 called – OpenGL backend active\n");
    return new IDirect3D8();
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
        InitLogger();
        Log("DLL_PROCESS_ATTACH\n");
        // Initialize MinHook
        if (MH_Initialize() != MH_OK) {
            Log("Failed to initialize MinHook\n");
            return FALSE;
        }
        InstallHooks();
        Log("Hooks installed\n");
        ApplyNoCD();
        Log("NoCD patch applied\n");
        break;
    case DLL_PROCESS_DETACH:
        MH_DisableHook(MH_ALL_HOOKS);
        MH_Uninitialize();
        ShutdownOpenGL();
        Log("DLL_PROCESS_DETACH\n");
        ShutdownLogger();
        break;
    }
    return TRUE;
}