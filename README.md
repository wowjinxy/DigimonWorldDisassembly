<!-- This repository documents a work‑in‑progress reconstruction of a very obscure piece of gaming history: the Korean‑exclusive PC port of the first **Digimon World** title. The goal of the project is to analyse and disassemble the original executable, re‑implement its behaviour in portable C/C++ and provide infrastructure for testing the reconstructed code side‑by‑side with the original game. The end result is not meant to be a full "free game" but rather a research vehicle for understanding how this port was put together and preserving it for posterity. Please note that this repository does **not** contain or distribute any copyrighted game assets. You will need a legal copy of the Korean PC version of **Digimon World** (often referred to as *디지몬 월드*) in order to make use of the project. All data files supplied here are either extracted metadata (such as lookup tables and strings) or new code written from scratch. -->
Digimon World PC Disassembly
This repository hosts a disassembly of the Korean‑exclusive PC port of
the original Digimon World. It contains a Visual Studio solution
(digi_analysis.sln) and C++ sources that attempt to mirror the
behaviour of the original digi.exe executable. The project is still
early in its life – only a handful of tiny subroutines have been
reimplemented – but it establishes a foundation for more ambitious
reverse‑engineering and restoration work.

Project layout
digi_analysis/ – A Visual Studio project containing reconstructed
C/C++ sources. At the moment it includes:

main.cpp – A Win32 entry point demonstrating the rebuilt
functions and extracted string data. It calls into the
reconstructed table lookup functions and shows a sample of the
decoded strings via a Windows message box.

functions.cpp – Hand‑reconstructed implementations of a few
simple routines located near the start of the original executable
(addresses 0x401000–0x401050). These functions index into a
4 KiB table of 16‑bit values extracted from the game.

digi_table.h / digi_table.cpp – A 4 KiB lookup table used by
the above routines. The table was extracted from the original
binary and stored as a static array of 16‑bit integers.

strings.h / strings.cpp – A collection of wide strings
extracted from the game binary along with the count of entries.
These are used to verify our character encoding and extraction
routines. Because the PC port uses a mixture of Korean and
high‑ASCII characters, the strings are stored as UTF‑16 constants.

functions.h – Declarations for the reconstructed functions.

hooks.cpp / hooks.h – Infrastructure for installing runtime
hooks into the original digi.exe. See Hooking the original
executable for details.

digi_analysis.vcxproj – Visual Studio project file configured
for building a Win32 GUI application. You will need Visual Studio
2022 or later with the C++ toolset installed.

Other files such as .gitattributes are included to ensure consistent
line endings and encoding across different development environments.

Building
The project currently targets Windows because the original game relies
on Win32 APIs such as MessageBoxW, MultiByteToWideChar and the
WinMain entry point. To build the code:

Install Visual Studio 2022 (the Community edition will suffice)
with the "Desktop development with C++" workload.

Open digi_analysis.sln and allow Visual Studio to restore any
missing packages or upgrade the solution if prompted.

Ensure the platform is set to Win32 and the configuration is
either Debug or Release.

Build the solution (Build → Build Solution). The resulting
executable should compile without errors. When run, it will pop up
a message box demonstrating the reconstructed functions and a sample
of the extracted strings.

If you are working on a non‑Windows host, it is possible to build the
code with MinGW or cross‑compile using a toolchain like x86_64‑w64‑ mingw32, provided you supply Windows headers. Note however that the
current entry point uses WinMain and displays a Windows message box
to demonstrate functionality.

Hooking the original executable
As more of digi.exe is reverse‑engineered, it becomes useful to
test reconstructed functions in the context of the original game. The
hooks.cpp and hooks.h files provide a very simple hot‑patching
framework. They demonstrate how to overwrite the start of a function
in the running process with a relative jmp to your own code. The
idea is to redirect calls to the original routines at e.g. 0x401000
to the C++ implementations in this project. Once the hook is
installed, the running game will execute your code instead of the
original assembly, allowing you to verify correctness while still
running the bulk of the unmodified binary.

The provided hook infrastructure uses plain Win32 APIs (VirtualProtect
and memcpy) to write a 5‑byte jump instruction into the target
address. For more complex hook management (including undoing hooks or
supporting 64‑bit builds) consider integrating a library such as
MinHook. Be aware that
hooking into a commercial game may trigger anti‑tamper mechanisms and
should only be done for research on binaries you own.

Usage
Compile the code in this repository as a DLL (change the
project type accordingly) and export an initialization function that
calls InstallHooks() from hooks.cpp.

Inject the DLL into the running digi.exe process using a tool
such as DLL Injector or by modifying
the import table of the executable.

When your DLL is loaded, InstallHooks() will patch the
specified addresses to redirect execution to your reconstructed
functions. You can then test how the game behaves with the new
implementations.

This hooking mechanism is deliberately minimal and provided as an
example. Use it as a starting point and adapt it to suit your own
reverse‑engineering workflow.

Contributing
Contributions are welcome! If you extract new functions or data
structures from the game, please add them under digi_analysis/ and
update the project file accordingly. When adding new C/C++ files,
please ensure that they compile cleanly under recent versions of
Visual Studio and include <cstdint> or <cstddef> as appropriate
instead of relying on implicit typedefs. Likewise, avoid placing
function definitions in header files – prefer declarations in .h
files and definitions in .cpp files.

Because this repository documents a disassembly effort, please do not
commit original game assets (binaries, audio, graphics, etc.) or
distribute built copies of the game. Only include extracted metadata
when it is absolutely necessary to understand the code, and clearly
document how the data was obtained.

Legal notice
Digimon World is a trademark of Bandai Namco. This project is
created for educational and preservation purposes. No copyright
infringement is intended, and the authors do not endorse piracy. You
must own a legitimate copy of the Korean PC version of the game in
order to use any code or data provided here.
