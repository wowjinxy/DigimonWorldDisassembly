// Copyright (c) 2025
//
// Implementation of the hook infrastructure for the Digimon World
// reconstruction.  This version uses the MinHook library instead of
// manually writing relative jumps.  MinHook simplifies creation and
// management of multiple hooks and preserves original function
// pointers so you can call into the game as needed【328070431545145†L33-L70】.

#include "hooks.h"
#include <windows.h>
#include <cstdint>
#include "functions.h"

// Forward declaration of our stub for 0x004A1F8A.  Defined in
// sub_004A1F8A.cpp.  The calling convention is __stdcall to match
// the declaration in the implementation.  Adjust this if analysis
// reveals a different convention.
extern "C" void __stdcall sub_004A1F8A();

// Include MinHook.  The header is provided in third_party/minhook/include.
#include "MinHook.h"

// Type definition for the original function at 0x401000.  When using
// MinHook we request the original pointer so we can call through if
// desired.
using OrigFunc401000 = int16_t(__cdecl*)(int32_t);
static OrigFunc401000 s_orig401000 = nullptr;

// Type definition for the original function at 0x401020.  This routine
// adds 0x400 to its argument before indexing the sine table.  We hook
// it separately so that we can log or adjust its behaviour without
// affecting the wrappers.【559098899427678†L16-L18】
using OrigFunc401020 = int16_t(__cdecl*)(int32_t);
static OrigFunc401020 s_orig401020 = nullptr;

// Type definitions for the original wrappers at 0x401040 and 0x401050.
// These functions simply call the underlying sine lookup routines.  We
// hook them separately so you can instrument calls to the wrappers
// themselves without disturbing the underlying logic.  In a real
// reconstruction you would replace these with more meaningful code
// once the original behaviour is understood.
using OrigFunc401040 = int16_t(__cdecl*)(int32_t);
using OrigFunc401050 = int16_t(__cdecl*)(int32_t);
static OrigFunc401040 s_orig401040 = nullptr;
static OrigFunc401050 s_orig401050 = nullptr;

// Type definition for the original function at 0x004A1F8A.  The exact
// calling convention and parameters are not yet known, so we treat it
// as a simple void function.  Adjust this signature once you know the
// correct prototype【328070431545145†L24-L31】.
// The original function at 0x004A1F8A appears to use the stdcall
// convention (no parameters and callee cleans up the stack).  We
// declare the function pointer accordingly.  If future analysis
// reveals a different prototype adjust this typedef.
using OrigFunc004A1F8A = void(__stdcall*)();
static OrigFunc004A1F8A s_orig004A1F8A = nullptr;

// -----------------------------------------------------------------------------
// Additional hooks for text and font processing
//
// The game uses a number of routines to create fonts, render text and
// manage text surfaces.  To aid in porting the renderer we intercept
// these calls.  The prototypes below are educated guesses based on
// disassembly.  They can be refined as you gain more insight into
// the original code.  Each detour logs its invocation and calls
// through to the original implementation so that behaviour remains
// unchanged.

// 0x00428EE0: ProcessFontsAndMetrics(int *fontMetricsArray)
using OrigFunc00428EE0 = void(__cdecl*)(int*);
static OrigFunc00428EE0 s_orig00428EE0 = nullptr;

// 0x00495E1A: CreateTextRenderSurface(this, int* param1) -> int
using OrigFunc00495E1A = int(__thiscall*)(void*, int*);
static OrigFunc00495E1A s_orig00495E1A = nullptr;

// 0x00495F5B: RenderText(this, uint* a1, uint* a2, uint a3, int* a4,
//                        UINT a5, undefined4 a6, LPCWSTR a7) -> uint*
using OrigFunc00495F5B = uint* (__thiscall*)(void*, uint*, uint*, uint, int*, UINT, unsigned int, const wchar_t*);
static OrigFunc00495F5B s_orig00495F5B = nullptr;

// 0x0040EA40: CDWWnd::PreCreateWindow(int param) -> int
using OrigFunc0040EA40 = int(__thiscall*)(void*, int);
static OrigFunc0040EA40 s_orig0040EA40 = nullptr;

// 0x00492EFF: TextRenderState::Initialize(this, int* param1, LOGFONTA* param2) -> int
using OrigFunc00492EFF = int(__thiscall*)(void*, int*, LOGFONTA*);
static OrigFunc00492EFF s_orig00492EFF = nullptr;

// 0x00495AE4: FreeTextSurfaceResources(int param1) -> void
using OrigFunc00495AE4 = void(__fastcall*)(int);
static OrigFunc00495AE4 s_orig00495AE4 = nullptr;

// 0x00495DEB: RestoreSelectedGDIObject(int param1) -> int
using OrigFunc00495DEB = int(__fastcall*)(int);
static OrigFunc00495DEB s_orig00495DEB = nullptr;

// 0x00486730: ExtractAndProcessFontMetrics(int* fontMetricsArray, HANDLE currentHandle,
//                                           void** fontMetricsArrayPtr) -> int
using OrigFunc00486730 = int(__cdecl*)(int*, HANDLE, void**);
static OrigFunc00486730 s_orig00486730 = nullptr;

// 0x00429170: MeasureStringDimensions(this, undefined4, int, undefined4) -> void
using OrigFunc00429170 = void(__thiscall*)(void*, unsigned int, int, unsigned int);
static OrigFunc00429170 s_orig00429170 = nullptr;

// Detour implementations.  Each detour logs its invocation and
// delegates to the original function.  You can replace the call to
// the original function with your own implementation to port the
// behaviour to OpenGL.  For now we leave the behaviour unchanged.

static void __cdecl Detour00428EE0(int* fontMetricsArray) {
    OutputDebugStringA("Detour00428EE0: ProcessFontsAndMetrics called\n");
    if (s_orig00428EE0) {
        s_orig00428EE0(fontMetricsArray);
    }
}

static int __fastcall Detour00495E1A(void* _this, void* /*not used*/, int* param1) {
    OutputDebugStringA("Detour00495E1A: CreateTextRenderSurface called\n");
    return s_orig00495E1A ? s_orig00495E1A(_this, param1) : -1;
}

static uint* __fastcall Detour00495F5B(void* _this, void* /*not used*/, uint* a1, uint* a2, uint a3,
                                        int* a4, UINT a5, unsigned int a6, const wchar_t* a7) {
    OutputDebugStringA("Detour00495F5B: RenderText called\n");
    return s_orig00495F5B ? s_orig00495F5B(_this, a1, a2, a3, a4, a5, a6, a7) : nullptr;
}

static int __fastcall Detour0040EA40(void* _this, void* /*not used*/, int param) {
    OutputDebugStringA("Detour0040EA40: CDWWnd::PreCreateWindow called\n");
    return s_orig0040EA40 ? s_orig0040EA40(_this, param) : 0;
}

static int __fastcall Detour00492EFF(void* _this, void* /*not used*/, int* param1, LOGFONTA* param2) {
    OutputDebugStringA("Detour00492EFF: TextRenderState::Initialize called\n");
    return s_orig00492EFF ? s_orig00492EFF(_this, param1, param2) : -1;
}

static void __fastcall Detour00495AE4(int param1) {
    OutputDebugStringA("Detour00495AE4: FreeTextSurfaceResources called\n");
    if (s_orig00495AE4) {
        s_orig00495AE4(param1);
    }
}

static int __fastcall Detour00495DEB(int param1) {
    OutputDebugStringA("Detour00495DEB: RestoreSelectedGDIObject called\n");
    return s_orig00495DEB ? s_orig00495DEB(param1) : 0;
}

static int Detour00486730(int* fontMetricsArray, HANDLE currentHandle, void** fontMetricsArrayPtr) {
    OutputDebugStringA("Detour00486730: ExtractAndProcessFontMetrics called\n");
    return s_orig00486730 ? s_orig00486730(fontMetricsArray, currentHandle, fontMetricsArrayPtr) : -1;
}

static void __fastcall Detour00429170(void* _this, void* /*not used*/, unsigned int param1, int param2, unsigned int param3) {
    OutputDebugStringA("Detour00429170: MeasureStringDimensions called\n");
    if (s_orig00429170) {
        s_orig00429170(_this, param1, param2, param3);
    }
}

// Detour for 0x401000.  Simply calls our reconstructed function.
static int16_t __cdecl Detour401000(int32_t value) {
    return func_401000(value);
}

// Detour for 0x401020.  For now this simply forwards to our
// reconstructed implementation.  You could insert logging or modify
// the return value here if desired.
static int16_t __cdecl Detour401020(int32_t value) {
    return func_401020(value);
}

// Detours for the wrappers at 0x401040 and 0x401050.  These simply
// call our reconstructed wrapper implementations.  Feel free to add
// logging or additional behaviour here if desired.
static int16_t __cdecl Detour401040(int32_t value) {
    return func_401040(value);
}

static int16_t __cdecl Detour401050(int32_t value) {
    return func_401050(value);
}

// Detour for 0x004A1F8A.  Calls our stub implementation and then
// optionally calls the original function.  Remove the call to
// s_orig004A1F8A() if you do not want to execute the original
// behaviour【328070431545145†L38-L48】.
static void Detour004A1F8A() {
    // Invoke our C++ implementation.  This performs one‑time
    // initialisation and logs some diagnostic information.  After
    // running our code we call through to the original routine to
    // preserve the game’s behaviour.  Although the exact calling
    // convention of the target function is not fully documented, it
    // appears to take no arguments and use the stdcall convention.
    // If later analysis reveals a different signature you should
    // update the type definition of OrigFunc004A1F8A accordingly.
    sub_004A1F8A();
    // Forward to the original implementation.  If the original pointer
    // is null (which should not occur if the hook was installed
    // correctly) this call will be skipped.
    if (s_orig004A1F8A) {
        s_orig004A1F8A();
    }
}

// Installs the hooks for all reconstructed functions.  Additional
// functions can be hooked by repeating the call to MH_CreateHook
// with the appropriate addresses【328070431545145†L51-L69】.
void InstallHooks() {
    // Initialise the hooking library.  Ignore errors for repeated
    // initialisation; MH_Initialize will return MH_ERROR_ALREADY_INITIALIZED
    // in that case but the hooks can still be created.
    MH_STATUS status = MH_Initialize();
    if (status != MH_OK && status != MH_ERROR_ALREADY_INITIALIZED) {
        return;
    }
    // Create a hook for 0x401000.  On success the original pointer
    // will be stored in s_orig401000.
    MH_CreateHook(reinterpret_cast<void*>(0x401000), reinterpret_cast<void*>(&Detour401000), reinterpret_cast<void**>(&s_orig401000));
    // Create a hook for 0x401020 as well.  This allows you to intercept
    // calls to the second sine lookup routine.
    MH_CreateHook(reinterpret_cast<void*>(0x401020), reinterpret_cast<void*>(&Detour401020), reinterpret_cast<void**>(&s_orig401020));
    // Create hooks for the simple wrapper functions at 0x401040 and 0x401050.
    MH_CreateHook(reinterpret_cast<void*>(0x401040), reinterpret_cast<void*>(&Detour401040), reinterpret_cast<void**>(&s_orig401040));
    MH_CreateHook(reinterpret_cast<void*>(0x401050), reinterpret_cast<void*>(&Detour401050), reinterpret_cast<void**>(&s_orig401050));
    // Create a hook for the new function at 0x004A1F8A.
    MH_CreateHook(reinterpret_cast<void*>(0x004A1F8A), reinterpret_cast<void*>(&Detour004A1F8A), reinterpret_cast<void**>(&s_orig004A1F8A));
    // ---------------------------------------------------------------------
    // Install hooks for text and font processing functions.  These
    // addresses are taken from the disassembly provided by the user.  Each
    // call will be logged and forwarded to the original implementation
    // through the s_origXXXX function pointers defined above.  Once you
    // understand the behaviour of these routines you can replace the
    // calls to the originals with custom code.
    MH_CreateHook(reinterpret_cast<void*>(0x00428EE0), reinterpret_cast<void*>(&Detour00428EE0), reinterpret_cast<void**>(&s_orig00428EE0));
    MH_CreateHook(reinterpret_cast<void*>(0x00495E1A), reinterpret_cast<void*>(&Detour00495E1A), reinterpret_cast<void**>(&s_orig00495E1A));
    MH_CreateHook(reinterpret_cast<void*>(0x00495F5B), reinterpret_cast<void*>(&Detour00495F5B), reinterpret_cast<void**>(&s_orig00495F5B));
    MH_CreateHook(reinterpret_cast<void*>(0x0040EA40), reinterpret_cast<void*>(&Detour0040EA40), reinterpret_cast<void**>(&s_orig0040EA40));
    MH_CreateHook(reinterpret_cast<void*>(0x00492EFF), reinterpret_cast<void*>(&Detour00492EFF), reinterpret_cast<void**>(&s_orig00492EFF));
    MH_CreateHook(reinterpret_cast<void*>(0x00495AE4), reinterpret_cast<void*>(&Detour00495AE4), reinterpret_cast<void**>(&s_orig00495AE4));
    // Hook RestoreSelectedGDIObject at 0x00495DEB.
    MH_CreateHook(reinterpret_cast<void*>(0x00495DEB), reinterpret_cast<void*>(&Detour00495DEB), reinterpret_cast<void**>(&s_orig00495DEB));
    // Hook ExtractAndProcessFontMetrics at 0x00486730.
    MH_CreateHook(reinterpret_cast<void*>(0x00486730), reinterpret_cast<void*>(&Detour00486730), reinterpret_cast<void**>(&s_orig00486730));
    // Hook MeasureStringDimensions at 0x00429170.
    MH_CreateHook(reinterpret_cast<void*>(0x00429170), reinterpret_cast<void*>(&Detour00429170), reinterpret_cast<void**>(&s_orig00429170));
    // Install hooks for GDI functions.  These hooks allow us to
    // intercept calls to CreateCompatibleDC, CreateFontA, etc. and
    // replace them with OpenGL-aware implementations.  The function
    // is defined in gdi_hooks.cpp.
    extern void InstallGDIHooks();
    InstallGDIHooks();
    // Enable all hooks at once.  If needed you can enable/disable
    // individual hooks by passing the target address instead of
    // MH_ALL_HOOKS.
    MH_EnableHook(MH_ALL_HOOKS);
}