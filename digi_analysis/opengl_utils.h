#pragma once
#include <windows.h>

// Initializes a simple OpenGL window and context.
// Returns true on success, false on failure.
bool InitOpenGL();

// Tears down the OpenGL context and associated resources.
void ShutdownOpenGL();

