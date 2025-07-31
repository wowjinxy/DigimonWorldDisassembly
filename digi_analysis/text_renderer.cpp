#include "text_renderer.h"
#include <vector>

std::unordered_map<TextRenderer::GlyphKey, GlyphInfo, TextRenderer::GlyphKeyHash> TextRenderer::s_glyphCache;

static void BuildDraw(int x, int y, const GlyphInfo& info) {
    PendingDraw draw;
    draw.mode = GL_TRIANGLE_STRIP;
    draw.texture = info.texture;
    float x0 = static_cast<float>(x + info.bearingX);
    float y0 = static_cast<float>(y);
    float x1 = x0 + static_cast<float>(info.width);
    float y1 = y0 + static_cast<float>(info.height);
    draw.vertices = {
        x0, y0, 0.f, 0.f, 0.f,
        x1, y0, 0.f, 1.f, 0.f,
        x0, y1, 0.f, 0.f, 1.f,
        x1, y1, 0.f, 1.f, 1.f,
    };
    SubmitDrawCall(std::move(draw));
}

GlyphInfo* TextRenderer::GetGlyphA(HDC hdc, HFONT font, UINT ch, COLORREF color) {
    GlyphKey key{font, ch, color};
    auto it = s_glyphCache.find(key);
    if (it != s_glyphCache.end()) {
        return &it->second;
    }
    if (font) {
        SelectObject(hdc, font);
    }
    MAT2 mat = {{0,1},{0,0},{0,0},{0,1}};
    GLYPHMETRICS gm;
    DWORD size = GetGlyphOutlineA(hdc, ch, GGO_GRAY8_BITMAP, &gm, 0, nullptr, &mat);
    if (size == GDI_ERROR || size == 0) {
        return nullptr;
    }
    std::vector<BYTE> buffer(size);
    if (GetGlyphOutlineA(hdc, ch, GGO_GRAY8_BITMAP, &gm, size, buffer.data(), &mat) == GDI_ERROR) {
        return nullptr;
    }
    UINT width = gm.gmBlackBoxX;
    UINT height = gm.gmBlackBoxY;
    int pitch = ((width + 3) & ~3);
    std::vector<unsigned char> pixels(width * height * 4);
    BYTE r = GetRValue(color);
    BYTE g = GetGValue(color);
    BYTE b = GetBValue(color);
    for (UINT y = 0; y < height; ++y) {
        for (UINT x = 0; x < width; ++x) {
            BYTE a = buffer[y * pitch + x];
            size_t idx = (y * width + x) * 4;
            pixels[idx + 0] = r;
            pixels[idx + 1] = g;
            pixels[idx + 2] = b;
            pixels[idx + 3] = a;
        }
    }
    GlyphInfo info{};
    info.width = width;
    info.height = height;
    info.advance = gm.gmCellIncX;
    info.bearingX = gm.gmptGlyphOrigin.x;
    info.bearingY = gm.gmptGlyphOrigin.y;
    info.texture = new IDirect3DTexture8(width, height);
    info.texture->UpdateData(pixels.data(), pixels.size());
    auto res = s_glyphCache.emplace(key, info);
    return &res.first->second;
}

GlyphInfo* TextRenderer::GetGlyphW(HDC hdc, HFONT font, UINT ch, COLORREF color) {
    GlyphKey key{font, ch, color};
    auto it = s_glyphCache.find(key);
    if (it != s_glyphCache.end()) {
        return &it->second;
    }
    if (font) {
        SelectObject(hdc, font);
    }
    MAT2 mat = {{0,1},{0,0},{0,0},{0,1}};
    GLYPHMETRICS gm;
    DWORD size = GetGlyphOutlineW(hdc, ch, GGO_GRAY8_BITMAP, &gm, 0, nullptr, &mat);
    if (size == GDI_ERROR || size == 0) {
        return nullptr;
    }
    std::vector<BYTE> buffer(size);
    if (GetGlyphOutlineW(hdc, ch, GGO_GRAY8_BITMAP, &gm, size, buffer.data(), &mat) == GDI_ERROR) {
        return nullptr;
    }
    UINT width = gm.gmBlackBoxX;
    UINT height = gm.gmBlackBoxY;
    int pitch = ((width + 3) & ~3);
    std::vector<unsigned char> pixels(width * height * 4);
    BYTE r = GetRValue(color);
    BYTE g = GetGValue(color);
    BYTE b = GetBValue(color);
    for (UINT y = 0; y < height; ++y) {
        for (UINT x = 0; x < width; ++x) {
            BYTE a = buffer[y * pitch + x];
            size_t idx = (y * width + x) * 4;
            pixels[idx + 0] = r;
            pixels[idx + 1] = g;
            pixels[idx + 2] = b;
            pixels[idx + 3] = a;
        }
    }
    GlyphInfo info{};
    info.width = width;
    info.height = height;
    info.advance = gm.gmCellIncX;
    info.bearingX = gm.gmptGlyphOrigin.x;
    info.bearingY = gm.gmptGlyphOrigin.y;
    info.texture = new IDirect3DTexture8(width, height);
    info.texture->UpdateData(pixels.data(), pixels.size());
    auto res = s_glyphCache.emplace(key, info);
    return &res.first->second;
}

void TextRenderer::DrawTextA(HDC hdc, HFONT font, int x, int y, const char* text, int count, COLORREF color) {
    int penX = x;
    for (int i = 0; i < count; ++i) {
        GlyphInfo* g = GetGlyphA(hdc, font, static_cast<unsigned char>(text[i]), color);
        if (!g) continue;
        BuildDraw(penX, y, *g);
        penX += g->advance;
    }
}

void TextRenderer::DrawTextW(HDC hdc, HFONT font, int x, int y, const wchar_t* text, int count, COLORREF color) {
    int penX = x;
    for (int i = 0; i < count; ++i) {
        GlyphInfo* g = GetGlyphW(hdc, font, static_cast<UINT>(text[i]), color);
        if (!g) continue;
        BuildDraw(penX, y, *g);
        penX += g->advance;
    }
}
