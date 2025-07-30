// Copyright (c) 2025
//
// This header declares a handful of functions reconstructed from the
// Korean PC release of Digimon World. Each function was named after
// its address in the original binary (e.g. `0x401000`). The
// implementations live in functions.cpp.

#pragma once

#include <cstdint>

// Look up a 16‑bit value in the reconstructed table. This mirrors
// the behaviour of the routine at address 0x401000. The input is
// masked to 12 bits before indexing into the 4096‑entry table.
extern "C" int16_t func_401000(int32_t value);

// Adds 0x400 to the input, masks to 12 bits and returns the value
// from the same table. Mirrors the routine at 0x401020.
extern "C" int16_t func_401020(int32_t value);

// Thin wrapper around func_401020 – originally located at 0x401040.
extern "C" int16_t func_401040(int32_t value);

// Thin wrapper around func_401000 – originally located at 0x401050.
extern "C" int16_t func_401050(int32_t value);