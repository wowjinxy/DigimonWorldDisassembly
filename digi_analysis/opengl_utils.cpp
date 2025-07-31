#include "opengl_utils.h"
#include <GL/gl.h>

namespace {
    bool g_OpenGLWindowCreated = false;
    HWND g_hWndGL = nullptr;
    HGLRC g_hGLRC = nullptr;
    HDC  g_hDCGL = nullptr;
}

bool InitOpenGL() {
    if (g_OpenGLWindowCreated) {
        return true;
    }
    WNDCLASSA wc = {};
    wc.style         = CS_OWNDC;
    wc.lpfnWndProc   = DefWindowProcA;
    wc.hInstance     = GetModuleHandleA(nullptr);
    wc.lpszClassName = "DWOpenGLWindow";
    if (!RegisterClassA(&wc)) {
        // ignore errors; class may already exist
    }
    g_hWndGL = CreateWindowExA(0, wc.lpszClassName, "Digimon OpenGL Renderer", WS_OVERLAPPEDWINDOW,
                               CW_USEDEFAULT, CW_USEDEFAULT, 640, 480,
                               nullptr, nullptr, wc.hInstance, nullptr);
    if (!g_hWndGL) {
        return false;
    }
    g_hDCGL = GetDC(g_hWndGL);
    if (!g_hDCGL) {
        DestroyWindow(g_hWndGL);
        g_hWndGL = nullptr;
        return false;
    }
    PIXELFORMATDESCRIPTOR pfd = {};
    pfd.nSize        = sizeof(pfd);
    pfd.nVersion     = 1;
    pfd.dwFlags      = PFD_DRAW_TO_WINDOW | PFD_SUPPORT_OPENGL | PFD_DOUBLEBUFFER;
    pfd.iPixelType   = PFD_TYPE_RGBA;
    pfd.cColorBits   = 32;
    pfd.cDepthBits   = 24;
    pfd.cStencilBits = 8;
    pfd.iLayerType   = PFD_MAIN_PLANE;
    int pf = ChoosePixelFormat(g_hDCGL, &pfd);
    if (pf == 0) {
        ReleaseDC(g_hWndGL, g_hDCGL);
        DestroyWindow(g_hWndGL);
        g_hWndGL = nullptr;
        g_hDCGL = nullptr;
        return false;
    }
    if (!SetPixelFormat(g_hDCGL, pf, &pfd)) {
        ReleaseDC(g_hWndGL, g_hDCGL);
        DestroyWindow(g_hWndGL);
        g_hWndGL = nullptr;
        g_hDCGL = nullptr;
        return false;
    }
    g_hGLRC = wglCreateContext(g_hDCGL);
    if (!g_hGLRC) {
        ReleaseDC(g_hWndGL, g_hDCGL);
        DestroyWindow(g_hWndGL);
        g_hWndGL = nullptr;
        g_hDCGL = nullptr;
        return false;
    }
    if (!wglMakeCurrent(g_hDCGL, g_hGLRC)) {
        wglDeleteContext(g_hGLRC);
        ReleaseDC(g_hWndGL, g_hDCGL);
        DestroyWindow(g_hWndGL);
        g_hWndGL = nullptr;
        g_hDCGL = nullptr;
        g_hGLRC = nullptr;
        return false;
    }
    ShowWindow(g_hWndGL, SW_SHOW);
    typedef void (APIENTRY* PFNGLCLEARCOLORPROC)(float, float, float, float);
    typedef void (APIENTRY* PFNGLCLEARPROC)(unsigned int);
    PFNGLCLEARCOLORPROC pglClearColor = (PFNGLCLEARCOLORPROC)wglGetProcAddress("glClearColor");
    PFNGLCLEARPROC      pglClear      = (PFNGLCLEARPROC)wglGetProcAddress("glClear");
    if (pglClearColor && pglClear) {
        pglClearColor(0.1f, 0.2f, 0.3f, 1.0f);
        pglClear(GL_COLOR_BUFFER_BIT);
        SwapBuffers(g_hDCGL);
    }
    g_OpenGLWindowCreated = true;
    return true;
}
