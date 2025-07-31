#pragma once
#include <windows.h>
#include <cstddef>
#include <cstdint>

// Initializes a simple OpenGL window and context.
// Returns true on success, false on failure.
bool InitOpenGL();

// Submits a mesh to be rendered by the OpenGL render thread.  The
// vertex format is XYZUV with 32-bit floats and indices are 16-bit.
void SubmitMesh(const float* vertices, size_t vertexCount,
                const uint16_t* indices, size_t indexCount,
                const uint32_t* texture, int texWidth, int texHeight);

// Tears down the OpenGL context and associated resources.
void ShutdownOpenGL();

