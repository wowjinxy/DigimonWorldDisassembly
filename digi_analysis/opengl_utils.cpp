// Utility for handling OpenGL rendering within the game's window.

#include "opengl_utils.h"
#include <GL/gl.h>

namespace {
    bool    g_OpenGLWindowCreated = false;
    HWND    g_hWndGL              = nullptr;
    WNDPROC g_originalWndProc     = nullptr;
    HGLRC   g_hGLRC               = nullptr;
    HDC     g_hDCGL               = nullptr;
    HANDLE  g_renderThread        = nullptr;
    bool    g_running             = false;
    int     g_width               = 0;
    int     g_height              = 0;
    bool    g_resizePending       = false;

    BOOL CALLBACK EnumWindowsProc(HWND hwnd, LPARAM lParam) {
        DWORD pid = 0;
        GetWindowThreadProcessId(hwnd, &pid);
        if (pid == GetCurrentProcessId() && GetWindow(hwnd, GW_OWNER) == nullptr) {
            *reinterpret_cast<HWND*>(lParam) = hwnd;
            return FALSE; // stop enumeration
        }
        return TRUE;
    }

    HWND FindGameWindow() {
        HWND hwnd = nullptr;
        EnumWindows(EnumWindowsProc, reinterpret_cast<LPARAM>(&hwnd));
        return hwnd;
    }

    LRESULT CALLBACK HookWndProc(HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam) {
        switch (msg) {
            case WM_SIZE:
                g_width         = LOWORD(lParam);
                g_height        = HIWORD(lParam);
                g_resizePending = true;
                break;
            case WM_CLOSE:
                g_running = false;
                break;
        }
        return CallWindowProcA(g_originalWndProc, hwnd, msg, wParam, lParam);
    }

    DWORD WINAPI RenderThread(LPVOID) {
        wglMakeCurrent(g_hDCGL, g_hGLRC);
        typedef void (APIENTRY* PFNGLCLEARCOLORPROC)(float, float, float, float);
        typedef void (APIENTRY* PFNGLCLEARPROC)(unsigned int);
        typedef void (APIENTRY* PFNGLVIEWPORTPROC)(int, int, int, int);
        PFNGLCLEARCOLORPROC pglClearColor = (PFNGLCLEARCOLORPROC)wglGetProcAddress("glClearColor");
        PFNGLCLEARPROC      pglClear      = (PFNGLCLEARPROC)wglGetProcAddress("glClear");
        PFNGLVIEWPORTPROC   pglViewport   = (PFNGLVIEWPORTPROC)wglGetProcAddress("glViewport");
        while (g_running) {
            if (g_resizePending && pglViewport) {
                pglViewport(0, 0, g_width, g_height);
                g_resizePending = false;
            }
            if (pglClearColor && pglClear) {
                pglClearColor(0.1f, 0.2f, 0.3f, 1.0f);
                pglClear(GL_COLOR_BUFFER_BIT);
            }
            SwapBuffers(g_hDCGL);
            Sleep(16);
        }
        wglMakeCurrent(nullptr, nullptr);
        return 0;
    }
}

bool InitOpenGL() {
    if (g_OpenGLWindowCreated) {
        return true;
    }

    g_hWndGL = FindGameWindow();
    if (!g_hWndGL) {
        return false;
    }

    g_hDCGL = GetDC(g_hWndGL);
    if (!g_hDCGL) {
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
        g_hWndGL = nullptr;
        g_hDCGL = nullptr;
        return false;
    }
    if (!SetPixelFormat(g_hDCGL, pf, &pfd)) {
        ReleaseDC(g_hWndGL, g_hDCGL);
        g_hWndGL = nullptr;
        g_hDCGL = nullptr;
        return false;
    }

    g_hGLRC = wglCreateContext(g_hDCGL);
    if (!g_hGLRC) {
        ReleaseDC(g_hWndGL, g_hDCGL);
        g_hWndGL = nullptr;
        g_hDCGL = nullptr;
        return false;
    }

    RECT rc;
    GetClientRect(g_hWndGL, &rc);
    g_width         = rc.right - rc.left;
    g_height        = rc.bottom - rc.top;
    g_resizePending = true;

    g_originalWndProc = (WNDPROC)SetWindowLongPtrA(g_hWndGL, GWLP_WNDPROC, (LONG_PTR)HookWndProc);

    g_running      = true;
    g_renderThread = CreateThread(nullptr, 0, RenderThread, nullptr, 0, nullptr);
    if (!g_renderThread) {
        g_running = false;
        wglDeleteContext(g_hGLRC);
        ReleaseDC(g_hWndGL, g_hDCGL);
        SetWindowLongPtrA(g_hWndGL, GWLP_WNDPROC, (LONG_PTR)g_originalWndProc);
        g_originalWndProc = nullptr;
        g_hGLRC = nullptr;
        g_hDCGL = nullptr;
        g_hWndGL = nullptr;
        return false;
    }

    g_OpenGLWindowCreated = true;
    return true;
}

void ShutdownOpenGL() {
    if (!g_OpenGLWindowCreated) {
        return;
    }

    g_running = false;
    if (g_renderThread) {
        WaitForSingleObject(g_renderThread, INFINITE);
        CloseHandle(g_renderThread);
        g_renderThread = nullptr;
    }

    if (g_originalWndProc && g_hWndGL) {
        SetWindowLongPtrA(g_hWndGL, GWLP_WNDPROC, (LONG_PTR)g_originalWndProc);
        g_originalWndProc = nullptr;
    }

    if (g_hGLRC) {
        wglDeleteContext(g_hGLRC);
        g_hGLRC = nullptr;
    }
    if (g_hDCGL && g_hWndGL) {
        ReleaseDC(g_hWndGL, g_hDCGL);
        g_hDCGL = nullptr;
    }

    g_hWndGL              = nullptr;
    g_OpenGLWindowCreated = false;
}
