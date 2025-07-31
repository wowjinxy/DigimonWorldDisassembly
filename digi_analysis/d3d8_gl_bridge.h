#pragma once
#include <windows.h>
#include <GL/gl.h>
#ifndef GL_GLEXT_PROTOTYPES
#define GL_GLEXT_PROTOTYPES
#endif
#include <GL/glext.h>
#include <vector>
#include <cstddef>
#include "opengl_utils.h"

// Minimal stand‑in definitions for a few Direct3D types.  Only the
// bits required by the game are represented here.
struct D3DRECT {
    LONG x1, y1, x2, y2;
};
using D3DCOLOR = DWORD;

struct D3DMATRIX {
    float m[4][4];
};

enum D3DTRANSFORMSTATETYPE {
    D3DTS_VIEW       = 2,
    D3DTS_PROJECTION = 3,
    D3DTS_WORLD      = 256,
};

enum D3DRENDERSTATETYPE {
    D3DRS_ZENABLE            = 7,
    D3DRS_ALPHABLENDENABLE   = 27,
};

class IDirect3DDevice8; // forward declaration

class IDirect3DVertexBuffer8 {
public:
    IDirect3DVertexBuffer8(UINT length);
    ~IDirect3DVertexBuffer8();
    ULONG AddRef();
    ULONG Release();
    HRESULT Lock(UINT OffsetToLock, UINT SizeToLock, BYTE** ppbData, DWORD Flags);
    HRESULT Unlock();
    void Upload();
    GLuint GetGLBuffer() const { return m_glBuffer; }

private:
    ULONG                      m_refCount;
    std::vector<unsigned char> m_data;
    BYTE*                      m_lockedPtr;
    GLuint                     m_glBuffer;
    bool                       m_uploaded;
};

class IDirect3DIndexBuffer8 {
public:
    IDirect3DIndexBuffer8(UINT length, bool use32);
    ~IDirect3DIndexBuffer8();
    ULONG AddRef();
    ULONG Release();
    HRESULT Lock(UINT OffsetToLock, UINT SizeToLock, BYTE** ppbData, DWORD Flags);
    HRESULT Unlock();
    void Upload();
    GLuint GetGLBuffer() const { return m_glBuffer; }
    bool   Uses32Bit() const { return m_use32; }

private:
    ULONG                      m_refCount;
    std::vector<unsigned char> m_data;
    BYTE*                      m_lockedPtr;
    GLuint                     m_glBuffer;
    bool                       m_uploaded;
    bool                       m_use32;
};

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
    HRESULT Clear(DWORD, const D3DRECT*, DWORD, D3DCOLOR, float, DWORD);
    HRESULT Present(const RECT*, const RECT*, HWND, const RGNDATA*);
    HRESULT SetTexture(DWORD Stage, IDirect3DTexture8* pTexture);
    HRESULT BeginScene();
    HRESULT EndScene();
    HRESULT SetRenderState(D3DRENDERSTATETYPE State, DWORD Value);
    HRESULT SetTransform(D3DTRANSFORMSTATETYPE State, const D3DMATRIX* pMatrix);
    HRESULT CreateVertexBuffer(UINT Length, DWORD Usage, DWORD FVF, DWORD Pool,
                               IDirect3DVertexBuffer8** ppVertexBuffer);
    HRESULT CreateIndexBuffer(UINT Length, DWORD Usage, DWORD Format, DWORD Pool,
                              IDirect3DIndexBuffer8** ppIndexBuffer);
    HRESULT SetStreamSource(UINT StreamNumber, IDirect3DVertexBuffer8* pStreamData,
                            UINT Stride);
    HRESULT SetIndices(IDirect3DIndexBuffer8* pIndexData);
    HRESULT DrawPrimitive(UINT PrimitiveType, UINT StartVertex, UINT PrimitiveCount);
    HRESULT DrawIndexedPrimitive(UINT PrimitiveType, UINT MinVertexIndex, UINT NumVertices,
                                 UINT StartIndex, UINT PrimitiveCount);
    HRESULT DrawPrimitiveUP(UINT PrimitiveType, UINT PrimitiveCount,
                            const void* pVertexStreamZeroData, UINT VertexStreamZeroStride);
    HRESULT DrawIndexedPrimitiveUP(UINT PrimitiveType, UINT MinVertexIndex, UINT NumVertices,
                                  UINT PrimitiveCount, const void* pIndexData, DWORD IndexDataFormat,
                                  const void* pVertexStreamZeroData, UINT VertexStreamZeroStride);
    HRESULT CreateTexture(UINT Width, UINT Height, UINT Levels, DWORD Usage, DWORD Format, DWORD Pool,
                         IDirect3DTexture8** ppTexture);

private:
    ULONG                 m_refCount;
    IDirect3DTexture8*    m_currentTexture;
    IDirect3DVertexBuffer8* m_streamSource;
    UINT                  m_streamStride;
    IDirect3DIndexBuffer8* m_indexBuffer;
    RenderState           m_state;
    float                 m_world[16];
    float                 m_view[16];
    float                 m_projection[16];
};

