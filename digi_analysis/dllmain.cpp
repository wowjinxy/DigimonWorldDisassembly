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

// Typedefs for the exports we forward.  We avoid including d3d8.h by
// treating return types generically where possible.  The game will
// cast these pointers to the appropriate COM interfaces internally.
using PFN_Direct3DCreate8       = void*   (WINAPI*)(UINT);
using PFN_DebugSetMute          = void    (WINAPI*)(DWORD);
using PFN_ValidatePixelShader   = HRESULT (WINAPI*)(const DWORD*, DWORD*, BOOL);
using PFN_ValidateVertexShader  = HRESULT (WINAPI*)(const DWORD*, DWORD*, BOOL);

// Pointers to the original functions.  These are populated on
// DLL_PROCESS_ATTACH and cleared on detach.  If any pointer is null
// then the corresponding export will fail gracefully.
static PFN_Direct3DCreate8      pDirect3DCreate8      = nullptr;
static PFN_DebugSetMute         pDebugSetMute         = nullptr;
static PFN_ValidatePixelShader  pValidatePixelShader  = nullptr;
static PFN_ValidateVertexShader pValidateVertexShader = nullptr;

// Export stub for Direct3DCreate8.  This function looks up the
// original function pointer and calls through to it.  If the
// original library fails to load the pointer will be null and the
// call will fail gracefully.
// Export stubs for the proxied functions.  Each stub simply calls
// through to the corresponding function pointer if it is available.
// If the original library could not be loaded or the function could
// not be resolved, a sensible error code is returned and last-error
// is updated accordingly.

extern "C" __declspec(dllexport) void* WINAPI Direct3DCreate8(UINT sdkVersion) {
    if (!pDirect3DCreate8) {
        SetLastError(ERROR_MOD_NOT_FOUND);
        return nullptr;
    }
    return pDirect3DCreate8(sdkVersion);
}

extern "C" __declspec(dllexport) void WINAPI DebugSetMute(DWORD dwMute) {
    if (!pDebugSetMute) {
        SetLastError(ERROR_MOD_NOT_FOUND);
        return;
    }
    pDebugSetMute(dwMute);
}

extern "C" __declspec(dllexport) HRESULT WINAPI ValidatePixelShader(const DWORD* pShader, DWORD* reserved, BOOL flag) {
    if (!pValidatePixelShader) {
        SetLastError(ERROR_MOD_NOT_FOUND);
        return HRESULT_FROM_WIN32(ERROR_MOD_NOT_FOUND);
    }
    return pValidatePixelShader(pShader, reserved, flag);
}

extern "C" __declspec(dllexport) HRESULT WINAPI ValidateVertexShader(const DWORD* pShader, DWORD* reserved, BOOL flag) {
    if (!pValidateVertexShader) {
        SetLastError(ERROR_MOD_NOT_FOUND);
        return HRESULT_FROM_WIN32(ERROR_MOD_NOT_FOUND);
    }
    return pValidateVertexShader(pShader, reserved, flag);
}

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
        if (g_d3d8) {
            pDirect3DCreate8      = reinterpret_cast<PFN_Direct3DCreate8>(GetProcAddress(g_d3d8, "Direct3DCreate8"));
            pDebugSetMute         = reinterpret_cast<PFN_DebugSetMute>(GetProcAddress(g_d3d8, "DebugSetMute"));
            pValidatePixelShader  = reinterpret_cast<PFN_ValidatePixelShader>(GetProcAddress(g_d3d8, "ValidatePixelShader"));
            pValidateVertexShader = reinterpret_cast<PFN_ValidateVertexShader>(GetProcAddress(g_d3d8, "ValidateVertexShader"));
        }
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
        // Clear function pointers.
        pDirect3DCreate8      = nullptr;
        pDebugSetMute         = nullptr;
        pValidatePixelShader  = nullptr;
        pValidateVertexShader = nullptr;
        break;
    }
    return TRUE;
}