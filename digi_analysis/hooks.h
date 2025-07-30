// Copyright (c) 2025
//
// Hook infrastructure for patching the original Digimon World
// PC executable at runtime. Hooks allow you to redirect calls from
// the original code to your reconstructed functions in this project.
//
// This header declares a single function, `InstallHooks()`, which
// initialises MinHook and installs all configured detours. See
// hooks.cpp for the implementation and README.md for usage details.

#pragma once

// Install all configured hooks. Call this function from your DLL's
// entry point or from an injected initialisation routine. It is
// safe to call `InstallHooks()` multiple times; repeated calls will
// simply re‑apply the same patches.
void InstallHooks();