// Copyright (c) 2025
//
// Definition of the extracted string table used by the reconstructed
// Digimon World PC port.  In the actual project the array below
// should contain every string extracted from the game binary, stored
// as UTF‑16 (wchar_t) string literals.  To keep this demonstration
// lightweight, a subset of the original strings is provided.  Replace
// the contents with the full data set for accurate behaviour【183865640345129†L0-L7】.

#include "strings.h"

// A sample array of strings extracted from the game.  UTF‑16 literals
// are prefixed with `L`.  The full list in the original project
// contained hundreds of entries; only the first few are included here
// as an example【183865640345129†L11-L14】.
const wchar_t* g_strings[] = {
    L"낅Q맘?",
    L"D0>A",
    L"ﾈ OMOC03",
    L"?OMOC04",
    L"=OMOC05",
    L"=OMOC06",
    L"=OMOC07",
    L"=OMOC08",
    L"=FACT01",
    L"4FACT02",
    L"4FACT03",
    L"4FACT04",
    L"4FACT05",
    L"4FACT06",
    L"4FACT07",
    L"4FACT08A",
    L"4FACT08B",
    L"4FACT09",
    L"4FACT10",
    L"4FACT11A",
    L"9GOMI01",
    L"8GOMI02",
    L"8MGEN01",
    L";MGEN02",
    L";TWNA02",
    L"+TWNA03",
    L"+TWNA04",
    L"+TWNA05",
    L"+TWNA06",
    L"+TWNA07",
    L"+TWNA08",
    L"+TWNA09",
    L"+TWNA10",
    L"+TWNA11",
    L"+TWNA12",
    L"+TWNA13",
    L"+TWNB01",
    L"+TWNB02",
    L"+TWNB03",
    L"+TWNB04",
    L"+TWNB05",
    L"+TWNB06",
    L"+TWNB07",
    L"+TWNB08",
    L"+TWNB09",
    L"+TWNB10",
    L"+TWNB11",
    L"+TWNB12",
    L"+TWNB13",
};

// Compute the number of strings at compile time.  Using constexpr
// ensures this value is known at build time and avoids mismatches【183865640345129†L67-L69】.
const std::size_t g_strings_count = sizeof(g_strings) / sizeof(g_strings[0]);