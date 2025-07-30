// Copyright (c) 2025
//
// Stub implementation for the routine located at 0x004A1F8A in the
// original Digimon World PC executable. Until this function is fully
// reverse‑engineered, it simply emits a debug message so that you can
// verify the hook is firing. Once the real behaviour is known, feel
// free to replace the body of this function with your reconstruction.

#include <windows.h>

extern "C" void sub_004A1F8A() {
    // Output a debug string so you can see when this hook triggers.
    OutputDebugStringA("sub_004A1F8A detour invoked\n");
    // Additional logic should go here once the function is
    // reconstructed. For now this function does nothing.
}