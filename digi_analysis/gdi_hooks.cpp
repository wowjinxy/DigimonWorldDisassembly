// Copyright (c) 2025
//
// Hook implementations for selected GDI32 functions.  The Digimon
// World PC port uses GDI calls for 2D UI and text rendering.  To
// facilitate porting the renderer to OpenGL we intercept these calls
// and, where appropriate, replace the original behaviour.  For text
// drawing the detours capture glyph bitmaps and render textured quads
// using OpenGL, bypassing GDI entirely.

#include <windows.h>
#include "MinHook.h"
#include <cstdio>
#include <vector>
#include <GL/gl.h>

// Forward declarations of the original functions.  We store these in
// static variables so that the detours can call through after doing
// their own work.  Each typedef matches the signature of the
// corresponding GDI function.  See MSDN for details.

typedef HDC   (WINAPI* PFN_CreateCompatibleDC)(HDC);
typedef HBITMAP (WINAPI* PFN_CreateDIBSection)(HDC, const BITMAPINFO*, UINT, void**, HANDLE, DWORD);
typedef HFONT (WINAPI* PFN_CreateFontA)(int, int, int, int, int, DWORD, DWORD, DWORD, DWORD, DWORD, DWORD, DWORD, DWORD, LPCSTR);
typedef BOOL  (WINAPI* PFN_DeleteObject)(HGDIOBJ);
typedef HFONT (WINAPI* PFN_CreateFontIndirectA)(const LOGFONTA*);
typedef BOOL  (WINAPI* PFN_DeleteDC)(HDC);
typedef HGDIOBJ (WINAPI* PFN_SelectObject)(HDC, HGDIOBJ);
typedef COLORREF (WINAPI* PFN_SetBkColor)(HDC, COLORREF);
typedef int   (WINAPI* PFN_SetBkMode)(HDC, int);
typedef int   (WINAPI* PFN_GetObjectA)(HGDIOBJ, int, LPVOID);
typedef BOOL  (WINAPI* PFN_GetTextExtentPoint32A)(HDC, LPCSTR, int, LPSIZE);
typedef BOOL  (WINAPI* PFN_GetTextMetricsA)(HDC, LPTEXTMETRICA);
typedef COLORREF (WINAPI* PFN_SetTextColor)(HDC, COLORREF);
typedef BOOL (WINAPI* PFN_TextOutA)(HDC, int, int, LPCSTR, int);

// Static storage for the original function pointers.  These are
// initialised in InstallGDIHooks().
static PFN_CreateCompatibleDC        orig_CreateCompatibleDC        = nullptr;
static PFN_CreateDIBSection          orig_CreateDIBSection          = nullptr;
static PFN_CreateFontA               orig_CreateFontA               = nullptr;
static PFN_DeleteObject              orig_DeleteObject              = nullptr;
static PFN_CreateFontIndirectA       orig_CreateFontIndirectA       = nullptr;
static PFN_DeleteDC                  orig_DeleteDC                  = nullptr;
static PFN_SelectObject              orig_SelectObject              = nullptr;
static PFN_SetBkColor                orig_SetBkColor                = nullptr;
static PFN_SetBkMode                 orig_SetBkMode                 = nullptr;
static PFN_GetObjectA                orig_GetObjectA                = nullptr;
static PFN_GetTextExtentPoint32A     orig_GetTextExtentPoint32A     = nullptr;
static PFN_GetTextMetricsA           orig_GetTextMetricsA           = nullptr;
static PFN_SetTextColor              orig_SetTextColor              = nullptr;
static PFN_TextOutA                  orig_TextOutA                  = nullptr;

// Helper to log a message to the debugger.  This avoids duplicating
// the OutputDebugStringA call in every detour.
static void LogCall(const char* funcName) {
    char buf[128];
    std::snprintf(buf, sizeof(buf), "[GDI hook] %s called\n", funcName);
    OutputDebugStringA(buf);
}

// Detour implementations.  Each detour logs its invocation and then
// calls the original function.  Replace the call to the original
// function with your own implementation once the OpenGL renderer is
// ready.  Do not forget to preserve all arguments and return the
// appropriate value.

static HDC WINAPI Detour_CreateCompatibleDC(HDC hdc) {
    LogCall("CreateCompatibleDC");
    return orig_CreateCompatibleDC ? orig_CreateCompatibleDC(hdc) : nullptr;
}

static HBITMAP WINAPI Detour_CreateDIBSection(HDC hdc, const BITMAPINFO* pbmi, UINT usage,
                                              void** ppvBits, HANDLE hSection, DWORD offset) {
    LogCall("CreateDIBSection");
    return orig_CreateDIBSection ? orig_CreateDIBSection(hdc, pbmi, usage, ppvBits, hSection, offset) : nullptr;
}

static HFONT WINAPI Detour_CreateFontA(int cHeight, int cWidth, int cEscapement, int cOrientation,
                                       int cWeight, DWORD bItalic, DWORD bUnderline, DWORD bStrikeOut,
                                       DWORD iCharSet, DWORD iOutPrecision, DWORD iClipPrecision,
                                       DWORD iQuality, DWORD iPitchAndFamily, LPCSTR pszFaceName) {
    LogCall("CreateFontA");
    return orig_CreateFontA ? orig_CreateFontA(cHeight, cWidth, cEscapement, cOrientation,
                                              cWeight, bItalic, bUnderline, bStrikeOut,
                                              iCharSet, iOutPrecision, iClipPrecision,
                                              iQuality, iPitchAndFamily, pszFaceName) : nullptr;
}

static BOOL WINAPI Detour_DeleteObject(HGDIOBJ obj) {
    LogCall("DeleteObject");
    return orig_DeleteObject ? orig_DeleteObject(obj) : FALSE;
}

static HFONT WINAPI Detour_CreateFontIndirectA(const LOGFONTA* plf) {
    LogCall("CreateFontIndirectA");
    return orig_CreateFontIndirectA ? orig_CreateFontIndirectA(plf) : nullptr;
}

static BOOL WINAPI Detour_DeleteDC(HDC hdc) {
    LogCall("DeleteDC");
    return orig_DeleteDC ? orig_DeleteDC(hdc) : FALSE;
}

static HGDIOBJ WINAPI Detour_SelectObject(HDC hdc, HGDIOBJ hgdiobj) {
    LogCall("SelectObject");
    return orig_SelectObject ? orig_SelectObject(hdc, hgdiobj) : nullptr;
}

static COLORREF WINAPI Detour_SetBkColor(HDC hdc, COLORREF color) {
    LogCall("SetBkColor");
    return orig_SetBkColor ? orig_SetBkColor(hdc, color) : 0;
}

static int WINAPI Detour_SetBkMode(HDC hdc, int mode) {
    LogCall("SetBkMode");
    return orig_SetBkMode ? orig_SetBkMode(hdc, mode) : 0;
}

static int WINAPI Detour_GetObjectA(HGDIOBJ obj, int cbBuffer, LPVOID pvBuffer) {
    LogCall("GetObjectA");
    return orig_GetObjectA ? orig_GetObjectA(obj, cbBuffer, pvBuffer) : 0;
}

static BOOL WINAPI Detour_GetTextExtentPoint32A(HDC hdc, LPCSTR lpString, int cbString, LPSIZE lpSize) {
    LogCall("GetTextExtentPoint32A");
    return orig_GetTextExtentPoint32A ? orig_GetTextExtentPoint32A(hdc, lpString, cbString, lpSize) : FALSE;
}

static BOOL WINAPI Detour_GetTextMetricsA(HDC hdc, LPTEXTMETRICA lptm) {
    LogCall("GetTextMetricsA");
    return orig_GetTextMetricsA ? orig_GetTextMetricsA(hdc, lptm) : FALSE;
}

static COLORREF WINAPI Detour_SetTextColor(HDC hdc, COLORREF color) {
    LogCall("SetTextColor");
    return orig_SetTextColor ? orig_SetTextColor(hdc, color) : 0;
}

static BOOL WINAPI Detour_TextOutA(HDC hdc, int x, int y, LPCSTR lpString, int c) {
    LogCall("TextOutA");
    MAT2 mat = { {0,1}, {0,0}, {0,0}, {0,1} };
    int penX = x;
    for (int i = 0; i < c; ++i) {
        GLYPHMETRICS gm;
        DWORD size = GetGlyphOutlineA(hdc, static_cast<UINT>(lpString[i]), GGO_BITMAP, &gm, 0, nullptr, &mat);
        if (size == GDI_ERROR || size == 0) {
            continue;
        }
        std::vector<BYTE> buffer(size);
        if (GetGlyphOutlineA(hdc, static_cast<UINT>(lpString[i]), GGO_BITMAP, &gm, size, buffer.data(), &mat) == GDI_ERROR) {
            continue;
        }
        GLuint tex;
        glGenTextures(1, &tex);
        glBindTexture(GL_TEXTURE_2D, tex);
        glTexImage2D(GL_TEXTURE_2D, 0, GL_ALPHA, gm.gmBlackBoxX, gm.gmBlackBoxY, 0,
                     GL_ALPHA, GL_UNSIGNED_BYTE, buffer.data());
        glBegin(GL_QUADS);
        glTexCoord2f(0.f, 0.f); glVertex2i(penX, y);
        glTexCoord2f(1.f, 0.f); glVertex2i(penX + gm.gmBlackBoxX, y);
        glTexCoord2f(1.f, 1.f); glVertex2i(penX + gm.gmBlackBoxX, y + gm.gmBlackBoxY);
        glTexCoord2f(0.f, 1.f); glVertex2i(penX, y + gm.gmBlackBoxY);
        glEnd();
        glDeleteTextures(1, &tex);
        penX += gm.gmCellIncX;
    }
    return TRUE;
}

// Install hooks for all the GDI functions listed above.  This routine
// retrieves the address of each target from GDI32.dll and uses
// MinHook to create a detour.  Hooks are enabled after creation via
// MH_EnableHook(MH_ALL_HOOKS) in InstallHooks().
void InstallGDIHooks() {
    HMODULE gdi = GetModuleHandleA("GDI32.dll");
    if (!gdi) {
        return;
    }
    // For each function, call MH_CreateHook and pass the address of the
    // detour and a pointer to store the original.  If a hook fails we
    // simply skip it; MinHook will return an error code which we ignore
    // here for brevity.
    MH_CreateHook(reinterpret_cast<void*>(GetProcAddress(gdi, "CreateCompatibleDC")),
                  reinterpret_cast<void*>(&Detour_CreateCompatibleDC),
                  reinterpret_cast<void**>(&orig_CreateCompatibleDC));
    MH_CreateHook(reinterpret_cast<void*>(GetProcAddress(gdi, "CreateDIBSection")),
                  reinterpret_cast<void*>(&Detour_CreateDIBSection),
                  reinterpret_cast<void**>(&orig_CreateDIBSection));
    MH_CreateHook(reinterpret_cast<void*>(GetProcAddress(gdi, "CreateFontA")),
                  reinterpret_cast<void*>(&Detour_CreateFontA),
                  reinterpret_cast<void**>(&orig_CreateFontA));
    MH_CreateHook(reinterpret_cast<void*>(GetProcAddress(gdi, "DeleteObject")),
                  reinterpret_cast<void*>(&Detour_DeleteObject),
                  reinterpret_cast<void**>(&orig_DeleteObject));
    MH_CreateHook(reinterpret_cast<void*>(GetProcAddress(gdi, "CreateFontIndirectA")),
                  reinterpret_cast<void*>(&Detour_CreateFontIndirectA),
                  reinterpret_cast<void**>(&orig_CreateFontIndirectA));
    MH_CreateHook(reinterpret_cast<void*>(GetProcAddress(gdi, "DeleteDC")),
                  reinterpret_cast<void*>(&Detour_DeleteDC),
                  reinterpret_cast<void**>(&orig_DeleteDC));
    MH_CreateHook(reinterpret_cast<void*>(GetProcAddress(gdi, "SelectObject")),
                  reinterpret_cast<void*>(&Detour_SelectObject),
                  reinterpret_cast<void**>(&orig_SelectObject));
    MH_CreateHook(reinterpret_cast<void*>(GetProcAddress(gdi, "SetBkColor")),
                  reinterpret_cast<void*>(&Detour_SetBkColor),
                  reinterpret_cast<void**>(&orig_SetBkColor));
    MH_CreateHook(reinterpret_cast<void*>(GetProcAddress(gdi, "SetBkMode")),
                  reinterpret_cast<void*>(&Detour_SetBkMode),
                  reinterpret_cast<void**>(&orig_SetBkMode));
    MH_CreateHook(reinterpret_cast<void*>(GetProcAddress(gdi, "GetObjectA")),
                  reinterpret_cast<void*>(&Detour_GetObjectA),
                  reinterpret_cast<void**>(&orig_GetObjectA));
    MH_CreateHook(reinterpret_cast<void*>(GetProcAddress(gdi, "GetTextExtentPoint32A")),
                  reinterpret_cast<void*>(&Detour_GetTextExtentPoint32A),
                  reinterpret_cast<void**>(&orig_GetTextExtentPoint32A));
    MH_CreateHook(reinterpret_cast<void*>(GetProcAddress(gdi, "GetTextMetricsA")),
                  reinterpret_cast<void*>(&Detour_GetTextMetricsA),
                  reinterpret_cast<void**>(&orig_GetTextMetricsA));
    MH_CreateHook(reinterpret_cast<void*>(GetProcAddress(gdi, "SetTextColor")),
                  reinterpret_cast<void*>(&Detour_SetTextColor),
                  reinterpret_cast<void**>(&orig_SetTextColor));
    MH_CreateHook(reinterpret_cast<void*>(GetProcAddress(gdi, "TextOutA")),
                  reinterpret_cast<void*>(&Detour_TextOutA),
                  reinterpret_cast<void**>(&orig_TextOutA));
}