// This file provides a small harness around the embedded digi.exe binary.
// The purpose of this program is two‑fold:  
// 1. Demonstrate that the Visual Studio project builds successfully.  
// 2. Provide a convenient way to reconstruct the original executable from its
//    compiled bytes so that you can run or inspect it on Windows.  

#include <iostream>
#include <fstream>
#include <windows.h>
#include "digi_bytes.h"

int main() {
    // Inform the user about what this program does.
    std::cout << "This Visual Studio project contains both a partial decompilation and the original binary data of digi.exe.\n";
    std::cout << "\n";
    std::cout << "A handful of small functions at the start of digi.exe have been hand‑translated into C (see functions.cpp).\n";
    std::cout << "These functions use a table extracted from the executable's data section (digi_table.h).\n";
    std::cout << "Below is a demo of calling those reconstructed functions.\n" << std::endl;

    // Demonstrate the reconstructed functions with some test values.
    extern int16_t func_401000(int32_t);
    extern int16_t func_401020(int32_t);
    extern int16_t func_401040(int32_t);
    extern int16_t func_401050(int32_t);

    int inputs[] = {0, 1, 100, 4095, -1};
    for (int v : inputs) {
        std::cout << "Input " << v << ": "
                  << "f401000=" << func_401000(v) << ", "
                  << "f401020=" << func_401020(v) << ", "
                  << "f401040=" << func_401040(v) << ", "
                  << "f401050=" << func_401050(v) << std::endl;
    }

    std::cout << "\n";
    std::cout << "The original executable has also been embedded into digi_bytes.h as a static array.\n";
    std::cout << "Would you like to write it back out to disk as digi_extracted.exe? (y/n): ";
    char response = 'n';
    std::cin >> response;
    if (response == 'y' || response == 'Y') {
        const char* outName = "digi_extracted.exe";
        std::ofstream out(outName, std::ios::binary);
        if (!out) {
            std::cerr << "Failed to open output file: " << outName << std::endl;
            return 1;
        }
        out.write(reinterpret_cast<const char*>(digi_exe), digi_exe_size);
        out.close();
        std::cout << "Extracted the original executable to " << outName << " (" << digi_exe_size << " bytes).\n";
        std::cout << "You can run it manually if desired.\n";
    } else {
        std::cout << "Skipping extraction of the original binary.\n";
    }

    return 0;
}