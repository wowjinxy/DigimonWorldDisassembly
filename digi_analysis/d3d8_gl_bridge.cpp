#include "d3d8_gl_bridge.h"
#include "opengl_utils.h"
#include <cstring>

// Helper functions for primitive conversion
static GLenum ToGLPrimitive(UINT d3dPrimType) {
    switch (d3dPrimType) {
    case D3DPT_TRIANGLELIST: return GL_TRIANGLES;
    case D3DPT_TRIANGLESTRIP: return GL_TRIANGLE_STRIP;
    default: return GL_TRIANGLES;
    }
}

static size_t VertexCountFromPrim(UINT primType, UINT primCount) {
    switch (primType) {
    case D3DPT_TRIANGLELIST: return primCount * 3;
    case D3DPT_TRIANGLESTRIP: return primCount + 2;
    default: return primCount * 3;
    }
}

static size_t IndexCountFromPrim(UINT primType, UINT primCount) {
    switch (primType) {
    case D3DPT_TRIANGLELIST: return primCount * 3;
    case D3DPT_TRIANGLESTRIP: return primCount + 2;
    default: return primCount * 3;
    }
}

// ---------------------------------------------------------------------------
// IDirect3DTexture8 implementation
// ---------------------------------------------------------------------------
IDirect3DTexture8::IDirect3DTexture8(UINT width, UINT height)
    : m_refCount(1), m_width(width), m_height(height), m_pixels(width* height * 4, 0),
    m_glTex(0), m_uploaded(false) {
}

IDirect3DTexture8::~IDirect3DTexture8() {
    if (m_glTex != 0) {
        glDeleteTextures(1, &m_glTex);
    }
}

ULONG IDirect3DTexture8::AddRef() {
    return ++m_refCount;
}

ULONG IDirect3DTexture8::Release() {
    ULONG ref = --m_refCount;
    if (ref == 0) {
        delete this;
    }
    return ref;
}

void IDirect3DTexture8::UpdateData(const void* src, unsigned int size) {
    if (size <= m_pixels.size()) {
        std::memcpy(m_pixels.data(), src, size);
        m_uploaded = false;
    }
}

void IDirect3DTexture8::Upload() {
    if (m_uploaded) {
        return;
    }
    if (m_glTex == 0) {
        glGenTextures(1, &m_glTex);
    }
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

HRESULT IDirect3D8::QueryInterface(REFIID riid, void** ppv) {
    if (!ppv) return E_POINTER;
    *ppv = nullptr;
    return E_NOINTERFACE;
}

HRESULT IDirect3D8::RegisterSoftwareDevice(void* pInitializeFunction) {
    return S_OK;
}

UINT IDirect3D8::GetAdapterCount() {
    return 1; // Report 1 adapter (primary display)
}

HRESULT IDirect3D8::GetAdapterIdentifier(UINT Adapter, DWORD Flags, void* pIdentifier) {
    if (Adapter >= 1) return E_FAIL;
    if (!pIdentifier) return E_POINTER;

    // Fill with dummy data - real implementation would query OpenGL/system info
    memset(pIdentifier, 0, 232); // sizeof(D3DADAPTER_IDENTIFIER8)
    return S_OK;
}

UINT IDirect3D8::GetAdapterModeCount(UINT Adapter) {
    if (Adapter >= 1) return 0;
    return 1; // Report 1 display mode
}

HRESULT IDirect3D8::EnumAdapterModes(UINT Adapter, UINT Mode, void* pMode) {
    if (Adapter >= 1 || Mode >= 1) return E_FAIL;
    if (!pMode) return E_POINTER;

    // Fill with dummy display mode data
    memset(pMode, 0, 16); // sizeof(D3DDISPLAYMODE)
    return S_OK;
}

HRESULT IDirect3D8::GetAdapterDisplayMode(UINT Adapter, void* pMode) {
    if (Adapter >= 1) return E_FAIL;
    if (!pMode) return E_POINTER;

    // Fill with current display mode data
    memset(pMode, 0, 16); // sizeof(D3DDISPLAYMODE)
    return S_OK;
}

HRESULT IDirect3D8::CheckDeviceType(UINT Adapter, DWORD CheckType, DWORD DisplayFormat, DWORD BackBufferFormat, BOOL Windowed) {
    if (Adapter >= 1) return E_FAIL;

    // Always report success - we support any device type
    return S_OK;
}

HRESULT IDirect3D8::CheckDeviceFormat(UINT Adapter, DWORD DeviceType, DWORD AdapterFormat, DWORD Usage, DWORD RType, DWORD CheckFormat) {
    if (Adapter >= 1) return E_FAIL;
    return S_OK; // Support all formats
}

HRESULT IDirect3D8::CheckDeviceMultiSampleType(UINT Adapter, DWORD DeviceType, DWORD SurfaceFormat, BOOL Windowed, DWORD MultiSampleType) {
    if (Adapter >= 1) return E_FAIL;
    if (MultiSampleType > 1) return E_FAIL; // Don't support multisampling
    return S_OK;
}

HRESULT IDirect3D8::CheckDepthStencilMatch(UINT Adapter, DWORD DeviceType, DWORD AdapterFormat, DWORD RenderTargetFormat, DWORD DepthStencilFormat) {
    if (Adapter >= 1) return E_FAIL;
    return S_OK; // Support all depth/stencil combinations
}

HRESULT IDirect3D8::GetDeviceCaps(UINT Adapter, DWORD DeviceType, void* pCaps) {
    if (Adapter >= 1) return E_FAIL;
    if (!pCaps) return E_POINTER;

    // Fill with dummy capabilities - real implementation would query OpenGL capabilities
    memset(pCaps, 0, 304); // sizeof(D3DCAPS8)
    return S_OK;
}

HMONITOR IDirect3D8::GetAdapterMonitor(UINT Adapter) {
    if (Adapter >= 1) return nullptr;
    return MonitorFromPoint({ 0, 0 }, MONITOR_DEFAULTTOPRIMARY);
}

HRESULT IDirect3D8::CreateDevice(UINT Adapter, DWORD DeviceType, HWND hFocusWindow, DWORD BehaviorFlags, void* pPresentationParameters, IDirect3DDevice8** ppDevice) {
    if (!ppDevice) {
        return E_POINTER;
    }
    if (Adapter >= 1) {
        return E_FAIL;
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

HRESULT IDirect3DDevice8::Clear(DWORD Count, const D3DRECT* pRects, DWORD Flags, D3DCOLOR Color, float Z, DWORD Stencil) {
    float r = ((Color >> 16) & 0xFF) / 255.0f;
    float g = ((Color >> 8) & 0xFF) / 255.0f;
    float b = ((Color >> 0) & 0xFF) / 255.0f;
    EnqueueClear(r, g, b);
    return S_OK;
}

HRESULT IDirect3DDevice8::Present(const RECT* pSourceRect, const RECT* pDestRect, HWND hDestWindowOverride, const RGNDATA* pDirtyRegion) {
    OutputDebugStringA("Present called - starting\n");

    try {
        PresentFrame();
        OutputDebugStringA("Present called - PresentFrame completed\n");
    }
    catch (...) {
        OutputDebugStringA("Present called - PresentFrame crashed\n");
    }

    OutputDebugStringA("Present called - returning S_OK\n");
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
    }
    else if (IndexDataFormat == D3DFMT_INDEX32) {
        const unsigned int* idx = static_cast<const unsigned int*>(pIndexData);
        draw.indices.reserve(indexCount);
        for (size_t i = 0; i < indexCount; ++i) {
            draw.indices.push_back(static_cast<unsigned short>(idx[i]));
        }
    }
    else {
        return E_FAIL;
    }
    SubmitDrawCall(std::move(draw));
    return S_OK;
}

HRESULT IDirect3DDevice8::CreateTexture(UINT Width, UINT Height, UINT Levels, DWORD Usage, DWORD Format, DWORD Pool,
    IDirect3DTexture8** ppTexture) {
    if (!ppTexture) {
        return E_POINTER;
    }
    *ppTexture = new IDirect3DTexture8(Width, Height);
    return S_OK;
}