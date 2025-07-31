#include "d3d8_gl_bridge.h"
#include <cstring>

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------
enum D3DPRIMITIVETYPE {
    D3DPT_POINTLIST     = 1,
    D3DPT_LINELIST      = 2,
    D3DPT_LINESTRIP     = 3,
    D3DPT_TRIANGLELIST  = 4,
    D3DPT_TRIANGLESTRIP = 5,
    D3DPT_TRIANGLEFAN   = 6,
};

static GLenum ToGLPrimitive(UINT type) {
    switch (type) {
    case D3DPT_POINTLIST:     return GL_POINTS;
    case D3DPT_LINELIST:      return GL_LINES;
    case D3DPT_LINESTRIP:     return GL_LINE_STRIP;
    case D3DPT_TRIANGLELIST:  return GL_TRIANGLES;
    case D3DPT_TRIANGLESTRIP: return GL_TRIANGLE_STRIP;
    case D3DPT_TRIANGLEFAN:   return GL_TRIANGLE_FAN;
    default:                  return GL_TRIANGLES;
    }
}

static size_t VertexCountFromPrim(UINT type, UINT primCount) {
    switch (type) {
    case D3DPT_POINTLIST:     return primCount;
    case D3DPT_LINELIST:      return primCount * 2;
    case D3DPT_LINESTRIP:     return primCount + 1;
    case D3DPT_TRIANGLELIST:  return primCount * 3;
    case D3DPT_TRIANGLESTRIP: return primCount + 2;
    case D3DPT_TRIANGLEFAN:   return primCount + 2;
    default:                  return primCount * 3;
    }
}

static size_t IndexCountFromPrim(UINT type, UINT primCount) {
    switch (type) {
    case D3DPT_POINTLIST:     return primCount;
    case D3DPT_LINELIST:      return primCount * 2;
    case D3DPT_LINESTRIP:     return primCount + 1;
    case D3DPT_TRIANGLELIST:  return primCount * 3;
    case D3DPT_TRIANGLESTRIP: return primCount + 2;
    case D3DPT_TRIANGLEFAN:   return primCount + 2;
    default:                  return primCount * 3;
    }
}

const DWORD D3DFMT_INDEX16 = 101;
const DWORD D3DFMT_INDEX32 = 102;

// ---------------------------------------------------------------------------
// IDirect3DTexture8 implementation
// ---------------------------------------------------------------------------
IDirect3DTexture8::IDirect3DTexture8(UINT width, UINT height)
    : m_refCount(1), m_width(width), m_height(height), m_pixels(width * height * 4, 0),
      m_glTex(0), m_uploaded(false) {}

IDirect3DTexture8::~IDirect3DTexture8() {}

ULONG IDirect3DTexture8::AddRef() { return ++m_refCount; }

ULONG IDirect3DTexture8::Release() {
    ULONG ref = --m_refCount;
    if (ref == 0) {
        delete this;
    }
    return ref;
}

void IDirect3DTexture8::UpdateData(const void* src, size_t size) {
    if (size <= m_pixels.size()) {
        std::memcpy(m_pixels.data(), src, size);
        m_uploaded = false;
    }
}

void IDirect3DTexture8::Upload() {
    if (m_uploaded) {
        return;
    }
    glGenTextures(1, &m_glTex);
    glBindTexture(GL_TEXTURE_2D, m_glTex);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, m_width, m_height, 0, GL_RGBA, GL_UNSIGNED_BYTE, m_pixels.data());
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    m_uploaded = true;
}

// ---------------------------------------------------------------------------
// IDirect3D8 implementation
// ---------------------------------------------------------------------------
IDirect3D8::IDirect3D8() : m_refCount(1) {}

ULONG IDirect3D8::AddRef() {
    return ++m_refCount;
}

ULONG IDirect3D8::Release() {
    ULONG ref = --m_refCount;
    if (ref == 0) {
        delete this;
    }
    return ref;
}

HRESULT IDirect3D8::CreateDevice(UINT, DWORD, HWND, DWORD, void*, IDirect3DDevice8** ppDevice) {
    if (!ppDevice) {
        return E_POINTER;
    }
    if (!InitOpenGL()) {
        return E_FAIL;
    }
    *ppDevice = new IDirect3DDevice8();
    return S_OK;
}

// ---------------------------------------------------------------------------
// IDirect3DDevice8 implementation
// ---------------------------------------------------------------------------
IDirect3DDevice8::IDirect3DDevice8() : m_refCount(1), m_currentTexture(nullptr) {}

ULONG IDirect3DDevice8::AddRef() {
    return ++m_refCount;
}

ULONG IDirect3DDevice8::Release() {
    ULONG ref = --m_refCount;
    if (ref == 0) {
        delete this;
    }
    return ref;
}

HRESULT IDirect3DDevice8::Clear(DWORD, const D3DRECT*, DWORD Flags, D3DCOLOR Color, float, DWORD) {
    float r = ((Color >> 16) & 0xFF) / 255.0f;
    float g = ((Color >> 8) & 0xFF) / 255.0f;
    float b = ((Color >> 0) & 0xFF) / 255.0f;
    EnqueueClear(r, g, b);
    return S_OK;
}

HRESULT IDirect3DDevice8::Present(const RECT*, const RECT*, HWND, const RGNDATA*) {
    PresentFrame();
    return S_OK;
}

HRESULT IDirect3DDevice8::SetTexture(DWORD Stage, IDirect3DTexture8* pTexture) {
    if (Stage != 0) {
        return S_OK;
    }
    m_currentTexture = pTexture;
    return S_OK;
}

HRESULT IDirect3DDevice8::DrawPrimitiveUP(UINT PrimitiveType, UINT PrimitiveCount,
                                          const void* pVertexStreamZeroData, UINT VertexStreamZeroStride) {
    if (!pVertexStreamZeroData) {
        return E_POINTER;
    }
    PendingDraw draw;
    draw.mode = ToGLPrimitive(PrimitiveType);
    draw.texture = m_currentTexture;
    size_t vertCount = VertexCountFromPrim(PrimitiveType, PrimitiveCount);
    size_t strideFloats = VertexStreamZeroStride / sizeof(float);
    const float* v = static_cast<const float*>(pVertexStreamZeroData);
    draw.vertices.assign(v, v + vertCount * strideFloats);
    SubmitDrawCall(std::move(draw));
    return S_OK;
}

HRESULT IDirect3DDevice8::DrawIndexedPrimitiveUP(UINT PrimitiveType, UINT MinVertexIndex, UINT NumVertices,
                                                 UINT PrimitiveCount, const void* pIndexData, DWORD IndexDataFormat,
                                                 const void* pVertexStreamZeroData, UINT VertexStreamZeroStride) {
    (void)MinVertexIndex;
    if (!pIndexData || !pVertexStreamZeroData) {
        return E_POINTER;
    }
    PendingDraw draw;
    draw.mode = ToGLPrimitive(PrimitiveType);
    draw.texture = m_currentTexture;
    size_t strideFloats = VertexStreamZeroStride / sizeof(float);
    const float* v = static_cast<const float*>(pVertexStreamZeroData);
    draw.vertices.assign(v, v + NumVertices * strideFloats);

    size_t indexCount = IndexCountFromPrim(PrimitiveType, PrimitiveCount);
    if (IndexDataFormat == D3DFMT_INDEX16) {
        const unsigned short* idx = static_cast<const unsigned short*>(pIndexData);
        draw.indices.assign(idx, idx + indexCount);
    } else if (IndexDataFormat == D3DFMT_INDEX32) {
        const unsigned int* idx = static_cast<const unsigned int*>(pIndexData);
        draw.indices.reserve(indexCount);
        for (size_t i = 0; i < indexCount; ++i) {
            draw.indices.push_back(static_cast<unsigned short>(idx[i]));
        }
    } else {
        return E_FAIL;
    }
    SubmitDrawCall(std::move(draw));
    return S_OK;
}

HRESULT IDirect3DDevice8::CreateTexture(UINT Width, UINT Height, UINT, DWORD, DWORD, DWORD,
                                        IDirect3DTexture8** ppTexture) {
    if (!ppTexture) {
        return E_POINTER;
    }
    *ppTexture = new IDirect3DTexture8(Width, Height);
    return S_OK;
}

