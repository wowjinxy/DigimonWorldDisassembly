// Copyright (c) 2025
//
// Declaration of the 4 KiB lookup table extracted from the original
// digi.exe.  The definitions live in digi_table.cpp and contain
// 4096 16‑bit signed integers.

#pragma once

#include <cstdint>

// A 4096‑element table of 16‑bit values.  Each entry corresponds to
// precomputed sine values used by several routines early in the
// Digimon World PC port.  In this sample project the table is
// initialised to zeros to keep the repository lightweight.  Replace
// this definition with the full dataset for accurate behaviour.
extern const int16_t g_table[4096];