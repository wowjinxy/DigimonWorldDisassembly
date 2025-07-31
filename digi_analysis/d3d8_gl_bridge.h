#pragma once
#include <windows.h>
#include <GL/gl.h>
#include <vector>
#include <cstddef>
#include "opengl_utils.h"

// Add Direct3D constants that we need
#define D3DFMT_INDEX16 101
#define D3DFMT_INDEX32 102
#define D3DPT_TRIANGLELIST 4
#define D3DPT_TRIANGLESTRIP 5
#define S_OK 0
#define E_POINTER 0x80004003L
#define E_FAIL 0x80004005L
#define E_NOINTERFACE 0x80004002L

// Minimal stand‑in definitions for a few Direct3D types.  Only the
// bits required by the game are represented here.
struct D3DRECT {
    LONG x1, y1, x2, y2;
};
using D3DCOLOR = DWORD;

class IDirect3DDevice8; // forward declaration

// Simple texture object storing pixel data until it is uploaded by the
// render thread.  Only the functionality required by the renderer is
// implemented.
class IDirect3DTexture8 {
public:
    IDirect3DTexture8(UINT width, UINT height);
    ~IDirect3DTexture8();
    ULONG AddRef();
    ULONG Release();

    // Update the backing pixel buffer.  Expects width*height*4 bytes of
    // RGBA data.
    void UpdateData(const void* src, size_t size);

    // Called on the render thread to create the GL texture if needed.
    void Upload();
    GLuint GetGLTexture() const { return m_glTex; }

private:
    ULONG              m_refCount;
    UINT               m_width;
    UINT               m_height;
    std::vector<unsigned char> m_pixels;
    GLuint             m_glTex;
    bool               m_uploaded;
};

// ---------------------------------------------------------------------------
// IDirect3D8 replacement backed by an OpenGL implementation.
// Only a very small subset of the original interface is provided.
// ---------------------------------------------------------------------------
class IDirect3D8 {
public:
    IDirect3D8();
    ULONG AddRef();
    ULONG Release();
    HRESULT QueryInterface(REFIID, void**) { return E_NOINTERFACE; }

    // CreateDevice is the only creation method required by the game.
    HRESULT CreateDevice(UINT, DWORD, HWND, DWORD, void*, IDirect3DDevice8**);

private:
    ULONG m_refCount;
};

// ---------------------------------------------------------------------------
// IDirect3DDevice8 stub translating basic calls to OpenGL equivalents.
// ---------------------------------------------------------------------------
class IDirect3DDevice8 {
public:
    IDirect3DDevice8();
    ULONG AddRef();
    ULONG Release();
    HRESULT QueryInterface(REFIID, void**) { return E_NOINTERFACE; }

    // Minimal set of methods exercised by the game.
    HRESULT Clear(DWORD Count, const D3DRECT* pRects, DWORD Flags, D3DCOLOR Color, float Z, DWORD Stencil);
    HRESULT Present(const RECT* pSourceRect, const RECT* pDestRect, HWND hDestWindowOverride, const RGNDATA* pDirtyRegion);
    HRESULT SetTexture(DWORD Stage, IDirect3DTexture8* pTexture);
    HRESULT DrawPrimitiveUP(UINT PrimitiveType, UINT PrimitiveCount, const void* pVertexStreamZeroData, UINT VertexStreamZeroStride);
    HRESULT DrawIndexedPrimitiveUP(UINT PrimitiveType, UINT MinVertexIndex, UINT NumVertices, UINT PrimitiveCount, const void* pIndexData, DWORD IndexDataFormat, const void* pVertexStreamZeroData, UINT VertexStreamZeroStride);
    HRESULT CreateTexture(UINT Width, UINT Height, UINT Levels, DWORD Usage, DWORD Format, DWORD Pool, IDirect3DTexture8** ppTexture);

private:
    ULONG m_refCount;
    IDirect3DTexture8* m_currentTexture;
};