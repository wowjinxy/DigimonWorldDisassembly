// Utility helpers for coordinating the OpenGL rendering thread.  The
// game issues Direct3D style draw calls on the main thread which are
// translated into PendingDraw structures and consumed by the OpenGL
// thread.

#pragma once
#include <windows.h>
#include <GL/gl.h>
#include <vector>

class IDirect3DTexture8; // forward declaration

// Basic container for draw information passed from the Direct3D
// emulation layer to the renderer.  Vertices are expected to contain
// position (x,y,z) followed by texture coordinates (u,v) for each
// vertex.  Indices are optional – if empty, the vertices will be
// rendered sequentially.
struct PendingDraw {
    GLenum                     mode;
    std::vector<float>        vertices;
    std::vector<unsigned short> indices;
    IDirect3DTexture8*        texture;
};

// Initializes a simple OpenGL window and context.  Returns true on
// success, false on failure.
bool InitOpenGL();

// Tears down the OpenGL context and associated resources.
void ShutdownOpenGL();

// Queue a draw call for the render thread to consume.
void SubmitDrawCall(PendingDraw&& draw);

// Request that the next frame clear to the given colour.
void EnqueueClear(float r, float g, float b);

// Promote queued draw calls to the render thread.  Called when the
// game presents a frame.
void PresentFrame();

