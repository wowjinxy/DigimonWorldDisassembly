// Proxy DLL originally designed to wrap DirectX 8.  This version forwards to
// the system D3D8 implementation but intercepts draw calls and mirrors them to
// a simple OpenGL renderer.  The DLL still installs runtime hooks and the
// No‑CD patch.

#include <windows.h>
#include "hooks.h"
#include "MinHook.h"
#include <cstdint>
#include <cstring>
#include "opengl_utils.h"
#include "d3d_capture.h"

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

// -----------------------------------------------------------------------------
// Direct3DCreate8 proxy
//
// We forward to the system D3D8 library to obtain a real IDirect3D8 interface.
// After creation we hook CreateDevice so we can intercept draw calls and mirror
// them to OpenGL.  The OpenGL context is initialised on first invocation.
// -----------------------------------------------------------------------------
extern "C" __declspec(dllexport) IDirect3D8* WINAPI Direct3DCreate8(UINT sdkVersion) {
    OutputDebugStringA("Direct3DCreate8 called – installing D3D hooks\n");

    HMODULE d3d8 = LoadLibraryA("d3d8.dll");
    if (!d3d8) {
        return nullptr;
    }
    using PFN_Direct3DCreate8 = IDirect3D8* (WINAPI*)(UINT);
    PFN_Direct3DCreate8 realCreate =
        reinterpret_cast<PFN_Direct3DCreate8>(GetProcAddress(d3d8, "Direct3DCreate8"));
    if (!realCreate) {
        return nullptr;
    }

    IDirect3D8* d3d = realCreate(sdkVersion);
    if (d3d) {
        InstallD3DCreateDeviceHook(d3d);
        InitOpenGL();
    }
    return d3d;
}

#pragma comment(linker, "/export:Direct3DCreate8=_Direct3DCreate8@4")

// DLL entry point.  On process attach we install hooks and apply the
// No‑CD patch.  On detach we remove hooks and shut down the OpenGL thread.
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
