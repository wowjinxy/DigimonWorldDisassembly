#include "opengl_utils.h"
#define GL_GLEXT_PROTOTYPES
#include <GL/gl.h>
#include <GL/glext.h>
#include <vector>
#include <mutex>
namespace {
    bool   g_OpenGLWindowCreated = false;
    HWND   g_hWndGL              = nullptr;
    HGLRC  g_hGLRC               = nullptr;
    HDC    g_hDCGL               = nullptr;
    HANDLE g_renderThread        = nullptr;
    bool   g_running             = false;

    struct MeshData {
        std::vector<float>     vertices;
        std::vector<uint16_t>  indices;
        std::vector<uint32_t>  texture;
        int                    texWidth  = 0;
        int                    texHeight = 0;
        GLuint                 vbo       = 0;
        GLuint                 ibo       = 0;
        GLuint                 tex       = 0;
        bool                   dirty     = false;
    };

    MeshData g_mesh;
    std::mutex g_meshMutex;

    void UploadMeshIfNeeded() {
        if (!g_mesh.dirty) {
            return;
        }
        if (!g_mesh.vbo) {
            glGenBuffers(1, &g_mesh.vbo);
        }
        glBindBuffer(GL_ARRAY_BUFFER, g_mesh.vbo);
        glBufferData(GL_ARRAY_BUFFER, g_mesh.vertices.size() * sizeof(float),
                     g_mesh.vertices.data(), GL_STATIC_DRAW);

        if (!g_mesh.ibo) {
            glGenBuffers(1, &g_mesh.ibo);
        }
        glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, g_mesh.ibo);
        glBufferData(GL_ELEMENT_ARRAY_BUFFER, g_mesh.indices.size() * sizeof(uint16_t),
                     g_mesh.indices.data(), GL_STATIC_DRAW);

        if (g_mesh.texture.size()) {
            if (!g_mesh.tex) {
                glGenTextures(1, &g_mesh.tex);
                glBindTexture(GL_TEXTURE_2D, g_mesh.tex);
                glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
                glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
            } else {
                glBindTexture(GL_TEXTURE_2D, g_mesh.tex);
            }
            glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, g_mesh.texWidth, g_mesh.texHeight,
                         0, GL_BGRA_EXT, GL_UNSIGNED_BYTE, g_mesh.texture.data());
        }

        g_mesh.dirty = false;
    }

    DWORD WINAPI RenderThread(LPVOID) {
        typedef void (APIENTRY* PFNGLCLEARCOLORPROC)(float, float, float, float);
        typedef void (APIENTRY* PFNGLCLEARPROC)(unsigned int);
        PFNGLCLEARCOLORPROC pglClearColor = (PFNGLCLEARCOLORPROC)wglGetProcAddress("glClearColor");
        PFNGLCLEARPROC      pglClear      = (PFNGLCLEARPROC)wglGetProcAddress("glClear");

        while (g_running) {
            MSG msg;
            while (PeekMessage(&msg, g_hWndGL, 0, 0, PM_REMOVE)) {
                TranslateMessage(&msg);
                DispatchMessage(&msg);
            }

            if (pglClearColor && pglClear) {
                pglClearColor(0.1f, 0.2f, 0.3f, 1.0f);
                pglClear(GL_COLOR_BUFFER_BIT);
            }

            {
                std::lock_guard<std::mutex> lock(g_meshMutex);
                UploadMeshIfNeeded();
                if (g_mesh.vbo && g_mesh.ibo && g_mesh.indices.size()) {
                    glEnable(GL_TEXTURE_2D);
                    if (g_mesh.tex) {
                        glBindTexture(GL_TEXTURE_2D, g_mesh.tex);
                    }
                    glBindBuffer(GL_ARRAY_BUFFER, g_mesh.vbo);
                    glVertexPointer(3, GL_FLOAT, 5 * sizeof(float), 0);
                    glTexCoordPointer(2, GL_FLOAT, 5 * sizeof(float), (const void*)(3 * sizeof(float)));
                    glEnableClientState(GL_VERTEX_ARRAY);
                    glEnableClientState(GL_TEXTURE_COORD_ARRAY);

                    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, g_mesh.ibo);
                    glDrawElements(GL_TRIANGLES, static_cast<GLsizei>(g_mesh.indices.size()),
                                   GL_UNSIGNED_SHORT, 0);

                    glDisableClientState(GL_TEXTURE_COORD_ARRAY);
                    glDisableClientState(GL_VERTEX_ARRAY);
                }
            }

            SwapBuffers(g_hDCGL);
            Sleep(16);
        }
        return 0;
    }
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
        // class may already exist
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

    g_running = true;
    g_renderThread = CreateThread(nullptr, 0, RenderThread, nullptr, 0, nullptr);
    if (!g_renderThread) {
        g_running = false;
        wglMakeCurrent(nullptr, nullptr);
        wglDeleteContext(g_hGLRC);
        ReleaseDC(g_hWndGL, g_hDCGL);
        DestroyWindow(g_hWndGL);
        g_hGLRC = nullptr;
        g_hDCGL = nullptr;
        g_hWndGL = nullptr;
        return false;
    }

    g_OpenGLWindowCreated = true;
    return true;
}

void SubmitMesh(const float* vertices, size_t vertexCount,
                const uint16_t* indices, size_t indexCount,
                const uint32_t* texture, int texWidth, int texHeight) {
    std::lock_guard<std::mutex> lock(g_meshMutex);
    g_mesh.vertices.assign(vertices, vertices + vertexCount * 5);
    g_mesh.indices.assign(indices, indices + indexCount);
    if (texture && texWidth > 0 && texHeight > 0) {
        g_mesh.texture.assign(texture, texture + texWidth * texHeight);
        g_mesh.texWidth  = texWidth;
        g_mesh.texHeight = texHeight;
    }
    g_mesh.dirty = true;
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

    if (g_mesh.vbo) {
        glDeleteBuffers(1, &g_mesh.vbo);
        g_mesh.vbo = 0;
    }
    if (g_mesh.ibo) {
        glDeleteBuffers(1, &g_mesh.ibo);
        g_mesh.ibo = 0;
    }
    if (g_mesh.tex) {
        glDeleteTextures(1, &g_mesh.tex);
        g_mesh.tex = 0;
    }

    wglMakeCurrent(nullptr, nullptr);
    if (g_hGLRC) {
        wglDeleteContext(g_hGLRC);
        g_hGLRC = nullptr;
    }
    if (g_hDCGL && g_hWndGL) {
        ReleaseDC(g_hWndGL, g_hDCGL);
        g_hDCGL = nullptr;
    }
    if (g_hWndGL) {
        DestroyWindow(g_hWndGL);
        g_hWndGL = nullptr;
    }
    g_OpenGLWindowCreated = false;
}

