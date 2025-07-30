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
using OrigFunc004A1F8A = void(*)();
static OrigFunc004A1F8A s_orig004A1F8A = nullptr;

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
    // Invoke our C++ implementation.  We do **not** call the original
    // function here because the calling convention and parameters are
    // unknown.  Forwarding an unknown calling convention can lead to
    // stack corruption (Run‑Time Check Failure #0) in debug builds.
    // If you need to preserve the original behaviour, reconstruct the
    // correct signature and remove this comment once implemented.
    sub_004A1F8A();
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
    // Enable all hooks at once.  If needed you can enable/disable
    // individual hooks by passing the target address instead of
    // MH_ALL_HOOKS.
    MH_EnableHook(MH_ALL_HOOKS);
}