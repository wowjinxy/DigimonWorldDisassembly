#include "logger.h"
#include <windows.h>
#include <cstdio>
#include <cstdarg>
#include <fstream>

static std::ofstream g_logFile;

void InitLogger() {
    AllocConsole();
    FILE* f = freopen("CONOUT$", "w", stdout);
    (void)f;
    g_logFile.open("digi_debug.txt", std::ios::out | std::ios::trunc);
}

void ShutdownLogger() {
    if (g_logFile.is_open()) {
        g_logFile.close();
    }
    FreeConsole();
}

extern "C" void __cdecl Log(const char* fmt, ...) {
    va_list args;
    va_start(args, fmt);
    va_list copy;
    va_copy(copy, args);
    vprintf(fmt, args);
    if (g_logFile.is_open()) {
        char buf[1024];
        vsnprintf(buf, sizeof(buf), fmt, copy);
        g_logFile << buf;
        g_logFile.flush();
    }
    va_end(copy);
    va_end(args);
}
