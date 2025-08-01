// Copyright (c) 2025
//
// Stub implementation for the routine located at 0x004A1F8A in the
// original Digimon World PC executable.  Until this function is fully
// reverse‑engineered, it simply emits a debug message so that you can
// verify the hook is firing.  Once the real behaviour is known, feel
// free to replace the body of this function with your reconstruction.

#include <windows.h>
#include <cstdio>
// Include <cstdint> to define int16_t and int32_t for the forward
// declarations of func_401000 and func_401020.  Without this header
// the compiler will assume the identifiers are implicit ints and
// produce errors on Windows builds.
// Include standard integer types.  Visual C++ sometimes
// requires <stdint.h> instead of <cstdint> when compiling in C++
// mode, so we include both for maximum compatibility.
#include <cstdint>
#include <stdint.h>
#include <cstdint>
#include <cstdint>
#include "logger.h"

// Simulated global variables corresponding to locations in the
// original binary.  The addresses 0x4F4C78 and 0x4F4C7C appear to be
// flags that the game initialises to -1 at startup.  We expose them
// here so that other reconstructed code can inspect or modify them.
static int g_flag1 = 0;
static int g_flag2 = 0;

// Forward declarations of the low‑level sine lookup routines.  These
// functions live in functions.cpp and are hooked by MinHook.  We call
// them from our reconstruction to demonstrate how the original game
// performs table lookups.  See functions.cpp for details.
//
// Use built‑in types (short and int) rather than the C99 fixed‑width
// types here because some Windows build environments do not define
// int16_t or int32_t in C++ mode.  Both routines take a 32‑bit
// integer argument and return a sign‑extended 16‑bit result.
extern "C" short func_401000(int value);
extern "C" short func_401020(int value);

// -----------------------------------------------------------------------------
// Inline‑assembly stubs
//
// The following two routines emulate calls to unknown game functions at
// addresses like 0x4A7324 and 0x4A7330.  In the absence of a full
// disassembly, we simply log a message when they are invoked.  By
// writing these functions as __declspec(naked) we show how to embed
// assembly into a C++ project.  The __stdcall convention is used
// because the original routines appear to clean up their arguments.

// Message strings used by the stubs.  They must have external linkage
// so the assembler can take their addresses.  Placing them in an
// anonymous namespace limits their visibility to this translation unit.
namespace {
    static const char kMsgStubA[] = "CallStubA invoked\n";
    static const char kMsgStubB[] = "CallStubB invoked\n";
}

// Inline‑assembly implementation of CallStubA.  It ignores the
// parameter value and simply sends a fixed string to the debugger via
// OutputDebugStringA.  The function cleans up the single integer
// argument on return.  When you know the real behaviour at 0x4A7324
// you can replace this with an accurate re‑implementation.
extern "C" __declspec(naked) void __stdcall CallStubA(int /*param*/) {
    __asm {
        // Establish a standard stack frame for clarity.  This is not
        // strictly necessary in a naked function, but makes the prolog
        // explicit.
        push ebp
        mov ebp, esp
        // Push the address of our message onto the stack and call
        // Send the message through the logging system.  Log uses the
        // cdecl convention so we clean up the stack after the call.
        push offset kMsgStubA
        call Log
        add esp, 4
        // Clean up the stack frame and return, removing the one
        // integer argument passed to this function (4 bytes).
        mov esp, ebp
        pop ebp
        ret 4
    }
}

// Inline‑assembly implementation of CallStubB.  It takes no
// parameters and simply logs a message.  This stub uses the same
// conventions as CallStubA and demonstrates how to write a naked
// function with no arguments.
extern "C" __declspec(naked) void __stdcall CallStubB(void) {
    __asm {
        push ebp
        mov ebp, esp
        push offset kMsgStubB
        call Log
        add esp, 4
        mov esp, ebp
        pop ebp
        ret
    }
}

// -----------------------------------------------------------------------------
// Internal helper implementing the logic of sub_004A1F8A.
//
// This routine encapsulates the C++ portion of the initialisation code.  It
// is called from a naked wrapper so that we can preserve registers and
// avoid mixing C++ and assembly in the same function.  When the original
// assembly at 0x004A1F8A is fully understood you can expand this function
// to perform more accurate state setup.
static void __stdcall internal_sub_004A1F8A() {
    // Static guard to ensure one‑time initialisation.  The original
    // routine appears to set up global state only once.
    static bool initialised = false;
    if (!initialised) {
        initialised = true;
        // Initialise the global flags to -1.  In the assembly this is
        // accomplished with OR instructions against 0xFFFFFFFF.
        g_flag1 = -1;
        g_flag2 = -1;
        // Demonstrate use of the table lookup functions.  These calls
        // return values from g_table based on the input argument.  In
        // a real reconstruction you would likely call other routines
        // referenced by the disassembly at 0x004A1F8A.  Here we use
        // arbitrary arguments to illustrate the mechanics.
        // Call the sine lookup functions.  We use the built‑in
        // 'short' type here to match the forward declarations above.
        short result1 = func_401000(0x123);
        short result2 = func_401020(0x234);
        char buf[128];
        std::snprintf(buf, sizeof(buf),
                      "sub_004A1F8A: lookup results = %d, %d\n",
                      result1, result2);
        Log("%s", buf);
        // Call our inline‑assembly stubs.  The original function
        // pushes 2 before calling the first routine.  We preserve
        // that behaviour here.
        CallStubA(2);
        CallStubB();
        Log("sub_004A1F8A: initialisation complete\n");
    } else {
        // Subsequent calls simply log that the routine has already
        // executed.  This mirrors the fact that the real code does
        // nothing on subsequent invocations once its state is set up.
        Log("sub_004A1F8A: already initialised\n");
    }
}

// -----------------------------------------------------------------------------
// Naked wrapper for sub_004A1F8A.
//
// This exported function is the actual detour target.  It saves and
// restores all general‑purpose registers before delegating to
// internal_sub_004A1F8A().  Using a naked wrapper keeps the stack
// frame under our control and avoids any hidden prolog/epilog code
// generation by the compiler.  The __stdcall calling convention is
// specified because the original function does not appear to take
// parameters.  If later analysis reveals otherwise adjust the
// signature accordingly.
extern "C" __declspec(dllexport) __declspec(naked) void __stdcall sub_004A1F8A(void) {
    __asm {
        // Preserve registers so that the caller's context is not
        // clobbered by our C++ helper.  pushad pushes EAX, ECX, EDX,
        // EBX, ESP, EBP, ESI and EDI in that order.  We will pop
        // them back before returning.
        pushad
        // Call the internal helper.  It uses the __stdcall
        // convention and takes no parameters, so no stack cleanup is
        // necessary after the call.  The call instruction pushes
        // the return address and jumps to internal_sub_004A1F8A.
        call internal_sub_004A1F8A
        // Restore registers in the reverse order to pushad.
        popad
        // Return to the caller.  Because sub_004A1F8A takes no
        // arguments there is no need to adjust ESP by a byte count.
        ret
    }
}