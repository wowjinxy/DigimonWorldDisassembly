// Entry point implementation for the reconstructed project.
// This file defines WinMain rather than embedding the original executable bytes.
// Instead of recreating the binary from data, we focus on compiling real code
// extracted or reconstructed from digi.exe.  The small table lookup functions
// live in functions.cpp and the extracted strings are available in strings.h.

#include <windows.h>
#include <string>
#include "digi_table.h"
#include "strings.h"

extern "C" int16_t func_401000(int32_t);
extern "C" int16_t func_401020(int32_t);
extern "C" int16_t func_401040(int32_t);
extern "C" int16_t func_401050(int32_t);

// Simple helper to convert narrow to wide string.
static std::wstring ToWString(const std::string &s) {
    int n = MultiByteToWideChar(CP_UTF8, 0, s.c_str(), -1, NULL, 0);
    std::wstring ws(n, L'\0');
    MultiByteToWideChar(CP_UTF8, 0, s.c_str(), -1, &ws[0], n);
    return ws;
}

// The WinMain entry point typical of Win32 GUI applications.
int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance,
                   LPSTR lpCmdLine, int nCmdShow) {
    // Demonstrate reconstructed functions.  We call each with a few test values.
    int inputs[] = {0, 1, 100, 4095, -1};
    std::string message;
    message += "Testing reconstructed functions:\n";
    for (int v : inputs) {
        message += "Input " + std::to_string(v);
        message += ": f401000=" + std::to_string(func_401000(v));
        message += ", f401020=" + std::to_string(func_401020(v));
        message += ", f401040=" + std::to_string(func_401040(v));
        message += ", f401050=" + std::to_string(func_401050(v));
        message += "\n";
    }

    // Show the first few extracted strings in a message box to prove the strings
    // were correctly decoded.  We limit to a handful to avoid huge dialogs.
    message += "\nSample extracted strings:\n";
    size_t sampleCount = (g_strings_count < 10) ? g_strings_count : 10;
    for (size_t i = 0; i < sampleCount; ++i) {
        // Convert each wide string to UTF-8 and then append.
        std::wstring ws(g_strings[i]);
        int len = WideCharToMultiByte(CP_UTF8, 0, ws.c_str(), -1, NULL, 0, NULL, NULL);
        std::string utf8(len, '\0');
        WideCharToMultiByte(CP_UTF8, 0, ws.c_str(), -1, &utf8[0], len, NULL, NULL);
        // Remove the terminating null inserted by WideCharToMultiByte.
        if (!utf8.empty() && utf8.back() == '\0') utf8.pop_back();
        message += utf8 + "\n";
    }

    std::wstring wmsg = ToWString(message);
    MessageBoxW(NULL, wmsg.c_str(), L"Digi EXE Reconstruction Demo", MB_OK);
    return 0;
}