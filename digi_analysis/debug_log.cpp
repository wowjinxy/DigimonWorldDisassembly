#include "debug_log.h"

#include <windows.h>
#include <cstdio>
#include <cstdarg>
#include <fstream>

static std::ofstream g_logFile;
static bool g_consoleAllocated = false;

void InitDebugLog() {
    if (!g_consoleAllocated) {
        AllocConsole();
#ifdef _MSC_VER
        FILE* out;
        freopen_s(&out, "CONOUT$", "w", stdout);
        freopen_s(&out, "CONOUT$", "w", stderr);
#else
        freopen("CONOUT$", "w", stdout);
        freopen("CONOUT$", "w", stderr);
#endif
        g_consoleAllocated = true;
    }
    if (!g_logFile.is_open()) {
        g_logFile.open("debug_log.txt", std::ios::out | std::ios::app);
    }
}

void DebugLog(const char* fmt, ...) {
    char buf[1024];
    va_list args;
    va_start(args, fmt);
    vsnprintf(buf, sizeof(buf), fmt, args);
    va_end(args);
    buf[sizeof(buf) - 1] = '\0';
    OutputDebugStringA(buf);
    fputs(buf, stdout);
    fflush(stdout);
    if (g_logFile.is_open()) {
        g_logFile << buf;
        g_logFile.flush();
    }
}

void ShutdownDebugLog() {
    if (g_logFile.is_open()) {
        g_logFile.close();
    }
    if (g_consoleAllocated) {
        FreeConsole();
        g_consoleAllocated = false;
    }
}

