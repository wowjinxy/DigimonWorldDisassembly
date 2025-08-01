#pragma once

#include <cstdarg>

// Provide C linkage so the functions can be called from assembly.
extern "C" {
// Initialize logging by allocating a console window and opening a log file.
void InitDebugLog();
// Log a formatted message to debugger output, console and log file.
void DebugLog(const char* fmt, ...);
// Shut down logging and release resources.
void ShutdownDebugLog();
}

