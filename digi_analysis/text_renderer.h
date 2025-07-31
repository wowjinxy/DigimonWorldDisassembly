#pragma once
#include <windows.h>
#include <unordered_map>
#include "d3d8_gl_bridge.h"
#include "opengl_utils.h"

struct GlyphInfo {
    IDirect3DTexture8* texture;
    int width;
    int height;
    int advance;
    int bearingX;
    int bearingY;
};

class TextRenderer {
public:
    static void DrawTextA(HDC hdc, HFONT font, int x, int y, const char* text, int count, COLORREF color);
    static void DrawTextW(HDC hdc, HFONT font, int x, int y, const wchar_t* text, int count, COLORREF color);
private:
    struct GlyphKey {
        HFONT    font;
        UINT     code;
        COLORREF color;
        bool operator==(const GlyphKey& other) const {
            return font == other.font && code == other.code && color == other.color;
        }
    };
    struct GlyphKeyHash {
        size_t operator()(const GlyphKey& k) const {
            return reinterpret_cast<size_t>(k.font) ^ (static_cast<size_t>(k.code) << 1) ^ (static_cast<size_t>(k.color) << 2);
        }
    };
    static GlyphInfo* GetGlyphA(HDC hdc, HFONT font, UINT ch, COLORREF color);
    static GlyphInfo* GetGlyphW(HDC hdc, HFONT font, UINT ch, COLORREF color);
    static std::unordered_map<GlyphKey, GlyphInfo, GlyphKeyHash> s_glyphCache;
};
