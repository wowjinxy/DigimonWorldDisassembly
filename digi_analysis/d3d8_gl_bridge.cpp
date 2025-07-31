#include "d3d8_gl_bridge.h"

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
IDirect3DDevice8::IDirect3DDevice8() : m_refCount(1) {}

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
    glClearColor(r, g, b, 1.0f);

    GLbitfield mask = 0;
    const DWORD D3DCLEAR_TARGET  = 0x00000001;
    const DWORD D3DCLEAR_ZBUFFER = 0x00000002;
    const DWORD D3DCLEAR_STENCIL = 0x00000004;
    if (Flags & D3DCLEAR_TARGET)  mask |= GL_COLOR_BUFFER_BIT;
    if (Flags & D3DCLEAR_ZBUFFER) mask |= GL_DEPTH_BUFFER_BIT;
    if (Flags & D3DCLEAR_STENCIL) mask |= GL_STENCIL_BUFFER_BIT;
    glClear(mask);
    return S_OK;
}

HRESULT IDirect3DDevice8::Present(const RECT*, const RECT*, HWND, const RGNDATA*) {
    SwapBuffers(wglGetCurrentDC());
    return S_OK;
}

