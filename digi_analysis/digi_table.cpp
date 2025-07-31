// Copyright (c) 2025
//
// Definition of the 4 KiB lookup table used by the reconstructed
// functions.  In the original digi.exe binary, this table contained
// values produced from a sine curve and was used for gameplay
// calculations.  To keep this repository
// lightweight the table below is initialised to all zeros.  Replace
// this array with the full sine wave extracted from the game for
// accurate behaviour.

#include "digi_table.h"

// Define the table as a global constant so it can be referenced from
// other translation units.  Initialising all elements to zero is a
// convenient placeholder; the compiler will zero‑fill the remaining
// entries.
const int16_t g_table[4096] = {0};