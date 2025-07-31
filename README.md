Digimon World PC Disassembly
===========================

This repository hosts a reconstructed code base for the Korean‑exclusive PC
port of **Digimon World**.  It contains a Visual Studio solution
(`digi_analysis.sln`) and C++ sources that mirror the behaviour of the
original `digi.exe` executable as much as possible.  Only a handful of
small functions have been reimplemented so far, but the foundation is in
place for more ambitious reverse‑engineering efforts.

## Project layout

The `digi_analysis/` directory contains the core of the reconstruction.  It
includes:

* **main.cpp** – A Win32 entry point demonstrating the rebuilt
  functions and extracted string data.  It calls into the reconstructed
  table lookup functions and shows a sample of the decoded strings via
  a Windows message box.

* **functions.cpp** – Hand‑reconstructed implementations of a few simple
  routines located near the start of the original executable (addresses
  `0x401000`–`0x401050`).  In this updated version two of those
  routines (`func_401000` and `func_401020`) are implemented using
  **inline x86 assembly** to more closely match the original code.  The
  other wrappers remain ordinary C++.

* **digi_table.h / digi_table.cpp** – A 4 KiB lookup table used by the
  above routines.  In the real project this table contains precomputed
  sine values extracted from the game.  To keep this example lightweight
  the table is initialised to all zeros; replace it with the full
  dataset when accuracy is important.

* **strings.h / strings.cpp** – A collection of wide strings extracted
  from the game binary along with the count of entries.  Because the PC
  port uses a mixture of Korean and high‑ASCII characters, the strings
  are stored as UTF‑16 constants.  Only a small subset of the original
  strings is included here for demonstration purposes.

* **functions.h** – Declarations for the reconstructed functions.

* **hooks.cpp / hooks.h** – Infrastructure for installing runtime hooks
  into the original `digi.exe`.  Hooks allow you to redirect calls
  from the original code to your reconstructed C++ implementations.
  This version uses [MinHook](https://github.com/TsudaKageyu/minhook)
  instead of manually writing relative jumps; MinHook simplifies
  creation and management of multiple hooks and preserves original
  function pointers so you can call into the game as needed.

* **third_party/minhook/** – A vendored copy of the MinHook library.
  Only the source and header files are included; you will need to
  compile them into your DLL project as appropriate.  See `hooks.cpp`
  for an example of how to initialise and use MinHook.

* **sub_004A1F8A.cpp / sub_004A1F8A.asm** – A stub implementation and
  disassembly listing for the routine at address `0x004A1F8A` in the
  original game.  The C++ stub simply emits a debug message so that
  you can verify the hook is firing.  Replace the body of this function
  as you reverse‑engineer the real behaviour.

* **digi_analysis.sln / digi_analysis.vcxproj** – Visual Studio
  solution and project files configured for building a Win32 DLL.
  The project targets a DLL so that hooks can be injected into the
  running game.  If you prefer to build an application instead, you
  can switch the project type back to an EXE and adjust the entry
  points accordingly.

## Building

To build the code on Windows:

1. Install Visual Studio 2022 (Community edition is fine) with the
   **Desktop development with C++** workload.
2. Open `digi_analysis.sln` and allow Visual Studio to restore any
   missing packages or upgrade the solution if prompted.
3. Ensure the platform is set to **Win32** and the configuration is
   either **Debug** or **Release**.
4. Build the solution (Build → Build Solution).  The resulting DLL
   should compile without errors.  When run via an injector, it will
   patch the specified addresses in the game and demonstrate the
   reconstructed functions and a sample of the extracted strings.

If you are working on a non‑Windows host, it is possible to build the
code with MinGW or cross‑compile using a toolchain like
`x86_64‑w64‑mingw32`, provided you supply Windows headers.  Note
however that the current entry points use Win32 functions to
demonstrate functionality.

## Hooking the original executable

As you disassemble more of `digi.exe`, it becomes useful to test your
reconstructed functions in the context of the original game.  The
`hooks.cpp` and `hooks.h` files show how to use MinHook to create
detours.  MinHook offers a clean API for creating, enabling and
disabling hooks, and it can automatically preserve the original
function pointers so you can call back into the game when necessary.
The stub `sub_004A1F8A.cpp` shows how to implement a detour for a new
function: log or inspect arguments, then invoke the original behaviour
through the saved pointer.