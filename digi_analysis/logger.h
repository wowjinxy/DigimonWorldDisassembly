#pragma once
#include <cstdarg>

void InitLogger();
void ShutdownLogger();

#ifdef __cplusplus
extern "C" {
#endif
void __cdecl Log(const char* fmt, ...);
#ifdef __cplusplus
}
#endif
