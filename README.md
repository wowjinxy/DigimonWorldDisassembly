Digimon World PC Disassembly
===========================

This repository hosts a disassembly of the Korean‑exclusive PC port of
the original Digimon World. It contains a Visual Studio solution
(`digi_analysis.sln`) and C++ sources that attempt to mirror the
behaviour of the original `digi.exe` executable. The project is still
early in its life – only a handful of tiny subroutines have been
reimplemented – but it establishes a foundation for more ambitious
reverse‑engineering and restoration work.

## Project layout

`digi_analysis/` – A Visual Studio project containing reconstructed
C/C++ sources. At the moment it includes:

- **main.cpp** – A Win32 entry point demonstrating the rebuilt
  functions and extracted string data. It calls into the
  reconstructed table lookup functions and shows a sample of the
  decoded strings via a Windows message box.

- **functions.cpp** – Hand‑reconstructed implementations of a few
  simple routines located near the start of the original executable
  (addresses 0x401000–0x401050). These functions index into a
  4 KiB table of 16‑bit values extracted from the game.

- **digi_table.h / digi_table.cpp** – A 4 KiB lookup table used by
  the above routines. The table was extracted from the original
  binary and stored as a static array of 16‑bit integers.

- **strings.h / strings.cpp** – A collection of wide strings
  extracted from the game binary along with the count of entries.
  These are used to verify our character encoding and extraction
  routines. Because the PC port uses a mixture of Korean and
  high‑ASCII characters, the strings are stored as UTF‑16 constants.

- **functions.h** – Declarations for the reconstructed functions.

- **hooks.cpp / hooks.h** – Infrastructure for installing runtime
  hooks into the original `digi.exe`. See the section on hooking for
  details. In this updated version the simple hot‑patching has been
  replaced with [MinHook](https://github.com/TsudaKageyu/minhook)
  integration to allow more robust hook management and to make it
  straightforward to add new hooks as you disassemble additional
  routines.

- **third_party/minhook/** – A vendored copy of the MinHook library.
  Only the source and header files are included; you will need to
  compile them into your DLL project as appropriate.

- **sub_004A1F8A.cpp** – A stub implementation for the function at
  address `0x004A1F8A` in the original game. This file contains a
  placeholder routine that simply outputs a debug message and
  forwards control to the original function via MinHook. Replace the
  body of this function as you reverse‑engineer the real behaviour.

- **digi_analysis.sln / digi_analysis.vcxproj** – Visual Studio
  solution and project files configured for building a Win32 DLL.
  The original project targeted a GUI application; this updated
  version targets a DLL so that hooks can be injected into the
  running game. If you prefer to build an application instead, you
  can switch the project type back to an EXE and adjust the entry
  points accordingly.

## Building

The project currently targets Windows because the original game relies
on Win32 APIs such as `MessageBoxW`, `MultiByteToWideChar` and the
`WinMain` entry point. To build the code:

1. Install Visual Studio 2022 (the Community edition will suffice)
   with the *Desktop development with C++* workload.
2. Open `digi_analysis.sln` and allow Visual Studio to restore any
   missing packages or upgrade the solution if prompted.
3. Ensure the platform is set to **Win32** and the configuration is
   either **Debug** or **Release**.
4. Build the solution (Build → Build Solution). The resulting
   DLL should compile without errors. When run via an injector, it
   will patch the specified addresses in the game and demonstrate
   the reconstructed functions and a sample of the extracted strings.

If you are working on a non‑Windows host, it is possible to build
the code with MinGW or cross‑compile using a toolchain like
`x86_64‑w64‑mingw32`, provided you supply Windows headers. Note
however that the current entry points use Win32 functions to
demonstrate functionality.

## Hooking the original executable

As more of `digi.exe` is reverse‑engineered, it becomes useful to
test reconstructed functions in the context of the original game. The
`hooks.cpp` and `hooks.h` files previously provided a very simple
hot‑patching framework. In this updated project that logic has been
replaced with MinHook. MinHook offers a clean API for creating,
enabling and disabling hooks, and it can automatically preserve the
original function pointers so you can call back into the game when
necessary. The stub `sub_004A1F8A.cpp` shows how to implement a
detour for a new function: log or inspect arguments, then invoke the
original behaviour through the saved pointer.

To use the hooks:

1. Compile the code in this repository as a DLL (change the
   project type accordingly) and export an initialisation function
   that calls `InstallHooks()` from `hooks.cpp`.
2. Inject the DLL into the running `digi.exe` process using a tool
   such as a DLL injector or by modifying the import table of the
   executable.
3. When your DLL is loaded, `InstallHooks()` will initialise
   MinHook, create hooks for the reconstructed functions and for
   `0x004A1F8A`, then enable all hooks. The running game will
   execute your C++ implementations instead of the original assembly,
   allowing you to verify correctness while still running the bulk
   of the unmodified binary.

This hooking mechanism is deliberately minimal and provided as an
example. Use it as a starting point and adapt it to suit your own
reverse‑engineering workflow.