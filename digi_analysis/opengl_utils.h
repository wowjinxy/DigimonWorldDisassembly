// Utility helpers for coordinating the OpenGL rendering thread.  The
// game issues Direct3D style draw calls on the main thread which are
// translated into PendingDraw structures and consumed by the OpenGL
// thread.

#pragma once
#include <windows.h>
#include <GL/glew.h>
#include <vector>

class IDirect3DTexture8;      // forward declaration
class IDirect3DVertexBuffer8; // forward declaration
class IDirect3DIndexBuffer8;  // forward declaration

// Minimal set of render states tracked by the bridge.  Additional states can
// be added as needed.
struct RenderState {
    bool alphaBlend = false;
    bool depthTest  = false;
};

// Basic container for draw information passed from the Direct3D
// emulation layer to the renderer.  Vertices are expected to contain
// position (x,y,z) followed by texture coordinates (u,v) for each
// vertex.  Indices are optional – if empty, the vertices will be
// rendered sequentially.
struct PendingDraw {
    GLenum                      mode;
    RenderState                 state;
    float                       world[16];
    float                       view[16];
    float                       projection[16];
    IDirect3DTexture8*          texture;
    IDirect3DVertexBuffer8*     vertexBuffer = nullptr;
    IDirect3DIndexBuffer8*      indexBuffer  = nullptr;
    std::vector<float>          vertices; // used when no vertexBuffer provided
    std::vector<unsigned short> indices;  // used when no indexBuffer provided
    UINT                        stride      = 0;
    UINT                        startVertex = 0;
    UINT                        startIndex  = 0;
    UINT                        vertexCount = 0;
    UINT                        indexCount  = 0;
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

