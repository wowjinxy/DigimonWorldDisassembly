// Utility for handling OpenGL rendering within the game's window and for
// transferring draw data from the Direct3D emulation layer to the
// render thread.

#include "opengl_utils.h"
#include "d3d8_gl_bridge.h"
#include <GL/gl.h>
#include <mutex>

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
    bool    g_fallbackWindowCreated = false;

    // Draw call queues.  The game thread submits into g_frameQueue.
    // PresentFrame() promotes the data into g_renderQueue which the
    // render thread consumes.
    std::mutex              g_drawMutex;
    std::vector<PendingDraw> g_frameQueue;
    std::vector<PendingDraw> g_renderQueue;

    // Clear state passed between threads.
    bool  g_clearRequested = false;
    float g_clearR = 0.f, g_clearG = 0.f, g_clearB = 0.f;

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
        glEnable(GL_TEXTURE_2D);
        
        while (g_running) {
            if (g_resizePending) {
                glViewport(0, 0, g_width, g_height);
                g_resizePending = false;
            }

            std::vector<PendingDraw> localQueue;
            bool doClear = false; 
            float cr = 0, cg = 0, cb = 0;
            
            {
                std::lock_guard<std::mutex> lock(g_drawMutex);
                localQueue = std::move(g_renderQueue);
                g_renderQueue.clear();
                doClear = g_clearRequested;
                cr = g_clearR; cg = g_clearG; cb = g_clearB;
                g_clearRequested = false;
            }

            if (doClear) {
                glClearColor(cr, cg, cb, 1.0f);
                glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
            }

            for (auto& draw : localQueue) {
                if (draw.texture) {
                    draw.texture->Upload();
                    glBindTexture(GL_TEXTURE_2D, draw.texture->GetGLTexture());
                } else {
                    glBindTexture(GL_TEXTURE_2D, 0);
                }

                glBegin(draw.mode);
                if (!draw.indices.empty()) {
                    for (auto idx : draw.indices) {
                        if (idx * 5 + 4 < draw.vertices.size()) {
                            const float* v = &draw.vertices[idx * 5];
                            glTexCoord2f(v[3], v[4]);
                            glVertex3f(v[0], v[1], v[2]);
                        }
                    }
                } else {
                    size_t vcount = draw.vertices.size() / 5;
                    for (size_t i = 0; i < vcount; ++i) {
                        const float* v = &draw.vertices[i * 5];
                        glTexCoord2f(v[3], v[4]);
                        glVertex3f(v[0], v[1], v[2]);
                    }
                }
                glEnd();
            }

            if (g_hDCGL) {
                SwapBuffers(g_hDCGL);
            }
            Sleep(1);
        }
        wglMakeCurrent(nullptr, nullptr);
        return 0;
    }
}

bool InitOpenGL() {
    if (g_OpenGLWindowCreated) {
        return true;
    }

    // Try to locate the game's window first.  It may not be ready when
    // the device is created, so wait a bit and retry.
    const int kMaxRetries = 50;
    for (int i = 0; i < kMaxRetries && !g_hWndGL; ++i) {
        g_hWndGL = FindGameWindow();
        if (!g_hWndGL) {
            Sleep(100);
        }
    }

    // If the window still isn't available, create a tiny hidden fallback
    // window so OpenGL can be initialised and the device creation can
    // succeed.  This ensures we only fail for genuine initialisation
    // errors and not simply because the real window wasn't ready.
    if (!g_hWndGL) {
        WNDCLASSA wc = {};
        wc.lpfnWndProc   = DefWindowProcA;
        wc.hInstance     = GetModuleHandle(nullptr);
        wc.lpszClassName = "DWGLFallback";
        RegisterClassA(&wc);
        g_hWndGL = CreateWindowExA(0, wc.lpszClassName, "DWGL", WS_OVERLAPPEDWINDOW,
                                   CW_USEDEFAULT, CW_USEDEFAULT, 1, 1,
                                   nullptr, nullptr, wc.hInstance, nullptr);
        if (!g_hWndGL) {
            return false;
        }
        g_fallbackWindowCreated = true;
        ShowWindow(g_hWndGL, SW_HIDE);
    }

    g_hDCGL = GetDC(g_hWndGL);
    if (!g_hDCGL) {
        if (g_fallbackWindowCreated) {
            DestroyWindow(g_hWndGL);
            g_fallbackWindowCreated = false;
        }
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
        g_hDCGL = nullptr;
        if (g_fallbackWindowCreated) {
            DestroyWindow(g_hWndGL);
            g_fallbackWindowCreated = false;
        }
        g_hWndGL = nullptr;
        return false;
    }
    
    if (!SetPixelFormat(g_hDCGL, pf, &pfd)) {
        ReleaseDC(g_hWndGL, g_hDCGL);
        g_hDCGL = nullptr;
        if (g_fallbackWindowCreated) {
            DestroyWindow(g_hWndGL);
            g_fallbackWindowCreated = false;
        }
        g_hWndGL = nullptr;
        return false;
    }

    g_hGLRC = wglCreateContext(g_hDCGL);
    if (!g_hGLRC) {
        ReleaseDC(g_hWndGL, g_hDCGL);
        g_hDCGL = nullptr;
        if (g_fallbackWindowCreated) {
            DestroyWindow(g_hWndGL);
            g_fallbackWindowCreated = false;
        }
        g_hWndGL = nullptr;
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
        g_hGLRC = nullptr;
        ReleaseDC(g_hWndGL, g_hDCGL);
        g_hDCGL = nullptr;
        SetWindowLongPtrA(g_hWndGL, GWLP_WNDPROC, (LONG_PTR)g_originalWndProc);
        g_originalWndProc = nullptr;
        if (g_fallbackWindowCreated) {
            DestroyWindow(g_hWndGL);
            g_fallbackWindowCreated = false;
        }
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

    if (g_fallbackWindowCreated && g_hWndGL) {
        DestroyWindow(g_hWndGL);
        g_fallbackWindowCreated = false;
    }

    g_hWndGL              = nullptr;
    g_OpenGLWindowCreated = false;
}

void SubmitDrawCall(PendingDraw&& draw) {
    std::lock_guard<std::mutex> lock(g_drawMutex);
    g_frameQueue.push_back(std::move(draw));
}

void EnqueueClear(float r, float g, float b) {
    std::lock_guard<std::mutex> lock(g_drawMutex);
    g_clearRequested = true;
    g_clearR = r; g_clearG = g; g_clearB = b;
}

void PresentFrame() {
    std::lock_guard<std::mutex> lock(g_drawMutex);
    g_renderQueue = std::move(g_frameQueue);
    g_frameQueue.clear();
}