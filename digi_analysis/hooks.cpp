// Copyright (c) 2025
//
// This file implements a very small hot‑patching framework.  It
// demonstrates how to overwrite the beginning of a function in the
// running process with a relative JMP to a reconstructed routine.  The
// code uses Win32 APIs and works on 32‑bit Windows executables.  For
// 64‑bit builds or more robust functionality, consider using a
// dedicated hooking library such as MinHook.

#include "hooks.h"
#include <Windows.h>
#include <cstdint>
#include <cstring>
#include "functions.h"

// Type definition for the original function at 0x401000.  When using
// hot‑patching you can optionally store the original function pointer
// before it is overwritten.  This allows you to call through to the
// original behaviour if desired.  In this minimal example we do not
// use the original pointer.
using OrigFunc401000 = int16_t(__cdecl*)(int32_t);
static OrigFunc401000 s_orig401000 = reinterpret_cast<OrigFunc401000>(0x401000);

// Replacement implementation that calls our reconstructed function.
static int16_t __cdecl Detour401000(int32_t value) {
    return func_401000(value);
}

// Helper to write a 5‑byte relative JMP to a target location.  On
// x86 the JMP opcode is 0xE9 followed by a 32‑bit signed offset.
static void WriteRelativeJump(void* target, void* destination) {
    unsigned char patch[5];
    patch[0] = 0xE9;
    // Calculate the offset relative to the instruction following the JMP.
    intptr_t offset = reinterpret_cast<intptr_t>(destination) -
                      reinterpret_cast<intptr_t>(target) - 5;
    std::memcpy(patch + 1, &offset, sizeof(int32_t));
    DWORD oldProtect;
    VirtualProtect(target, sizeof(patch), PAGE_EXECUTE_READWRITE, &oldProtect);
    std::memcpy(target, patch, sizeof(patch));
    VirtualProtect(target, sizeof(patch), oldProtect, &oldProtect);
}

// Installs the hooks for all reconstructed functions.  Additional
// functions can be hooked by repeating the call to WriteRelativeJump
// with the appropriate addresses.
void InstallHooks() {
    // Patch the function at 0x401000 to jump to our Detour401000.  If
    // you reverse more functions, patch them here as well.  Addresses
    // are relative to the base of the module; adjust if the module is
    // relocated.
    WriteRelativeJump(reinterpret_cast<void*>(0x401000), reinterpret_cast<void*>(&Detour401000));
}