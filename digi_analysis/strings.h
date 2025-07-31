// Copyright (c) 2025
//
// Declarations for the wide string table extracted from the Digimon
// World PC executable.  The definitions live in strings.cpp.  The
// strings are stored as UTF‑16 (wchar_t) constants because the PC
// port contains a mixture of Korean and high‑ASCII characters.

#pragma once

#include <cstddef>
#include <cstdint>

// Pointer to an array of wide C‑strings containing text extracted
// directly from digi.exe.  The actual definitions live in
// strings.cpp.
extern const wchar_t* g_strings[];

// The number of entries in g_strings.  You can compute this at build
// time by taking sizeof(g_strings)/sizeof(g_strings[0]) in
// strings.cpp.
extern const std::size_t g_strings_count;