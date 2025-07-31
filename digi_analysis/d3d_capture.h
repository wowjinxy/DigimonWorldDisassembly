#pragma once
#include <d3d8.h>

// Install a hook on IDirect3D8::CreateDevice so that we can intercept
// device creation and patch the resulting IDirect3DDevice8 vtable.
void InstallD3DCreateDeviceHook(IDirect3D8* d3d);
