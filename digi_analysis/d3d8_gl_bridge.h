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
    void UpdateData(const void* src, unsigned int size);

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
// Complete interface with all methods to match DirectX 8 vtable layout.
// ---------------------------------------------------------------------------
class IDirect3D8 {
public:
    IDirect3D8();
    ULONG AddRef();
    ULONG Release();
    HRESULT QueryInterface(REFIID riid, void** ppv);

    // Complete IDirect3D8 interface methods
    HRESULT RegisterSoftwareDevice(void* pInitializeFunction);
    UINT GetAdapterCount();
    HRESULT GetAdapterIdentifier(UINT Adapter, DWORD Flags, void* pIdentifier);
    UINT GetAdapterModeCount(UINT Adapter);
    HRESULT EnumAdapterModes(UINT Adapter, UINT Mode, void* pMode);
    HRESULT GetAdapterDisplayMode(UINT Adapter, void* pMode);
    HRESULT CheckDeviceType(UINT Adapter, DWORD CheckType, DWORD DisplayFormat, DWORD BackBufferFormat, BOOL Windowed);
    HRESULT CheckDeviceFormat(UINT Adapter, DWORD DeviceType, DWORD AdapterFormat, DWORD Usage, DWORD RType, DWORD CheckFormat);
    HRESULT CheckDeviceMultiSampleType(UINT Adapter, DWORD DeviceType, DWORD SurfaceFormat, BOOL Windowed, DWORD MultiSampleType);
    HRESULT CheckDepthStencilMatch(UINT Adapter, DWORD DeviceType, DWORD AdapterFormat, DWORD RenderTargetFormat, DWORD DepthStencilFormat);
    HRESULT GetDeviceCaps(UINT Adapter, DWORD DeviceType, void* pCaps);
    HMONITOR GetAdapterMonitor(UINT Adapter);
    HRESULT CreateDevice(UINT Adapter, DWORD DeviceType, HWND hFocusWindow, DWORD BehaviorFlags, void* pPresentationParameters, IDirect3DDevice8** ppDevice);

private:
    ULONG m_refCount;
};

// ---------------------------------------------------------------------------
// IDirect3DDevice8 stub translating basic calls to OpenGL equivalents.
// Complete interface with all methods to match DirectX 8 vtable layout.
// ---------------------------------------------------------------------------
class IDirect3DDevice8 {
public:
    IDirect3DDevice8();
    virtual ~IDirect3DDevice8() = default;

    // IUnknown methods - MUST be virtual for COM
    virtual ULONG AddRef();
    virtual ULONG Release();
    virtual HRESULT QueryInterface(REFIID, void**) { return E_NOINTERFACE; }

    // Complete IDirect3DDevice8 interface methods in vtable order - ALL VIRTUAL
    virtual HRESULT TestCooperativeLevel() { return S_OK; }
    virtual UINT GetAvailableTextureMem() { return 64 * 1024 * 1024; } // Report 64MB
    virtual HRESULT ResourceManagerDiscardBytes(DWORD Bytes) { return S_OK; }
    virtual HRESULT GetDirect3D(IDirect3D8** ppD3D8) { return E_FAIL; }
    virtual HRESULT GetDeviceCaps(void* pCaps) { return S_OK; }
    virtual HRESULT GetDisplayMode(void* pMode) { return S_OK; }
    virtual HRESULT GetCreationParameters(void* pParameters) { return S_OK; }
    virtual HRESULT SetCursorProperties(UINT XHotSpot, UINT YHotSpot, void* pCursorBitmap) { return S_OK; }
    virtual void SetCursorPosition(int X, int Y, DWORD Flags) {}
    virtual BOOL ShowCursor(BOOL bShow) { return TRUE; }
    virtual HRESULT CreateAdditionalSwapChain(void* pPresentationParameters, void** pSwapChain) { return E_FAIL; }
    virtual HRESULT Reset(void* pPresentationParameters) { return S_OK; }
    virtual HRESULT Present(const RECT* pSourceRect, const RECT* pDestRect, HWND hDestWindowOverride, const RGNDATA* pDirtyRegion);
    virtual HRESULT GetBackBuffer(UINT BackBuffer, DWORD Type, void** ppBackBuffer) { return E_FAIL; }
    virtual HRESULT GetRasterStatus(void* pRasterStatus) { return S_OK; }
    virtual void SetGammaRamp(DWORD Flags, const void* pRamp) {}
    virtual void GetGammaRamp(void* pRamp) {}
    virtual HRESULT CreateTexture(UINT Width, UINT Height, UINT Levels, DWORD Usage, DWORD Format, DWORD Pool, IDirect3DTexture8** ppTexture);
    virtual HRESULT CreateVolumeTexture(UINT Width, UINT Height, UINT Depth, UINT Levels, DWORD Usage, DWORD Format, DWORD Pool, void** ppVolumeTexture) { return E_FAIL; }
    virtual HRESULT CreateCubeTexture(UINT EdgeLength, UINT Levels, DWORD Usage, DWORD Format, DWORD Pool, void** ppCubeTexture) { return E_FAIL; }
    virtual HRESULT CreateVertexBuffer(UINT Length, DWORD Usage, DWORD FVF, DWORD Pool, void** ppVertexBuffer) { return E_FAIL; }
    virtual HRESULT CreateIndexBuffer(UINT Length, DWORD Usage, DWORD Format, DWORD Pool, void** ppIndexBuffer) { return E_FAIL; }
    virtual HRESULT CreateRenderTarget(UINT Width, UINT Height, DWORD Format, DWORD MultiSample, BOOL Lockable, void** ppSurface) { return E_FAIL; }
    virtual HRESULT CreateDepthStencilSurface(UINT Width, UINT Height, DWORD Format, DWORD MultiSample, void** ppSurface) { return E_FAIL; }
    virtual HRESULT CreateImageSurface(UINT Width, UINT Height, DWORD Format, void** ppSurface) { return E_FAIL; }
    virtual HRESULT CopyRects(void* pSourceSurface, const RECT* pSourceRectsArray, UINT cRects, void* pDestinationSurface, const POINT* pDestPointsArray) { return S_OK; }
    virtual HRESULT UpdateTexture(void* pSourceTexture, void* pDestinationTexture) { return S_OK; }
    virtual HRESULT GetFrontBuffer(void* pDestSurface) { return E_FAIL; }
    virtual HRESULT SetRenderTarget(void* pRenderTarget, void* pNewZStencil) { return S_OK; }
    virtual HRESULT GetRenderTarget(void** ppRenderTarget) { return E_FAIL; }
    virtual HRESULT GetDepthStencilSurface(void** ppZStencilSurface) { return E_FAIL; }
    virtual HRESULT BeginScene() { return S_OK; }
    virtual HRESULT EndScene() { return S_OK; }
    virtual HRESULT Clear(DWORD Count, const D3DRECT* pRects, DWORD Flags, D3DCOLOR Color, float Z, DWORD Stencil);
    virtual HRESULT SetTransform(DWORD State, const void* pMatrix) { return S_OK; }
    virtual HRESULT GetTransform(DWORD State, void* pMatrix) { return S_OK; }
    virtual HRESULT MultiplyTransform(DWORD State, const void* pMatrix) { return S_OK; }
    virtual HRESULT SetViewport(const void* pViewport) { return S_OK; }
    virtual HRESULT GetViewport(void* pViewport) { return S_OK; }
    virtual HRESULT SetMaterial(const void* pMaterial) { return S_OK; }
    virtual HRESULT GetMaterial(void* pMaterial) { return S_OK; }
    virtual HRESULT SetLight(DWORD Index, const void* pLight) { return S_OK; }
    virtual HRESULT GetLight(DWORD Index, void* pLight) { return S_OK; }
    virtual HRESULT LightEnable(DWORD Index, BOOL Enable) { return S_OK; }
    virtual HRESULT GetLightEnable(DWORD Index, BOOL* pEnable) { return S_OK; }
    virtual HRESULT SetClipPlane(DWORD Index, const float* pPlane) { return S_OK; }
    virtual HRESULT GetClipPlane(DWORD Index, float* pPlane) { return S_OK; }
    virtual HRESULT SetRenderState(DWORD State, DWORD Value) { return S_OK; }
    virtual HRESULT GetRenderState(DWORD State, DWORD* pValue) { return S_OK; }
    virtual HRESULT BeginStateBlock() { return S_OK; }
    virtual HRESULT EndStateBlock(DWORD* pToken) { return S_OK; }
    virtual HRESULT ApplyStateBlock(DWORD Token) { return S_OK; }
    virtual HRESULT CaptureStateBlock(DWORD Token) { return S_OK; }
    virtual HRESULT DeleteStateBlock(DWORD Token) { return S_OK; }
    virtual HRESULT CreateStateBlock(DWORD Type, DWORD* pToken) { return S_OK; }
    virtual HRESULT SetClipStatus(const void* pClipStatus) { return S_OK; }
    virtual HRESULT GetClipStatus(void* pClipStatus) { return S_OK; }
    virtual HRESULT GetTexture(DWORD Stage, void** ppTexture) { return E_FAIL; }
    virtual HRESULT SetTexture(DWORD Stage, IDirect3DTexture8* pTexture);
    virtual HRESULT GetTextureStageState(DWORD Stage, DWORD Type, DWORD* pValue) { return S_OK; }
    virtual HRESULT SetTextureStageState(DWORD Stage, DWORD Type, DWORD Value) { return S_OK; }
    virtual HRESULT ValidateDevice(DWORD* pNumPasses) { return S_OK; }
    virtual HRESULT GetInfo(DWORD DevInfoID, void* pDevInfoStruct, DWORD DevInfoStructSize) { return S_OK; }
    virtual HRESULT SetPaletteEntries(UINT PaletteNumber, const void* pEntries) { return S_OK; }
    virtual HRESULT GetPaletteEntries(UINT PaletteNumber, void* pEntries) { return S_OK; }
    virtual HRESULT SetCurrentTexturePalette(UINT PaletteNumber) { return S_OK; }
    virtual HRESULT GetCurrentTexturePalette(UINT* PaletteNumber) { return S_OK; }
    virtual HRESULT DrawPrimitive(DWORD PrimitiveType, UINT StartVertex, UINT PrimitiveCount) { return S_OK; }
    virtual HRESULT DrawIndexedPrimitive(DWORD PrimitiveType, UINT minIndex, UINT NumVertices, UINT startIndex, UINT primCount) { return S_OK; }
    virtual HRESULT DrawPrimitiveUP(UINT PrimitiveType, UINT PrimitiveCount, const void* pVertexStreamZeroData, UINT VertexStreamZeroStride);
    virtual HRESULT DrawIndexedPrimitiveUP(UINT PrimitiveType, UINT MinVertexIndex, UINT NumVertices, UINT PrimitiveCount, const void* pIndexData, DWORD IndexDataFormat, const void* pVertexStreamZeroData, UINT VertexStreamZeroStride);
    virtual HRESULT ProcessVertices(UINT SrcStartIndex, UINT DestIndex, UINT VertexCount, void* pDestBuffer, DWORD Flags) { return S_OK; }
    virtual HRESULT CreateVertexShader(const DWORD* pDeclaration, const DWORD* pFunction, DWORD* pHandle, DWORD Usage) { return E_FAIL; }
    virtual HRESULT SetVertexShader(DWORD Handle) { return S_OK; }
    virtual HRESULT GetVertexShader(DWORD* pHandle) { return S_OK; }
    virtual HRESULT DeleteVertexShader(DWORD Handle) { return S_OK; }
    virtual HRESULT SetVertexShaderConstant(DWORD Register, const void* pConstantData, DWORD ConstantCount) { return S_OK; }
    virtual HRESULT GetVertexShaderConstant(DWORD Register, void* pConstantData, DWORD ConstantCount) { return S_OK; }
    virtual HRESULT GetVertexShaderDeclaration(DWORD Handle, void* pData, DWORD* pSizeOfData) { return S_OK; }
    virtual HRESULT GetVertexShaderFunction(DWORD Handle, void* pData, DWORD* pSizeOfData) { return S_OK; }
    virtual HRESULT SetStreamSource(UINT StreamNumber, void* pStreamData, UINT Stride) { return S_OK; }
    virtual HRESULT GetStreamSource(UINT StreamNumber, void** ppStreamData, UINT* pStride) { return E_FAIL; }
    virtual HRESULT SetIndices(void* pIndexData, UINT BaseVertexIndex) { return S_OK; }
    virtual HRESULT GetIndices(void** ppIndexData, UINT* pBaseVertexIndex) { return E_FAIL; }
    virtual HRESULT CreatePixelShader(const DWORD* pFunction, DWORD* pHandle) { return E_FAIL; }
    virtual HRESULT SetPixelShader(DWORD Handle) { return S_OK; }
    virtual HRESULT GetPixelShader(DWORD* pHandle) { return S_OK; }
    virtual HRESULT DeletePixelShader(DWORD Handle) { return S_OK; }
    virtual HRESULT SetPixelShaderConstant(DWORD Register, const void* pConstantData, DWORD ConstantCount) { return S_OK; }
    virtual HRESULT GetPixelShaderConstant(DWORD Register, void* pConstantData, DWORD ConstantCount) { return S_OK; }
    virtual HRESULT GetPixelShaderFunction(DWORD Handle, void* pData, DWORD* pSizeOfData) { return S_OK; }
    virtual HRESULT DrawRectPatch(UINT Handle, const float* pNumSegs, const void* pRectPatchInfo) { return E_FAIL; }
    virtual HRESULT DrawTriPatch(UINT Handle, const float* pNumSegs, const void* pTriPatchInfo) { return E_FAIL; }
    virtual HRESULT DeletePatch(UINT Handle) { return S_OK; }

private:
    ULONG m_refCount;
    IDirect3DTexture8* m_currentTexture;
};