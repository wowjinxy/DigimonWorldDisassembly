// Utility for handling OpenGL rendering within the game's window and for
// transferring draw data from the Direct3D emulation layer to the
// render thread.

#include "opengl_utils.h"
#include "d3d8_gl_bridge.h"
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
        typedef void (APIENTRY* PFNGLVIEWPORTPROC)(int, int, int, int);
        PFNGLVIEWPORTPROC pglViewport = (PFNGLVIEWPORTPROC)wglGetProcAddress("glViewport");
        while (g_running) {
            if (g_resizePending && pglViewport) {
                pglViewport(0, 0, g_width, g_height);
                g_resizePending = false;
            }

            std::vector<PendingDraw> localQueue;
            bool doClear = false; float cr = 0, cg = 0, cb = 0;
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

                // Apply render state
                if (draw.state.alphaBlend)
                    glEnable(GL_BLEND);
                else
                    glDisable(GL_BLEND);
                if (draw.state.depthTest)
                    glEnable(GL_DEPTH_TEST);
                else
                    glDisable(GL_DEPTH_TEST);

                // Apply transforms
                glMatrixMode(GL_PROJECTION);
                glLoadMatrixf(draw.projection);
                glMatrixMode(GL_MODELVIEW);
                glLoadMatrixf(draw.view);
                glMultMatrixf(draw.world);

                if (draw.vertexBuffer) {
                    draw.vertexBuffer->Upload();
                    glBindBuffer(GL_ARRAY_BUFFER, draw.vertexBuffer->GetGLBuffer());
                    glEnableClientState(GL_VERTEX_ARRAY);
                    glEnableClientState(GL_TEXTURE_COORD_ARRAY);
                    glVertexPointer(3, GL_FLOAT, draw.stride,
                                    (void*)(static_cast<size_t>(draw.startVertex) * draw.stride));
                    glTexCoordPointer(2, GL_FLOAT, draw.stride,
                                      (void*)(static_cast<size_t>(draw.startVertex) * draw.stride + 3 * sizeof(float)));
                    if (draw.indexBuffer) {
                        draw.indexBuffer->Upload();
                        glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, draw.indexBuffer->GetGLBuffer());
                        glDrawElements(draw.mode, draw.indexCount, GL_UNSIGNED_SHORT,
                                       (void*)(static_cast<size_t>(draw.startIndex) * sizeof(unsigned short)));
                        glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
                    } else {
                        glDrawArrays(draw.mode, draw.startVertex, draw.vertexCount);
                    }
                    glBindBuffer(GL_ARRAY_BUFFER, 0);
                    glDisableClientState(GL_VERTEX_ARRAY);
                    glDisableClientState(GL_TEXTURE_COORD_ARRAY);
                } else {
                    // Temporary buffers for UP draws
                    GLuint tempVBO = 0;
                    glGenBuffers(1, &tempVBO);
                    glBindBuffer(GL_ARRAY_BUFFER, tempVBO);
                    glBufferData(GL_ARRAY_BUFFER, draw.vertices.size() * sizeof(float), draw.vertices.data(), GL_STATIC_DRAW);
                    glEnableClientState(GL_VERTEX_ARRAY);
                    glEnableClientState(GL_TEXTURE_COORD_ARRAY);
                    UINT stride = draw.stride ? draw.stride : 5 * sizeof(float);
                    glVertexPointer(3, GL_FLOAT, stride, (void*)(static_cast<size_t>(draw.startVertex) * stride));
                    glTexCoordPointer(2, GL_FLOAT, stride,
                                      (void*)(static_cast<size_t>(draw.startVertex) * stride + 3 * sizeof(float)));
                    if (!draw.indices.empty()) {
                        GLuint tempIBO = 0;
                        glGenBuffers(1, &tempIBO);
                        glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, tempIBO);
                        glBufferData(GL_ELEMENT_ARRAY_BUFFER, draw.indices.size() * sizeof(unsigned short), draw.indices.data(), GL_STATIC_DRAW);
                        glDrawElements(draw.mode, draw.indices.size(), GL_UNSIGNED_SHORT,
                                       (void*)(static_cast<size_t>(draw.startIndex) * sizeof(unsigned short)));
                        glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
                        glDeleteBuffers(1, &tempIBO);
                    } else {
                        glDrawArrays(draw.mode, draw.startVertex, draw.vertexCount ? draw.vertexCount : draw.vertices.size() / 5);
                    }
                    glBindBuffer(GL_ARRAY_BUFFER, 0);
                    glDisableClientState(GL_VERTEX_ARRAY);
                    glDisableClientState(GL_TEXTURE_COORD_ARRAY);
                    glDeleteBuffers(1, &tempVBO);
                }
            }

            SwapBuffers(g_hDCGL);
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
