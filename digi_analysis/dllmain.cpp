// Proxy DLL for Direct3D8.  When compiled as d3d8.dll and placed in
// the same directory as the original game, this DLL loads the
// original implementation (`d3d8_orig.dll`), forwards selected exports
// and installs our runtime hooks.  It combines the proxy approach
// demonstrated in the old dllmain with the MinHook‑based hooks used
// elsewhere in this project.

#include <windows.h>
#include "hooks.h"
#include "MinHook.h"

// Handle to the original DirectX 8 library.  We assume the original
// has been renamed to dx8_orig.dll and resides alongside this DLL.
static HMODULE g_dx8 = nullptr;

// Typedef for the Direct3DCreate8 function.  This is the only export
// we forward in this sample; additional exports can be added as
// needed.
using PFN_Direct3DCreate8 = IDirect3D8* (WINAPI*)(UINT);
static PFN_Direct3DCreate8 pDirect3DCreate8 = nullptr;

// Export stub for Direct3DCreate8.  This function looks up the
// original function pointer and calls through to it.  If the
// original library fails to load the pointer will be null and the
// call will fail gracefully.
extern "C" __declspec(dllexport) IDirect3D8* WINAPI Direct3DCreate8(UINT sdkVersion) {
    if (!pDirect3DCreate8) {
        SetLastError(ERROR_MOD_NOT_FOUND);
        return nullptr;
    }
    return pDirect3DCreate8(sdkVersion);
}

// DLL entry point.  On process attach we load the original D3D8
// library and resolve the address of Direct3DCreate8.  We also
// initialise and enable our hooks.  On detach we disable hooks and
// free the original library.
BOOL APIENTRY DllMain(HINSTANCE hinstDLL, DWORD fdwReason, LPVOID lpReserved) {
    switch (fdwReason) {
    case DLL_PROCESS_ATTACH:
        // Load the original Direct3D8 library.  If this fails the game
        // may crash when calling Direct3DCreate8, so ensure that
        // d3d8_orig.dll is present in the same directory as this DLL.
        g_dx8 = LoadLibraryA("d3d8_orig.dll");
        if (g_dx8) {
            pDirect3DCreate8 = reinterpret_cast<PFN_Direct3DCreate8>(GetProcAddress(g_dx8, "Direct3DCreate8"));
        }
        // Install our MinHook‑based detours.  If anything fails here
        // the hooks simply won't be active.
        InstallHooks();
        break;
    case DLL_PROCESS_DETACH:
        // Disable all hooks and uninitialise MinHook.
        MH_DisableHook(MH_ALL_HOOKS);
        MH_Uninitialize();
        // Free the original library if it was loaded.
        if (g_dx8) {
            FreeLibrary(g_dx8);
            g_dx8 = nullptr;
        }
        break;
    }
    return TRUE;
}