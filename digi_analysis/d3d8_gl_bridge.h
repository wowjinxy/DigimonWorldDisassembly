#pragma once
#include <windows.h>
#include <GL/gl.h>
#include "opengl_utils.h"

// Minimal stand‑in definitions for a few Direct3D types.  Only the
// bits required by the game are represented here.
struct D3DRECT {
    LONG x1, y1, x2, y2;
};
using D3DCOLOR = DWORD;

class IDirect3DDevice8; // forward declaration

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

    // Clear and Present are sufficient for the game's needs.
    HRESULT Clear(DWORD, const D3DRECT*, DWORD, D3DCOLOR, float, DWORD);
    HRESULT Present(const RECT*, const RECT*, HWND, const RGNDATA*);

private:
    ULONG m_refCount;
};

