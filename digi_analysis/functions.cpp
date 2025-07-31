// Copyright (c) 2025
//
// This file contains hand‑reconstructed C functions that approximate
// the behaviour of some of the simple routines at the very beginning
// of digi.exe.  Each function operates on an integer input and looks
// up a 16‑bit value in a table extracted from the game binary.
//
// In this updated version the functions at 0x401000 and 0x401020 are
// implemented using inline x86 assembly.  This more closely mirrors
// the original instructions and demonstrates how to write naked
// functions in MSVC to perform low‑level operations.  If you prefer
// portable C++ you can replace these implementations with
// straightforward C code as shown in the original project.

#include <cstdint>
#include "digi_table.h"

// Corresponds to the function at address 0x401000.  The original
// game masks the argument to 12 bits, uses that as an index into
// the table and returns the 16‑bit value sign‑extended to 32 bits.
// We implement this routine using a naked function and inline
// assembly.  The caller cleans up the stack so the RET does not
// adjust ESP.  The result is returned in EAX.
extern "C" __declspec(naked) int16_t func_401000(int32_t value) {
    __asm {
        // Load the parameter into EAX.
        mov eax, dword ptr [esp + 4]
        // Mask to 12 bits (0xFFF) to stay within the table.
        and eax, 0FFFh
        // Convert the index to a byte offset: each int16_t is 2 bytes.
        mov edx, eax
        shl edx, 1
        // Load base address of g_table into ECX.
        mov ecx, offset g_table
        // Load the 16‑bit value and sign‑extend to 32 bits.
        movsx eax, word ptr [ecx + edx]
        // Return.  Do not clean up the stack – __cdecl caller does that.
        ret
    }
}

// Corresponds to the function at address 0x401020.  It adds 0x400 to
// the argument, masks to 12 bits and indexes the same table.  This
// implementation also uses inline assembly for fidelity with the
// original disassembly.
extern "C" __declspec(naked) int16_t func_401020(int32_t value) {
    __asm {
        mov eax, dword ptr [esp + 4]
        // Add the offset of 0x400 before masking.
        add eax, 400h
        and eax, 0FFFh
        mov edx, eax
        shl edx, 1
        mov ecx, offset g_table
        movsx eax, word ptr [ecx + edx]
        ret
    }
}

// Corresponds to the wrapper at 0x401040 which simply calls 0x401020.
extern "C" int16_t func_401040(int32_t value) {
    return func_401020(value);
}

// Corresponds to the wrapper at 0x401050 which simply calls 0x401000.
extern "C" int16_t func_401050(int32_t value) {
    return func_401000(value);
}