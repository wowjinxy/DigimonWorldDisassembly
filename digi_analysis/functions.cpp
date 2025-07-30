// This file contains hand‑reconstructed C functions that approximate
// the behaviour of some of the simple routines at the very beginning of
// digi.exe.  These functions were derived by inspecting the disassembly
// at addresses 0x401000, 0x401020, 0x401040 and 0x401050.  Each function
// operates on an integer input and looks up a 16‑bit value in a table.

#include <cstdint>
#include "digi_table.h"

// Corresponds to the function at address 0x401000.  It masks the
// argument to 12 bits, uses that as an index into the table and
// returns the 16‑bit value.  The original used movsx to sign
// extend the 16‑bit value to 32 bits; here we return a 16‑bit int.
extern "C" int16_t func_401000(int32_t value) {
    int index = value & 0xFFF;
    return g_table[index];
}

// Corresponds to the function at address 0x401020.  It adds 0x400 to
// the argument, masks to 12 bits and indexes the same table.
extern "C" int16_t func_401020(int32_t value) {
    int index = (value + 0x400) & 0xFFF;
    return g_table[index];
}

// Corresponds to the wrapper at 0x401040 which simply calls 0x401020.
extern "C" int16_t func_401040(int32_t value) {
    return func_401020(value);
}

// Corresponds to the wrapper at 0x401050 which simply calls 0x401000.
extern "C" int16_t func_401050(int32_t value) {
    return func_401000(value);
}