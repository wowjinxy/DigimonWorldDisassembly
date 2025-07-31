#include "d3d_capture.h"
#include "opengl_utils.h"
#include "MinHook.h"
#include <vector>
#include <mutex>

// Original CreateDevice pointer.
using PFN_CreateDevice = HRESULT (WINAPI*)(IDirect3D8*, UINT, D3DDEVTYPE, HWND, DWORD,
                                          D3DPRESENT_PARAMETERS*, IDirect3DDevice8**);
static PFN_CreateDevice s_origCreateDevice = nullptr;

// Device level hooks
using PFN_DrawIndexedPrimitive = HRESULT (WINAPI*)(IDirect3DDevice8*, D3DPRIMITIVETYPE,
                                                   UINT, UINT, UINT, UINT);
using PFN_SetStreamSource = HRESULT (WINAPI*)(IDirect3DDevice8*, UINT, IDirect3DVertexBuffer8*, UINT);
using PFN_SetIndices = HRESULT (WINAPI*)(IDirect3DDevice8*, IDirect3DIndexBuffer8*, UINT);
using PFN_SetTexture = HRESULT (WINAPI*)(IDirect3DDevice8*, DWORD, IDirect3DBaseTexture8*);
using PFN_Present = HRESULT (WINAPI*)(IDirect3DDevice8*, const RECT*, const RECT*, HWND, const RGNDATA*);

static PFN_DrawIndexedPrimitive s_origDrawIndexedPrimitive = nullptr;
static PFN_SetStreamSource      s_origSetStreamSource      = nullptr;
static PFN_SetIndices          s_origSetIndices           = nullptr;
static PFN_SetTexture          s_origSetTexture           = nullptr;
static PFN_Present             s_origPresent              = nullptr;

static IDirect3DVertexBuffer8* g_currentVB = nullptr;
static UINT                    g_stride   = 0;
static IDirect3DIndexBuffer8*  g_currentIB = nullptr;
static IDirect3DBaseTexture8*  g_currentTex = nullptr;

static HRESULT WINAPI Hook_SetStreamSource(IDirect3DDevice8* device, UINT stream,
                                           IDirect3DVertexBuffer8* vb, UINT stride) {
    if (stream == 0) {
        if (g_currentVB) g_currentVB->Release();
        g_currentVB = vb;
        g_stride    = stride;
        if (g_currentVB) g_currentVB->AddRef();
    }
    return s_origSetStreamSource(device, stream, vb, stride);
}

static HRESULT WINAPI Hook_SetIndices(IDirect3DDevice8* device, IDirect3DIndexBuffer8* ib, UINT base) {
    (void)base;
    if (g_currentIB) g_currentIB->Release();
    g_currentIB = ib;
    if (g_currentIB) g_currentIB->AddRef();
    return s_origSetIndices(device, ib, base);
}

static HRESULT WINAPI Hook_SetTexture(IDirect3DDevice8* device, DWORD stage, IDirect3DBaseTexture8* tex) {
    if (stage == 0) {
        if (g_currentTex) g_currentTex->Release();
        g_currentTex = tex;
        if (g_currentTex) g_currentTex->AddRef();
    }
    return s_origSetTexture(device, stage, tex);
}

static HRESULT WINAPI Hook_DrawIndexedPrimitive(IDirect3DDevice8* device, D3DPRIMITIVETYPE type,
                                                UINT minIndex, UINT numVertices, UINT startIndex, UINT primCount) {
    if (type == D3DPT_TRIANGLELIST && g_currentVB && g_currentIB) {
        std::vector<float> vertices(numVertices * 5);
        std::vector<uint16_t> indices(primCount * 3);

        BYTE* vdata = nullptr;
        if (SUCCEEDED(g_currentVB->Lock(minIndex * g_stride, numVertices * g_stride, &vdata, D3DLOCK_READONLY))) {
            for (UINT i = 0; i < numVertices; ++i) {
                float* src = reinterpret_cast<float*>(vdata + i * g_stride);
                vertices[i * 5 + 0] = src[0];
                vertices[i * 5 + 1] = src[1];
                vertices[i * 5 + 2] = src[2];
                vertices[i * 5 + 3] = src[3];
                vertices[i * 5 + 4] = src[4];
            }
            g_currentVB->Unlock();
        }

        BYTE* idata = nullptr;
        UINT indexCount = primCount * 3;
        if (SUCCEEDED(g_currentIB->Lock(startIndex * sizeof(uint16_t), indexCount * sizeof(uint16_t), &idata, D3DLOCK_READONLY))) {
            memcpy(indices.data(), idata, indexCount * sizeof(uint16_t));
            g_currentIB->Unlock();
        }

        std::vector<uint32_t> texture;
        UINT texW = 0, texH = 0;
        if (g_currentTex) {
            IDirect3DTexture8* tex = static_cast<IDirect3DTexture8*>(g_currentTex);
            D3DSURFACE_DESC desc;
            if (SUCCEEDED(tex->GetLevelDesc(0, &desc))) {
                texW = desc.Width;
                texH = desc.Height;
                D3DLOCKED_RECT lr;
                if (SUCCEEDED(tex->LockRect(0, &lr, nullptr, D3DLOCK_READONLY))) {
                    texture.resize(texW * texH);
                    memcpy(texture.data(), lr.pBits, texW * texH * 4);
                    tex->UnlockRect(0);
                }
            }
        }

        SubmitMesh(vertices.data(), numVertices, indices.data(), indexCount,
                   texture.empty() ? nullptr : texture.data(), texW, texH);
    }
    return s_origDrawIndexedPrimitive(device, type, minIndex, numVertices, startIndex, primCount);
}

static HRESULT WINAPI Hook_Present(IDirect3DDevice8* device, const RECT* src, const RECT* dst,
                                   HWND hwnd, const RGNDATA* dirty) {
    // Allow the original Present to run so the game continues as normal.
    return s_origPresent(device, src, dst, hwnd, dirty);
}

static HRESULT WINAPI Hook_CreateDevice(IDirect3D8* d3d, UINT adapter, D3DDEVTYPE deviceType,
                                        HWND hWnd, DWORD flags, D3DPRESENT_PARAMETERS* params,
                                        IDirect3DDevice8** outDevice) {
    HRESULT hr = s_origCreateDevice(d3d, adapter, deviceType, hWnd, flags, params, outDevice);
    if (SUCCEEDED(hr) && outDevice && *outDevice) {
        void** vtbl = *reinterpret_cast<void***>(*outDevice);
        MH_CreateHook(vtbl[71], reinterpret_cast<void*>(&Hook_DrawIndexedPrimitive),
                      reinterpret_cast<void**>(&s_origDrawIndexedPrimitive));
        MH_CreateHook(vtbl[83], reinterpret_cast<void*>(&Hook_SetStreamSource),
                      reinterpret_cast<void**>(&s_origSetStreamSource));
        MH_CreateHook(vtbl[85], reinterpret_cast<void*>(&Hook_SetIndices),
                      reinterpret_cast<void**>(&s_origSetIndices));
        MH_CreateHook(vtbl[61], reinterpret_cast<void*>(&Hook_SetTexture),
                      reinterpret_cast<void**>(&s_origSetTexture));
        MH_CreateHook(vtbl[15], reinterpret_cast<void*>(&Hook_Present),
                      reinterpret_cast<void**>(&s_origPresent));
        MH_EnableHook(vtbl[71]);
        MH_EnableHook(vtbl[83]);
        MH_EnableHook(vtbl[85]);
        MH_EnableHook(vtbl[61]);
        MH_EnableHook(vtbl[15]);
    }
    return hr;
}

void InstallD3DCreateDeviceHook(IDirect3D8* d3d) {
    if (!d3d) return;
    void** vtbl = *reinterpret_cast<void***>(d3d);
    MH_CreateHook(vtbl[16], reinterpret_cast<void*>(&Hook_CreateDevice),
                  reinterpret_cast<void**>(&s_origCreateDevice));
    MH_EnableHook(vtbl[16]);
}
