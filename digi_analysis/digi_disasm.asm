; Disassembly of .text section of digi.exe
00401000: 8B 44 24 04          mov eax, dword ptr [esp + 4]
00401004: 25 FF 0F 00 00       and eax, 0xfff
00401009: 0F BF 04 45 00 02 4B 00 movsx eax, word ptr [eax*2 + 0x4b0200]
00401011: C3                   ret 
00401012: 90                   nop 
00401013: 90                   nop 
00401014: 90                   nop 
00401015: 90                   nop 
00401016: 90                   nop 
00401017: 90                   nop 
00401018: 90                   nop 
00401019: 90                   nop 
0040101A: 90                   nop 
0040101B: 90                   nop 
0040101C: 90                   nop 
0040101D: 90                   nop 
0040101E: 90                   nop 
0040101F: 90                   nop 
00401020: 8B 44 24 04          mov eax, dword ptr [esp + 4]
00401024: 05 00 04 00 00       add eax, 0x400
00401029: 25 FF 0F 00 00       and eax, 0xfff
0040102E: 0F BF 04 45 00 02 4B 00 movsx eax, word ptr [eax*2 + 0x4b0200]
00401036: C3                   ret 
00401037: 90                   nop 
00401038: 90                   nop 
00401039: 90                   nop 
0040103A: 90                   nop 
0040103B: 90                   nop 
0040103C: 90                   nop 
0040103D: 90                   nop 
0040103E: 90                   nop 
0040103F: 90                   nop 
00401040: 8B 44 24 04          mov eax, dword ptr [esp + 4]
00401044: 50                   push eax
00401045: E8 D6 FF FF FF       call 0x401020
0040104A: 83 C4 04             add esp, 4
0040104D: C3                   ret 
0040104E: 90                   nop 
0040104F: 90                   nop 
00401050: 8B 44 24 04          mov eax, dword ptr [esp + 4]
00401054: 50                   push eax
00401055: E8 A6 FF FF FF       call 0x401000
0040105A: 83 C4 04             add esp, 4
0040105D: C3                   ret 
0040105E: 90                   nop 
0040105F: 90                   nop 
00401060: 83 EC 08             sub esp, 8
00401063: 8B 44 24 0C          mov eax, dword ptr [esp + 0xc]
00401067: 50                   push eax
00401068: E8 33 93 01 00       call 0x41a3a0
0040106D: 8B 4C 24 14          mov ecx, dword ptr [esp + 0x14]
00401071: DD 5C 24 04          fstp qword ptr [esp + 4]
00401075: 51                   push ecx
00401076: E8 25 93 01 00       call 0x41a3a0
0040107B: DD 44 24 08          fld qword ptr [esp + 8]
0040107F: D9 C9                fxch st(1)
00401081: D9 F3                fpatan 
00401083: 83 C4 04             add esp, 4
00401086: D9 1C 24             fstp dword ptr [esp]
00401089: E8 32 93 01 00       call 0x41a3c0
0040108E: 0F BF C0             movsx eax, ax
00401091: 83 C4 0C             add esp, 0xc
00401094: C3                   ret 
00401095: 90                   nop 
00401096: 90                   nop 
00401097: 90                   nop 
00401098: 90                   nop 
00401099: 90                   nop 
0040109A: 90                   nop 
0040109B: 90                   nop 
0040109C: 90                   nop 
0040109D: 90                   nop 
0040109E: 90                   nop 
0040109F: 90                   nop 
004010A0: 6A FF                push -1
004010A2: 68 91 22 4A 00       push 0x4a2291
004010A7: 64 A1 00 00 00 00    mov eax, dword ptr fs:[0]
004010AD: 50                   push eax
004010AE: 64 89 25 00 00 00 00 mov dword ptr fs:[0], esp
004010B5: 83 EC 08             sub esp, 8
004010B8: 56                   push esi
004010B9: 8B F1                mov esi, ecx
004010BB: 57                   push edi
004010BC: 89 74 24 0C          mov dword ptr [esp + 0xc], esi
004010C0: E8 9B 88 01 00       call 0x419960
004010C5: 8A 44 24 0B          mov al, byte ptr [esp + 0xb]
004010C9: 33 FF                xor edi, edi
004010CB: 89 7C 24 18          mov dword ptr [esp + 0x18], edi
004010CF: 88 46 08             mov byte ptr [esi + 8], al
004010D2: 89 7E 0C             mov dword ptr [esi + 0xc], edi
004010D5: 89 7E 10             mov dword ptr [esi + 0x10], edi
004010D8: 89 7E 14             mov dword ptr [esi + 0x14], edi
004010DB: 8A 4C 24 0B          mov cl, byte ptr [esp + 0xb]
004010DF: 89 BE 5C 27 00 00    mov dword ptr [esi + 0x275c], edi
004010E5: 88 8E 58 27 00 00    mov byte ptr [esi + 0x2758], cl
004010EB: 89 BE 60 27 00 00    mov dword ptr [esi + 0x2760], edi
004010F1: 89 BE 64 27 00 00    mov dword ptr [esi + 0x2764], edi
004010F7: 8D 8E 64 32 00 00    lea ecx, [esi + 0x3264]
004010FD: C6 44 24 18 02       mov byte ptr [esp + 0x18], 2
00401102: E8 39 3A 00 00       call 0x404b40
00401107: 8D 8E 9C 33 00 00    lea ecx, [esi + 0x339c]
0040110D: C6 44 24 18 03       mov byte ptr [esp + 0x18], 3
00401112: E8 E9 F8 09 00       call 0x4a0a00
00401117: 8D 8E A8 33 00 00    lea ecx, [esi + 0x33a8]
0040111D: C6 44 24 18 04       mov byte ptr [esp + 0x18], 4
00401122: E8 D9 F8 09 00       call 0x4a0a00
00401127: 8D 8E 08 35 00 00    lea ecx, [esi + 0x3508]
0040112D: C6 44 24 18 05       mov byte ptr [esp + 0x18], 5
00401132: E8 C9 F8 09 00       call 0x4a0a00
00401137: 8D 8E 14 35 00 00    lea ecx, [esi + 0x3514]
0040113D: C6 44 24 18 06       mov byte ptr [esp + 0x18], 6
00401142: E8 B9 F8 09 00       call 0x4a0a00
00401147: 8D 8E 20 35 00 00    lea ecx, [esi + 0x3520]
0040114D: C6 44 24 18 07       mov byte ptr [esp + 0x18], 7
00401152: E8 A9 F8 09 00       call 0x4a0a00
00401157: 8D 8E 2C 35 00 00    lea ecx, [esi + 0x352c]
0040115D: C6 44 24 18 08       mov byte ptr [esp + 0x18], 8
00401162: E8 D9 39 00 00       call 0x404b40
00401167: 8A 54 24 0B          mov dl, byte ptr [esp + 0xb]
0040116B: 89 BE F0 35 00 00    mov dword ptr [esi + 0x35f0], edi
00401171: 88 96 EC 35 00 00    mov byte ptr [esi + 0x35ec], dl
00401177: 89 BE F4 35 00 00    mov dword ptr [esi + 0x35f4], edi
0040117D: 89 BE F8 35 00 00    mov dword ptr [esi + 0x35f8], edi
00401183: C7 06 C0 73 4A 00    mov dword ptr [esi], 0x4a73c0
00401189: C7 46 04 FF FF FF FF mov dword ptr [esi + 4], 0xffffffff
00401190: 89 BE FC 35 00 00    mov dword ptr [esi + 0x35fc], edi
00401196: 89 BE 00 36 00 00    mov dword ptr [esi + 0x3600], edi
0040119C: 8B CE                mov ecx, esi
0040119E: C6 44 24 18 0A       mov byte ptr [esp + 0x18], 0xa
004011A3: 89 35 80 93 4C 00    mov dword ptr [0x4c9380], esi
004011A9: E8 92 35 00 00       call 0x404740
004011AE: 8B 4C 24 10          mov ecx, dword ptr [esp + 0x10]
004011B2: 8B C6                mov eax, esi
004011B4: 5F                   pop edi
004011B5: 5E                   pop esi
004011B6: 64 89 0D 00 00 00 00 mov dword ptr fs:[0], ecx
004011BD: 83 C4 14             add esp, 0x14
004011C0: C3                   ret 
004011C1: 90                   nop 
004011C2: 90                   nop 
004011C3: 90                   nop 
004011C4: 90                   nop 
004011C5: 90                   nop 
004011C6: 90                   nop 
004011C7: 90                   nop 
004011C8: 90                   nop 
004011C9: 90                   nop 
004011CA: 90                   nop 
004011CB: 90                   nop 
004011CC: 90                   nop 
004011CD: 90                   nop 
004011CE: 90                   nop 
004011CF: 90                   nop 
004011D0: 56                   push esi
004011D1: 8B F1                mov esi, ecx
004011D3: E8 18 00 00 00       call 0x4011f0
004011D8: F6 44 24 08 01       test byte ptr [esp + 8], 1
004011DD: 74 09                je 0x4011e8
004011DF: 56                   push esi
004011E0: E8 41 08 0A 00       call 0x4a1a26
004011E5: 83 C4 04             add esp, 4
004011E8: 8B C6                mov eax, esi
004011EA: 5E                   pop esi
004011EB: C2 04 00             ret 4
004011EE: 90                   nop 
004011EF: 90                   nop 
004011F0: 6A FF                push -1
004011F2: 68 31 23 4A 00       push 0x4a2331
004011F7: 64 A1 00 00 00 00    mov eax, dword ptr fs:[0]
004011FD: 50                   push eax
004011FE: 64 89 25 00 00 00 00 mov dword ptr fs:[0], esp
00401205: 83 EC 08             sub esp, 8
00401208: 56                   push esi
00401209: 8B F1                mov esi, ecx
0040120B: 57                   push edi
0040120C: 89 74 24 08          mov dword ptr [esp + 8], esi
00401210: C7 06 C0 73 4A 00    mov dword ptr [esi], 0x4a73c0
00401216: C7 44 24 18 0A 00 00 00 mov dword ptr [esp + 0x18], 0xa
0040121E: E8 6D 07 00 00       call 0x401990
00401223: 8B 86 F0 35 00 00    mov eax, dword ptr [esi + 0x35f0]
00401229: 50                   push eax
0040122A: 89 44 24 10          mov dword ptr [esp + 0x10], eax
0040122E: E8 F3 07 0A 00       call 0x4a1a26
00401233: 33 FF                xor edi, edi
00401235: 83 C4 04             add esp, 4
00401238: 8D 8E 2C 35 00 00    lea ecx, [esi + 0x352c]
0040123E: 89 BE F0 35 00 00    mov dword ptr [esi + 0x35f0], edi
00401244: 89 BE F4 35 00 00    mov dword ptr [esi + 0x35f4], edi
0040124A: 89 BE F8 35 00 00    mov dword ptr [esi + 0x35f8], edi
00401250: C6 44 24 18 08       mov byte ptr [esp + 0x18], 8
00401255: E8 86 39 00 00       call 0x404be0
0040125A: 8D 8E 64 32 00 00    lea ecx, [esi + 0x3264]
00401260: C6 44 24 18 02       mov byte ptr [esp + 0x18], 2
00401265: E8 76 39 00 00       call 0x404be0
0040126A: 8B 86 5C 27 00 00    mov eax, dword ptr [esi + 0x275c]
00401270: 50                   push eax
00401271: 89 44 24 10          mov dword ptr [esp + 0x10], eax
00401275: E8 AC 07 0A 00       call 0x4a1a26
0040127A: 89 BE 5C 27 00 00    mov dword ptr [esi + 0x275c], edi
00401280: 89 BE 60 27 00 00    mov dword ptr [esi + 0x2760], edi
00401286: 89 BE 64 27 00 00    mov dword ptr [esi + 0x2764], edi
0040128C: 8B 46 0C             mov eax, dword ptr [esi + 0xc]
0040128F: 50                   push eax
00401290: 89 44 24 14          mov dword ptr [esp + 0x14], eax
00401294: E8 8D 07 0A 00       call 0x4a1a26
00401299: 83 C4 08             add esp, 8
0040129C: 8B CE                mov ecx, esi
0040129E: 89 7E 0C             mov dword ptr [esi + 0xc], edi
004012A1: 89 7E 10             mov dword ptr [esi + 0x10], edi
004012A4: 89 7E 14             mov dword ptr [esi + 0x14], edi
004012A7: C7 44 24 18 FF FF FF FF mov dword ptr [esp + 0x18], 0xffffffff
004012AF: E8 DC 86 01 00       call 0x419990
004012B4: 8B 4C 24 10          mov ecx, dword ptr [esp + 0x10]
004012B8: 5F                   pop edi
004012B9: 5E                   pop esi
004012BA: 64 89 0D 00 00 00 00 mov dword ptr fs:[0], ecx
004012C1: 83 C4 14             add esp, 0x14
004012C4: C3                   ret 
004012C5: 90                   nop 
004012C6: 90                   nop 
004012C7: 90                   nop 
004012C8: 90                   nop 
004012C9: 90                   nop 
004012CA: 90                   nop 
004012CB: 90                   nop 
004012CC: 90                   nop 
004012CD: 90                   nop 
004012CE: 90                   nop 
004012CF: 90                   nop 
004012D0: 8B 44 24 04          mov eax, dword ptr [esp + 4]
004012D4: 8B 91 5C 32 00 00    mov edx, dword ptr [ecx + 0x325c]
004012DA: C1 E0 09             shl eax, 9
004012DD: 03 D0                add edx, eax
004012DF: 52                   push edx
004012E0: E8 0B 00 00 00       call 0x4012f0
004012E5: C2 04 00             ret 4
004012E8: 90                   nop 
004012E9: 90                   nop 
004012EA: 90                   nop 
004012EB: 90                   nop 
004012EC: 90                   nop 
004012ED: 90                   nop 
004012EE: 90                   nop 
004012EF: 90                   nop 
004012F0: 55                   push ebp
004012F1: 8B 6C 24 08          mov ebp, dword ptr [esp + 8]
004012F5: 56                   push esi
004012F6: 57                   push edi
004012F7: 8B F1                mov esi, ecx
004012F9: 33 FF                xor edi, edi
004012FB: 8B 86 5C 27 00 00    mov eax, dword ptr [esi + 0x275c]
00401301: 85 C0                test eax, eax
00401303: 74 1F                je 0x401324
00401305: 8B 8E 60 27 00 00    mov ecx, dword ptr [esi + 0x2760]
0040130B: 2B C8                sub ecx, eax
0040130D: C1 F9 02             sar ecx, 2
00401310: 3B F9                cmp edi, ecx
00401312: 73 10                jae 0x401324
00401314: 8B D0                mov edx, eax
00401316: 6A 01                push 1
00401318: 55                   push ebp
00401319: 8B 0C BA             mov ecx, dword ptr [edx + edi*4]
0040131C: E8 EF 19 01 00       call 0x412d10
00401321: 47                   inc edi
00401322: EB D7                jmp 0x4012fb
00401324: 33 FF                xor edi, edi
00401326: 8B 46 0C             mov eax, dword ptr [esi + 0xc]
00401329: 85 C0                test eax, eax
0040132B: 74 6E                je 0x40139b
0040132D: 8B 4E 10             mov ecx, dword ptr [esi + 0x10]
00401330: 2B C8                sub ecx, eax
00401332: C1 F9 02             sar ecx, 2
00401335: 3B F9                cmp edi, ecx
00401337: 73 62                jae 0x40139b
00401339: 8B 56 0C             mov edx, dword ptr [esi + 0xc]
0040133C: 33 C0                xor eax, eax
0040133E: 8B 0C BA             mov ecx, dword ptr [edx + edi*4]
00401341: 83 79 38 01          cmp dword ptr [ecx + 0x38], 1
00401345: 75 09                jne 0x401350
00401347: 81 79 2C E0 01 00 00 cmp dword ptr [ecx + 0x2c], 0x1e0
0040134E: 74 0E                je 0x40135e
00401350: 8B 51 2C             mov edx, dword ptr [ecx + 0x2c]
00401353: 85 D2                test edx, edx
00401355: 74 07                je 0x40135e
00401357: 8B 56 04             mov edx, dword ptr [esi + 4]
0040135A: 85 D2                test edx, edx
0040135C: 75 05                jne 0x401363
0040135E: B8 01 00 00 00       mov eax, 1
00401363: 8B 56 04             mov edx, dword ptr [esi + 4]
00401366: 81 FA 88 00 00 00    cmp edx, 0x88
0040136C: 75 02                jne 0x401370
0040136E: 33 C0                xor eax, eax
00401370: 81 FA 80 00 00 00    cmp edx, 0x80
00401376: 75 05                jne 0x40137d
00401378: B8 01 00 00 00       mov eax, 1
0040137D: 83 FA 4A             cmp edx, 0x4a
00401380: 75 05                jne 0x401387
00401382: B8 01 00 00 00       mov eax, 1
00401387: 83 FA 54             cmp edx, 0x54
0040138A: 74 04                je 0x401390
0040138C: 85 C0                test eax, eax
0040138E: 74 08                je 0x401398
00401390: 6A 01                push 1
00401392: 55                   push ebp
00401393: E8 78 19 01 00       call 0x412d10
00401398: 47                   inc edi
00401399: EB 8B                jmp 0x401326
0040139B: 8B CE                mov ecx, esi
0040139D: E8 AE F8 05 00       call 0x460c50
004013A2: 5F                   pop edi
004013A3: 5E                   pop esi
004013A4: 5D                   pop ebp
004013A5: C2 04 00             ret 4
004013A8: 90                   nop 
004013A9: 90                   nop 
004013AA: 90                   nop 
004013AB: 90                   nop 
004013AC: 90                   nop 
004013AD: 90                   nop 
004013AE: 90                   nop 
004013AF: 90                   nop 
004013B0: 0F BF 44 24 04       movsx eax, word ptr [esp + 4]
004013B5: C1 E0 04             shl eax, 4
004013B8: 8A 80 A4 25 4B 00    mov al, byte ptr [eax + 0x4b25a4]
004013BE: 83 E0 1F             and eax, 0x1f
004013C1: C3                   ret 
004013C2: 90                   nop 
004013C3: 90                   nop 
004013C4: 90                   nop 
004013C5: 90                   nop 
004013C6: 90                   nop 
004013C7: 90                   nop 
004013C8: 90                   nop 
004013C9: 90                   nop 
004013CA: 90                   nop 
004013CB: 90                   nop 
004013CC: 90                   nop 
004013CD: 90                   nop 
004013CE: 90                   nop 
004013CF: 90                   nop 
004013D0: 6A FF                push -1
004013D2: 68 48 23 4A 00       push 0x4a2348
004013D7: 64 A1 00 00 00 00    mov eax, dword ptr fs:[0]
004013DD: 50                   push eax
004013DE: 64 89 25 00 00 00 00 mov dword ptr fs:[0], esp
004013E5: 51                   push ecx
004013E6: 53                   push ebx
004013E7: 56                   push esi
004013E8: 57                   push edi
004013E9: 8B F1                mov esi, ecx
004013EB: E8 A0 05 00 00       call 0x401990
004013F0: 66 8B 44 24 20       mov ax, word ptr [esp + 0x20]
004013F5: 8D 4C 24 0C          lea ecx, [esp + 0xc]
004013F9: 0F BF F8             movsx edi, ax
004013FC: 89 7E 04             mov dword ptr [esi + 4], edi
004013FF: A2 5E 06 4F 00       mov byte ptr [0x4f065e], al
00401404: E8 2F 06 0A 00       call 0x4a1a38
00401409: B8 89 88 88 88       mov eax, 0x88888889
0040140E: 8D 4C 24 0C          lea ecx, [esp + 0xc]
00401412: F7 EF                imul edi
00401414: 03 D7                add edx, edi
00401416: C7 44 24 18 00 00 00 00 mov dword ptr [esp + 0x18], 0
0040141E: C1 FA 03             sar edx, 3
00401421: 8B C2                mov eax, edx
00401423: C1 E7 04             shl edi, 4
00401426: C1 E8 1F             shr eax, 0x1f
00401429: 8D BF 98 25 4B 00    lea edi, [edi + 0x4b2598]
0040142F: 8D 5C 02 01          lea ebx, [edx + eax + 1]
00401433: 57                   push edi
00401434: 53                   push ebx
00401435: 68 14 24 4B 00       push 0x4b2414
0040143A: 51                   push ecx
0040143B: E8 F2 05 0A 00       call 0x4a1a32
00401440: 8B 54 24 1C          mov edx, dword ptr [esp + 0x1c]
00401444: 52                   push edx
00401445: E8 76 8C 01 00       call 0x41a0c0
0040144A: 89 86 00 36 00 00    mov dword ptr [esi + 0x3600], eax
00401450: 57                   push edi
00401451: 53                   push ebx
00401452: 8D 44 24 28          lea eax, [esp + 0x28]
00401456: 68 00 24 4B 00       push 0x4b2400
0040145B: 50                   push eax
0040145C: E8 D1 05 0A 00       call 0x4a1a32
00401461: 8B 4C 24 30          mov ecx, dword ptr [esp + 0x30]
00401465: 51                   push ecx
00401466: E8 55 8C 01 00       call 0x41a0c0
0040146B: 89 86 FC 35 00 00    mov dword ptr [esi + 0x35fc], eax
00401471: 8B 10                mov edx, dword ptr [eax]
00401473: 83 C4 28             add esp, 0x28
00401476: 03 D0                add edx, eax
00401478: 8B CE                mov ecx, esi
0040147A: 52                   push edx
0040147B: E8 80 06 00 00       call 0x401b00
00401480: 8B CE                mov ecx, esi
00401482: E8 19 22 00 00       call 0x4036a0
00401487: 8B CE                mov ecx, esi
00401489: E8 42 29 00 00       call 0x403dd0
0040148E: C7 86 B4 33 00 00 00 00 00 00 mov dword ptr [esi + 0x33b4], 0
00401498: E8 43 E7 05 00       call 0x45fbe0
0040149D: E8 7E 25 06 00       call 0x463a20
004014A2: 66 8B 46 04          mov ax, word ptr [esi + 4]
004014A6: 50                   push eax
004014A7: E8 04 FF FF FF       call 0x4013b0
004014AC: 8B 0D 98 D0 4C 00    mov ecx, dword ptr [0x4cd098]
004014B2: 83 C4 04             add esp, 4
004014B5: 50                   push eax
004014B6: E8 B5 DA 02 00       call 0x42ef70
004014BB: 8B 4E 04             mov ecx, dword ptr [esi + 4]
004014BE: 6A 00                push 0
004014C0: 51                   push ecx
004014C1: E8 1A BC 07 00       call 0x47d0e0
004014C6: 83 C4 08             add esp, 8
004014C9: FF 15 8C 73 4A 00    call dword ptr [0x4a738c]
004014CF: 8D 4C 24 0C          lea ecx, [esp + 0xc]
004014D3: A3 AC 8C 4E 00       mov dword ptr [0x4e8cac], eax
004014D8: C7 44 24 18 FF FF FF FF mov dword ptr [esp + 0x18], 0xffffffff
004014E0: E8 47 05 0A 00       call 0x4a1a2c
004014E5: 8B 4C 24 10          mov ecx, dword ptr [esp + 0x10]
004014E9: 5F                   pop edi
004014EA: 5E                   pop esi
004014EB: 5B                   pop ebx
004014EC: 64 89 0D 00 00 00 00 mov dword ptr fs:[0], ecx
004014F3: 83 C4 10             add esp, 0x10
004014F6: C2 04 00             ret 4
004014F9: 90                   nop 
004014FA: 90                   nop 
004014FB: 90                   nop 
004014FC: 90                   nop 
004014FD: 90                   nop 
004014FE: 90                   nop 
004014FF: 90                   nop 
00401500: 6A FF                push -1
00401502: 68 42 24 4A 00       push 0x4a2442
00401507: 64 A1 00 00 00 00    mov eax, dword ptr fs:[0]
0040150D: 50                   push eax
0040150E: 64 89 25 00 00 00 00 mov dword ptr fs:[0], esp
00401515: 81 EC B4 00 00 00    sub esp, 0xb4
0040151B: 53                   push ebx
0040151C: 55                   push ebp
0040151D: 56                   push esi
0040151E: 57                   push edi
0040151F: 8B F9                mov edi, ecx
00401521: 8D 4C 24 40          lea ecx, [esp + 0x40]
00401525: E8 D6 F4 09 00       call 0x4a0a00
0040152A: 8D 4C 24 34          lea ecx, [esp + 0x34]
0040152E: C7 84 24 CC 00 00 00 00 00 00 00 mov dword ptr [esp + 0xcc], 0
00401539: E8 C2 F4 09 00       call 0x4a0a00
0040153E: 8D B7 2C 35 00 00    lea esi, [edi + 0x352c]
00401544: 8D 44 24 28          lea eax, [esp + 0x28]
00401548: B3 01                mov bl, 1
0040154A: 50                   push eax
0040154B: 8B CE                mov ecx, esi
0040154D: 88 9C 24 D0 00 00 00 mov byte ptr [esp + 0xd0], bl
00401554: E8 D7 03 00 00       call 0x401930
00401559: 50                   push eax
0040155A: 8D 4C 24 44          lea ecx, [esp + 0x44]
0040155E: C6 84 24 D0 00 00 00 02 mov byte ptr [esp + 0xd0], 2
00401566: E8 C5 F4 09 00       call 0x4a0a30
0040156B: 8D 4C 24 28          lea ecx, [esp + 0x28]
0040156F: 88 9C 24 CC 00 00 00 mov byte ptr [esp + 0xcc], bl
00401576: 51                   push ecx
00401577: 8B CE                mov ecx, esi
00401579: E8 E2 03 00 00       call 0x401960
0040157E: 50                   push eax
0040157F: 8D 4C 24 38          lea ecx, [esp + 0x38]
00401583: C6 84 24 D0 00 00 00 03 mov byte ptr [esp + 0xd0], 3
0040158B: E8 A0 F4 09 00       call 0x4a0a30
00401590: D9 87 DC 35 00 00    fld dword ptr [edi + 0x35dc]
00401596: D9 87 D4 35 00 00    fld dword ptr [edi + 0x35d4]
0040159C: D8 F1                fdiv st(1)
0040159E: 8D 4C 24 70          lea ecx, [esp + 0x70]
004015A2: 88 9C 24 CC 00 00 00 mov byte ptr [esp + 0xcc], bl
004015A9: D9 5C 24 10          fstp dword ptr [esp + 0x10]
004015AD: DD D8                fstp st(0)
004015AF: E8 4C F4 09 00       call 0x4a0a00
004015B4: 8B 6C 24 10          mov ebp, dword ptr [esp + 0x10]
004015B8: B3 04                mov bl, 4
004015BA: 55                   push ebp
004015BB: 68 00 00 70 43       push 0x43700000
004015C0: 68 00 00 A0 43       push 0x43a00000
004015C5: 8D 4C 24 34          lea ecx, [esp + 0x34]
004015C9: 88 9C 24 D8 00 00 00 mov byte ptr [esp + 0xd8], bl
004015D0: E8 3B F4 09 00       call 0x4a0a10
004015D5: 50                   push eax
004015D6: 8D 4C 24 74          lea ecx, [esp + 0x74]
004015DA: C6 84 24 D0 00 00 00 05 mov byte ptr [esp + 0xd0], 5
004015E2: E8 49 F4 09 00       call 0x4a0a30
004015E7: 8D 4C 24 4C          lea ecx, [esp + 0x4c]
004015EB: 88 9C 24 CC 00 00 00 mov byte ptr [esp + 0xcc], bl
004015F2: E8 09 F4 09 00       call 0x4a0a00
004015F7: 0F BE 05 29 22 4F 00 movsx eax, byte ptr [0x4f2229]
004015FE: C1 E0 08             shl eax, 8
00401601: 2D E0 01 00 00       sub eax, 0x1e0
00401606: 55                   push ebp
00401607: 99                   cdq 
00401608: 2B C2                sub eax, edx
0040160A: 51                   push ecx
0040160B: 0F BF 15 26 22 4F 00 movsx edx, word ptr [0x4f2226]
00401612: D1 F8                sar eax, 1
00401614: 2B C2                sub eax, edx
00401616: C6 84 24 D4 00 00 00 06 mov byte ptr [esp + 0xd4], 6
0040161E: 05 F0 00 00 00       add eax, 0xf0
00401623: 89 44 24 18          mov dword ptr [esp + 0x18], eax
00401627: 0F BE 05 28 22 4F 00 movsx eax, byte ptr [0x4f2228]
0040162E: DB 44 24 18          fild dword ptr [esp + 0x18]
00401632: C1 E0 08             shl eax, 8
00401635: D9 1C 24             fstp dword ptr [esp]
00401638: 2D 80 02 00 00       sub eax, 0x280
0040163D: 99                   cdq 
0040163E: 2B C2                sub eax, edx
00401640: D1 F8                sar eax, 1
00401642: 0F BF 0D 24 22 4F 00 movsx ecx, word ptr [0x4f2224]
00401649: 2B C1                sub eax, ecx
0040164B: 51                   push ecx
0040164C: 05 40 01 00 00       add eax, 0x140
00401651: 8D 4C 24 64          lea ecx, [esp + 0x64]
00401655: 89 44 24 1C          mov dword ptr [esp + 0x1c], eax
00401659: DB 44 24 1C          fild dword ptr [esp + 0x1c]
0040165D: D9 1C 24             fstp dword ptr [esp]
00401660: E8 AB F3 09 00       call 0x4a0a10
00401665: 83 EC 0C             sub esp, 0xc
00401668: 8D 54 24 64          lea edx, [esp + 0x64]
0040166C: B3 07                mov bl, 7
0040166E: 8B CC                mov ecx, esp
00401670: 89 64 24 20          mov dword ptr [esp + 0x20], esp
00401674: 52                   push edx
00401675: 88 9C 24 DC 00 00 00 mov byte ptr [esp + 0xdc], bl
0040167C: E8 AF F3 09 00       call 0x4a0a30
00401681: 8D 44 24 34          lea eax, [esp + 0x34]
00401685: 8B CE                mov ecx, esi
00401687: 50                   push eax
00401688: E8 E3 36 00 00       call 0x404d70
0040168D: 50                   push eax
0040168E: 8D 4C 24 50          lea ecx, [esp + 0x50]
00401692: C6 84 24 D0 00 00 00 08 mov byte ptr [esp + 0xd0], 8
0040169A: E8 91 F3 09 00       call 0x4a0a30
0040169F: 8D 4C 24 4C          lea ecx, [esp + 0x4c]
004016A3: 8D 54 24 28          lea edx, [esp + 0x28]
004016A7: 51                   push ecx
004016A8: 52                   push edx
004016A9: 8D 4C 24 3C          lea ecx, [esp + 0x3c]
004016AD: 88 9C 24 D4 00 00 00 mov byte ptr [esp + 0xd4], bl
004016B4: E8 E7 F3 09 00       call 0x4a0aa0
004016B9: 50                   push eax
004016BA: 8D 4C 24 38          lea ecx, [esp + 0x38]
004016BE: C6 84 24 D0 00 00 00 09 mov byte ptr [esp + 0xd0], 9
004016C6: E8 45 F4 09 00       call 0x4a0b10
004016CB: 83 EC 0C             sub esp, 0xc
004016CE: 8D 44 24 64          lea eax, [esp + 0x64]
004016D2: 8B CC                mov ecx, esp
004016D4: 89 64 24 20          mov dword ptr [esp + 0x20], esp
004016D8: 50                   push eax
004016D9: 88 9C 24 DC 00 00 00 mov byte ptr [esp + 0xdc], bl
004016E0: C7 44 24 70 00 00 00 00 mov dword ptr [esp + 0x70], 0
004016E8: E8 43 F3 09 00       call 0x4a0a30
004016ED: 8D 4C 24 34          lea ecx, [esp + 0x34]
004016F1: 51                   push ecx
004016F2: 8B CE                mov ecx, esi
004016F4: E8 77 36 00 00       call 0x404d70
004016F9: 50                   push eax
004016FA: 8D 4C 24 50          lea ecx, [esp + 0x50]
004016FE: C6 84 24 D0 00 00 00 0A mov byte ptr [esp + 0xd0], 0xa
00401706: E8 25 F3 09 00       call 0x4a0a30
0040170B: 8D 54 24 4C          lea edx, [esp + 0x4c]
0040170F: 8D 44 24 28          lea eax, [esp + 0x28]
00401713: 52                   push edx
00401714: 50                   push eax
00401715: 8D 4C 24 48          lea ecx, [esp + 0x48]
00401719: 88 9C 24 D4 00 00 00 mov byte ptr [esp + 0xd4], bl
00401720: E8 7B F3 09 00       call 0x4a0aa0
00401725: 50                   push eax
00401726: 8D 4C 24 44          lea ecx, [esp + 0x44]
0040172A: C6 84 24 D0 00 00 00 0B mov byte ptr [esp + 0xd0], 0xb
00401732: E8 D9 F3 09 00       call 0x4a0b10
00401737: 8D 4C 24 40          lea ecx, [esp + 0x40]
0040173B: 8D 54 24 1C          lea edx, [esp + 0x1c]
0040173F: 51                   push ecx
00401740: 52                   push edx
00401741: 8D 4C 24 3C          lea ecx, [esp + 0x3c]
00401745: 88 9C 24 D4 00 00 00 mov byte ptr [esp + 0xd4], bl
0040174C: E8 4F F3 09 00       call 0x4a0aa0
00401751: 8D 4C 24 64          lea ecx, [esp + 0x64]
00401755: C6 84 24 CC 00 00 00 0C mov byte ptr [esp + 0xcc], 0xc
0040175D: E8 9E F2 09 00       call 0x4a0a00
00401762: C6 84 24 CC 00 00 00 0D mov byte ptr [esp + 0xcc], 0xd
0040176A: 8D 4C 24 1C          lea ecx, [esp + 0x1c]
0040176E: E8 6D F4 09 00       call 0x4a0be0
00401773: 6A 00                push 0
00401775: 6A 00                push 0
00401777: 68 00 00 80 3F       push 0x3f800000
0040177C: 8D 4C 24 34          lea ecx, [esp + 0x34]
00401780: E8 8B F2 09 00       call 0x4a0a10
00401785: 8B E8                mov ebp, eax
00401787: 6A 00                push 0
00401789: 6A 00                push 0
0040178B: 68 00 00 80 3F       push 0x3f800000
00401790: 8D 8C 24 B8 00 00 00 lea ecx, [esp + 0xb8]
00401797: C6 84 24 D8 00 00 00 0E mov byte ptr [esp + 0xd8], 0xe
0040179F: E8 6C F2 09 00       call 0x4a0a10
004017A4: 8B D8                mov ebx, eax
004017A6: 6A 00                push 0
004017A8: 6A 00                push 0
004017AA: 68 00 00 80 3F       push 0x3f800000
004017AF: 8D 8C 24 A0 00 00 00 lea ecx, [esp + 0xa0]
004017B6: C6 84 24 D8 00 00 00 0F mov byte ptr [esp + 0xd8], 0xf
004017BE: E8 4D F2 09 00       call 0x4a0a10
004017C3: 89 44 24 10          mov dword ptr [esp + 0x10], eax
004017C7: 6A 00                push 0
004017C9: 6A 00                push 0
004017CB: 68 00 00 80 3F       push 0x3f800000
004017D0: 8D 8C 24 88 00 00 00 lea ecx, [esp + 0x88]
004017D7: C6 84 24 D8 00 00 00 10 mov byte ptr [esp + 0xd8], 0x10
004017DF: E8 2C F2 09 00       call 0x4a0a10
004017E4: 89 44 24 18          mov dword ptr [esp + 0x18], eax
004017E8: 6A 00                push 0
004017EA: 6A 00                push 0
004017EC: 68 00 00 80 3F       push 0x3f800000
004017F1: 8D 8C 24 94 00 00 00 lea ecx, [esp + 0x94]
004017F8: C6 84 24 D8 00 00 00 11 mov byte ptr [esp + 0xd8], 0x11
00401800: E8 0B F2 09 00       call 0x4a0a10
00401805: 89 44 24 14          mov dword ptr [esp + 0x14], eax
00401809: 6A 00                push 0
0040180B: 6A 00                push 0
0040180D: 68 00 00 80 3F       push 0x3f800000
00401812: 8D 8C 24 AC 00 00 00 lea ecx, [esp + 0xac]
00401819: C6 84 24 D8 00 00 00 12 mov byte ptr [esp + 0xd8], 0x12
00401821: E8 EA F1 09 00       call 0x4a0a10
00401826: D9 44 24 1C          fld dword ptr [esp + 0x1c]
0040182A: D8 4D 04             fmul dword ptr [ebp + 4]
0040182D: D9 44 24 20          fld dword ptr [esp + 0x20]
00401831: D8 0B                fmul dword ptr [ebx]
00401833: 51                   push ecx
00401834: 8B 4C 24 14          mov ecx, dword ptr [esp + 0x14]
00401838: 8B 54 24 1C          mov edx, dword ptr [esp + 0x1c]
0040183C: C6 84 24 D0 00 00 00 13 mov byte ptr [esp + 0xd0], 0x13
00401844: DE E9                fsubp st(1)
00401846: D9 1C 24             fstp dword ptr [esp]
00401849: D9 44 24 28          fld dword ptr [esp + 0x28]
0040184D: D8 09                fmul dword ptr [ecx]
0040184F: D9 44 24 20          fld dword ptr [esp + 0x20]
00401853: D8 4A 08             fmul dword ptr [edx + 8]
00401856: 51                   push ecx
00401857: 8B 4C 24 1C          mov ecx, dword ptr [esp + 0x1c]
0040185B: DE E9                fsubp st(1)
0040185D: D9 1C 24             fstp dword ptr [esp]
00401860: D9 44 24 28          fld dword ptr [esp + 0x28]
00401864: D8 49 08             fmul dword ptr [ecx + 8]
00401867: D9 44 24 2C          fld dword ptr [esp + 0x2c]
0040186B: D8 48 04             fmul dword ptr [eax + 4]
0040186E: 51                   push ecx
0040186F: 8D 8C 24 C4 00 00 00 lea ecx, [esp + 0xc4]
00401876: DE E9                fsubp st(1)
00401878: D9 1C 24             fstp dword ptr [esp]
0040187B: E8 90 F1 09 00       call 0x4a0a10
00401880: 50                   push eax
00401881: 8D 4C 24 68          lea ecx, [esp + 0x68]
00401885: C6 84 24 D0 00 00 00 14 mov byte ptr [esp + 0xd0], 0x14
0040188D: E8 9E F1 09 00       call 0x4a0a30
00401892: C6 84 24 CC 00 00 00 0D mov byte ptr [esp + 0xcc], 0xd
0040189A: 8D 4C 24 64          lea ecx, [esp + 0x64]
0040189E: E8 3D F3 09 00       call 0x4a0be0
004018A3: 83 EC 0C             sub esp, 0xc
004018A6: 8B CE                mov ecx, esi
004018A8: 8B D4                mov edx, esp
004018AA: 89 64 24 20          mov dword ptr [esp + 0x20], esp
004018AE: 52                   push edx
004018AF: E8 6C 00 00 00       call 0x401920
004018B4: 8B C8                mov ecx, eax
004018B6: E8 B5 FF 09 00       call 0x4a1870
004018BB: 83 EC 0C             sub esp, 0xc
004018BE: 8D 44 24 4C          lea eax, [esp + 0x4c]
004018C2: 8B CC                mov ecx, esp
004018C4: 89 64 24 30          mov dword ptr [esp + 0x30], esp
004018C8: 50                   push eax
004018C9: C6 84 24 E8 00 00 00 15 mov byte ptr [esp + 0xe8], 0x15
004018D1: E8 5A F1 09 00       call 0x4a0a30
004018D6: 83 EC 0C             sub esp, 0xc
004018D9: 8D 54 24 64          lea edx, [esp + 0x64]
004018DD: 8B CC                mov ecx, esp
004018DF: 89 64 24 34          mov dword ptr [esp + 0x34], esp
004018E3: 52                   push edx
004018E4: C6 84 24 F4 00 00 00 16 mov byte ptr [esp + 0xf4], 0x16
004018EC: E8 3F F1 09 00       call 0x4a0a30
004018F1: 8D 8F 64 32 00 00    lea ecx, [edi + 0x3264]
004018F7: C6 84 24 F0 00 00 00 0D mov byte ptr [esp + 0xf0], 0xd
004018FF: E8 EC 32 00 00       call 0x404bf0
00401904: 8B 8C 24 C4 00 00 00 mov ecx, dword ptr [esp + 0xc4]
0040190B: 5F                   pop edi
0040190C: 5E                   pop esi
0040190D: 5D                   pop ebp
0040190E: 64 89 0D 00 00 00 00 mov dword ptr fs:[0], ecx
00401915: 5B                   pop ebx
00401916: 81 C4 C0 00 00 00    add esp, 0xc0
0040191C: C3                   ret 
0040191D: 90                   nop 
0040191E: 90                   nop 
0040191F: 90                   nop 
00401920: 8D 41 04             lea eax, [ecx + 4]
00401923: C3                   ret 
00401924: 90                   nop 
00401925: 90                   nop 
00401926: 90                   nop 
00401927: 90                   nop 
00401928: 90                   nop 
00401929: 90                   nop 
0040192A: 90                   nop 
0040192B: 90                   nop 
0040192C: 90                   nop 
0040192D: 90                   nop 
0040192E: 90                   nop 
0040192F: 90                   nop 
00401930: 51                   push ecx
00401931: 56                   push esi
00401932: 8B 74 24 0C          mov esi, dword ptr [esp + 0xc]
00401936: 81 C1 84 00 00 00    add ecx, 0x84
0040193C: C7 44 24 04 00 00 00 00 mov dword ptr [esp + 4], 0
00401944: 51                   push ecx
00401945: 8B CE                mov ecx, esi
00401947: E8 E4 F0 09 00       call 0x4a0a30
0040194C: 8B C6                mov eax, esi
0040194E: 5E                   pop esi
0040194F: 59                   pop ecx
00401950: C2 04 00             ret 4
00401953: 90                   nop 
00401954: 90                   nop 
00401955: 90                   nop 
00401956: 90                   nop 
00401957: 90                   nop 
00401958: 90                   nop 
00401959: 90                   nop 
0040195A: 90                   nop 
0040195B: 90                   nop 
0040195C: 90                   nop 
0040195D: 90                   nop 
0040195E: 90                   nop 
0040195F: 90                   nop 
00401960: 51                   push ecx
00401961: 56                   push esi
00401962: 8B 74 24 0C          mov esi, dword ptr [esp + 0xc]
00401966: 81 C1 90 00 00 00    add ecx, 0x90
0040196C: C7 44 24 04 00 00 00 00 mov dword ptr [esp + 4], 0
00401974: 51                   push ecx
00401975: 8B CE                mov ecx, esi
00401977: E8 B4 F0 09 00       call 0x4a0a30
0040197C: 8B C6                mov eax, esi
0040197E: 5E                   pop esi
0040197F: 59                   pop ecx
00401980: C2 04 00             ret 4
00401983: 90                   nop 
00401984: 90                   nop 
00401985: 90                   nop 
00401986: 90                   nop 
00401987: 90                   nop 
00401988: 90                   nop 
00401989: 90                   nop 
0040198A: 90                   nop 
0040198B: 90                   nop 
0040198C: 90                   nop 
0040198D: 90                   nop 
0040198E: 90                   nop 
0040198F: 90                   nop 
00401990: 51                   push ecx
00401991: 56                   push esi
00401992: 8B F1                mov esi, ecx
00401994: 57                   push edi
00401995: 8B 86 FC 35 00 00    mov eax, dword ptr [esi + 0x35fc]
0040199B: 85 C0                test eax, eax
0040199D: 74 13                je 0x4019b2
0040199F: 50                   push eax
004019A0: E8 81 00 0A 00       call 0x4a1a26
004019A5: 83 C4 04             add esp, 4
004019A8: C7 86 FC 35 00 00 00 00 00 00 mov dword ptr [esi + 0x35fc], 0
004019B2: 8B 86 00 36 00 00    mov eax, dword ptr [esi + 0x3600]
004019B8: 85 C0                test eax, eax
004019BA: 74 13                je 0x4019cf
004019BC: 50                   push eax
004019BD: E8 64 00 0A 00       call 0x4a1a26
004019C2: 83 C4 04             add esp, 4
004019C5: C7 86 00 36 00 00 00 00 00 00 mov dword ptr [esi + 0x3600], 0
004019CF: 8B 46 10             mov eax, dword ptr [esi + 0x10]
004019D2: 53                   push ebx
004019D3: 8B 5E 0C             mov ebx, dword ptr [esi + 0xc]
004019D6: 3B D8                cmp ebx, eax
004019D8: 74 1F                je 0x4019f9
004019DA: 8B 3B                mov edi, dword ptr [ebx]
004019DC: 8B CF                mov ecx, edi
004019DE: E8 8D F9 00 00       call 0x411370
004019E3: 85 FF                test edi, edi
004019E5: 74 08                je 0x4019ef
004019E7: 8B 07                mov eax, dword ptr [edi]
004019E9: 6A 01                push 1
004019EB: 8B CF                mov ecx, edi
004019ED: FF 10                call dword ptr [eax]
004019EF: 8B 46 10             mov eax, dword ptr [esi + 0x10]
004019F2: 83 C3 04             add ebx, 4
004019F5: 3B D8                cmp ebx, eax
004019F7: 75 E1                jne 0x4019da
004019F9: 8B 4E 10             mov ecx, dword ptr [esi + 0x10]
004019FC: 8D 5E 08             lea ebx, [esi + 8]
004019FF: 8B C1                mov eax, ecx
00401A01: 8B 7B 04             mov edi, dword ptr [ebx + 4]
00401A04: 3B C1                cmp eax, ecx
00401A06: 74 0E                je 0x401a16
00401A08: 8B 10                mov edx, dword ptr [eax]
00401A0A: 83 C0 04             add eax, 4
00401A0D: 89 17                mov dword ptr [edi], edx
00401A0F: 83 C7 04             add edi, 4
00401A12: 3B C1                cmp eax, ecx
00401A14: 75 F2                jne 0x401a08
00401A16: 8B 43 08             mov eax, dword ptr [ebx + 8]
00401A19: 8B CB                mov ecx, ebx
00401A1B: 50                   push eax
00401A1C: 57                   push edi
00401A1D: E8 6E 06 04 00       call 0x442090
00401A22: 89 7B 08             mov dword ptr [ebx + 8], edi
00401A25: 8B 9E 5C 27 00 00    mov ebx, dword ptr [esi + 0x275c]
00401A2B: 3B 9E 60 27 00 00    cmp ebx, dword ptr [esi + 0x2760]
00401A31: 74 22                je 0x401a55
00401A33: 8B 3B                mov edi, dword ptr [ebx]
00401A35: 8B CF                mov ecx, edi
00401A37: E8 34 F9 00 00       call 0x411370
00401A3C: 85 FF                test edi, edi
00401A3E: 74 08                je 0x401a48
00401A40: 8B 17                mov edx, dword ptr [edi]
00401A42: 6A 01                push 1
00401A44: 8B CF                mov ecx, edi
00401A46: FF 12                call dword ptr [edx]
00401A48: 8B 86 60 27 00 00    mov eax, dword ptr [esi + 0x2760]
00401A4E: 83 C3 04             add ebx, 4
00401A51: 3B D8                cmp ebx, eax
00401A53: 75 DE                jne 0x401a33
00401A55: 8B 96 60 27 00 00    mov edx, dword ptr [esi + 0x2760]
00401A5B: 8B 8E 5C 27 00 00    mov ecx, dword ptr [esi + 0x275c]
00401A61: 8B C2                mov eax, edx
00401A63: 5B                   pop ebx
00401A64: 3B C2                cmp eax, edx
00401A66: 74 0E                je 0x401a76
00401A68: 8B 38                mov edi, dword ptr [eax]
00401A6A: 83 C0 04             add eax, 4
00401A6D: 89 39                mov dword ptr [ecx], edi
00401A6F: 83 C1 04             add ecx, 4
00401A72: 3B C2                cmp eax, edx
00401A74: 75 F2                jne 0x401a68
00401A76: 8B 86 60 27 00 00    mov eax, dword ptr [esi + 0x2760]
00401A7C: 89 8E 60 27 00 00    mov dword ptr [esi + 0x2760], ecx
00401A82: 89 44 24 08          mov dword ptr [esp + 8], eax
00401A86: C7 46 04 FF FF FF FF mov dword ptr [esi + 4], 0xffffffff
00401A8D: 33 FF                xor edi, edi
00401A8F: 8B 86 F0 35 00 00    mov eax, dword ptr [esi + 0x35f0]
00401A95: 85 C0                test eax, eax
00401A97: 74 1D                je 0x401ab6
00401A99: 8B 8E F4 35 00 00    mov ecx, dword ptr [esi + 0x35f4]
00401A9F: 2B C8                sub ecx, eax
00401AA1: C1 F9 02             sar ecx, 2
00401AA4: 3B F9                cmp edi, ecx
00401AA6: 73 0E                jae 0x401ab6
00401AA8: 8B D0                mov edx, eax
00401AAA: 8B 04 BA             mov eax, dword ptr [edx + edi*4]
00401AAD: 50                   push eax
00401AAE: 8B 08                mov ecx, dword ptr [eax]
00401AB0: FF 51 08             call dword ptr [ecx + 8]
00401AB3: 47                   inc edi
00401AB4: EB D9                jmp 0x401a8f
00401AB6: 8B 96 F4 35 00 00    mov edx, dword ptr [esi + 0x35f4]
00401ABC: 8B 8E F0 35 00 00    mov ecx, dword ptr [esi + 0x35f0]
00401AC2: 8B C2                mov eax, edx
00401AC4: 3B C2                cmp eax, edx
00401AC6: 74 22                je 0x401aea
00401AC8: 8B 38                mov edi, dword ptr [eax]
00401ACA: 83 C0 04             add eax, 4
00401ACD: 89 39                mov dword ptr [ecx], edi
00401ACF: 83 C1 04             add ecx, 4
00401AD2: 3B C2                cmp eax, edx
00401AD4: 75 F2                jne 0x401ac8
00401AD6: 8B 96 F4 35 00 00    mov edx, dword ptr [esi + 0x35f4]
00401ADC: 89 8E F4 35 00 00    mov dword ptr [esi + 0x35f4], ecx
00401AE2: 5F                   pop edi
00401AE3: 89 54 24 04          mov dword ptr [esp + 4], edx
00401AE7: 5E                   pop esi
00401AE8: 59                   pop ecx
00401AE9: C3                   ret 
00401AEA: 8B 86 F4 35 00 00    mov eax, dword ptr [esi + 0x35f4]
00401AF0: 89 8E F4 35 00 00    mov dword ptr [esi + 0x35f4], ecx
00401AF6: 5F                   pop edi
00401AF7: 89 44 24 04          mov dword ptr [esp + 4], eax
00401AFB: 5E                   pop esi
00401AFC: 59                   pop ecx
00401AFD: C3                   ret 
00401AFE: 90                   nop 
00401AFF: 90                   nop 
00401B00: 64 A1 00 00 00 00    mov eax, dword ptr fs:[0]
00401B06: 6A FF                push -1
00401B08: 68 87 24 4A 00       push 0x4a2487
00401B0D: 50                   push eax
00401B0E: 64 89 25 00 00 00 00 mov dword ptr fs:[0], esp
00401B15: 81 EC C4 01 00 00    sub esp, 0x1c4
00401B1B: 8D 44 24 24          lea eax, [esp + 0x24]
00401B1F: 53                   push ebx
00401B20: 8B 9C 24 D8 01 00 00 mov ebx, dword ptr [esp + 0x1d8]
00401B27: 55                   push ebp
00401B28: 56                   push esi
00401B29: 8B E9                mov ebp, ecx
00401B2B: 57                   push edi
00401B2C: B9 06 00 00 00       mov ecx, 6
00401B31: 8B F3                mov esi, ebx
00401B33: 8D 7C 24 34          lea edi, [esp + 0x34]
00401B37: F3 A5                rep movsd dword ptr es:[edi], dword ptr [esi]
00401B39: B9 06 00 00 00       mov ecx, 6
00401B3E: 8B 10                mov edx, dword ptr [eax]
00401B40: 83 C0 04             add eax, 4
00401B43: D1 E2                shl edx, 1
00401B45: 89 50 FC             mov dword ptr [eax - 4], edx
00401B48: 49                   dec ecx
00401B49: 75 F3                jne 0x401b3e
00401B4B: 8D 44 24 34          lea eax, [esp + 0x34]
00401B4F: 8D 4C 24 4C          lea ecx, [esp + 0x4c]
00401B53: 50                   push eax
00401B54: 51                   push ecx
00401B55: E8 66 86 01 00       call 0x41a1c0
00401B5A: 8D 54 24 48          lea edx, [esp + 0x48]
00401B5E: 8D 44 24 30          lea eax, [esp + 0x30]
00401B62: 33 F6                xor esi, esi
00401B64: 52                   push edx
00401B65: 50                   push eax
00401B66: 89 B4 24 EC 01 00 00 mov dword ptr [esp + 0x1ec], esi
00401B6D: E8 4E 86 01 00       call 0x41a1c0
00401B72: 83 C4 10             add esp, 0x10
00401B75: 8D 4C 24 28          lea ecx, [esp + 0x28]
00401B79: C6 84 24 DC 01 00 00 01 mov byte ptr [esp + 0x1dc], 1
00401B81: 51                   push ecx
00401B82: 8D 8D 08 35 00 00    lea ecx, [ebp + 0x3508]
00401B88: E8 A3 EE 09 00       call 0x4a0a30
00401B8D: 83 C3 18             add ebx, 0x18
00401B90: B9 4E 00 00 00       mov ecx, 0x4e
00401B95: 33 C0                xor eax, eax
00401B97: 8D BC 24 9C 00 00 00 lea edi, [esp + 0x9c]
00401B9E: F3 AB                rep stosd dword ptr es:[edi], eax
00401BA0: 8D 53 10             lea edx, [ebx + 0x10]
00401BA3: 89 74 24 14          mov dword ptr [esp + 0x14], esi
00401BA7: 8D B4 24 E0 00 00 00 lea esi, [esp + 0xe0]
00401BAE: 8D BD F0 34 00 00    lea edi, [ebp + 0x34f0]
00401BB4: 89 54 24 18          mov dword ptr [esp + 0x18], edx
00401BB8: 8B 44 24 18          mov eax, dword ptr [esp + 0x18]
00401BBC: 8D 4C 24 1C          lea ecx, [esp + 0x1c]
00401BC0: 83 C0 F0             add eax, -0x10
00401BC3: 50                   push eax
00401BC4: 51                   push ecx
00401BC5: E8 F6 85 01 00       call 0x41a1c0
00401BCA: 83 C4 08             add esp, 8
00401BCD: 8D 4C 24 1C          lea ecx, [esp + 0x1c]
00401BD1: C6 84 24 DC 01 00 00 02 mov byte ptr [esp + 0x1dc], 2
00401BD9: E8 02 F0 09 00       call 0x4a0be0
00401BDE: 8B 54 24 1C          mov edx, dword ptr [esp + 0x1c]
00401BE2: 8B 44 24 20          mov eax, dword ptr [esp + 0x20]
00401BE6: 8D 4E BC             lea ecx, [esi - 0x44]
00401BE9: C7 01 03 00 00 00    mov dword ptr [ecx], 3
00401BEF: 89 56 FC             mov dword ptr [esi - 4], edx
00401BF2: 8B 54 24 24          mov edx, dword ptr [esp + 0x24]
00401BF6: 89 06                mov dword ptr [esi], eax
00401BF8: 8B 44 24 18          mov eax, dword ptr [esp + 0x18]
00401BFC: 89 56 04             mov dword ptr [esi + 4], edx
00401BFF: 66 8B 50 FC          mov dx, word ptr [eax - 4]
00401C03: 66 89 17             mov word ptr [edi], dx
00401C06: 66 8B 10             mov dx, word ptr [eax]
00401C09: 66 89 57 02          mov word ptr [edi + 2], dx
00401C0D: 66 8B 40 04          mov ax, word ptr [eax + 4]
00401C11: 66 89 47 04          mov word ptr [edi + 4], ax
00401C15: 0F BF 17             movsx edx, word ptr [edi]
00401C18: 89 54 24 10          mov dword ptr [esp + 0x10], edx
00401C1C: DB 44 24 10          fild dword ptr [esp + 0x10]
00401C20: 0F BF 57 02          movsx edx, word ptr [edi + 2]
00401C24: D8 0D CC 73 4A 00    fmul dword ptr [0x4a73cc]
00401C2A: 89 54 24 10          mov dword ptr [esp + 0x10], edx
00401C2E: 0F BF C0             movsx eax, ax
00401C31: D9 5E C0             fstp dword ptr [esi - 0x40]
00401C34: DB 44 24 10          fild dword ptr [esp + 0x10]
00401C38: 89 44 24 10          mov dword ptr [esp + 0x10], eax
00401C3C: D8 0D CC 73 4A 00    fmul dword ptr [0x4a73cc]
00401C42: D9 5E C4             fstp dword ptr [esi - 0x3c]
00401C45: DB 44 24 10          fild dword ptr [esp + 0x10]
00401C49: D8 0D CC 73 4A 00    fmul dword ptr [0x4a73cc]
00401C4F: D9 5E C8             fstp dword ptr [esi - 0x38]
00401C52: D9 44 24 1C          fld dword ptr [esp + 0x1c]
00401C56: D8 1D C8 73 4A 00    fcomp dword ptr [0x4a73c8]
00401C5C: DF E0                fnstsw ax
00401C5E: F6 C4 40             test ah, 0x40
00401C61: 74 39                je 0x401c9c
00401C63: D9 44 24 20          fld dword ptr [esp + 0x20]
00401C67: D8 1D C8 73 4A 00    fcomp dword ptr [0x4a73c8]
00401C6D: DF E0                fnstsw ax
00401C6F: F6 C4 40             test ah, 0x40
00401C72: 74 28                je 0x401c9c
00401C74: D9 44 24 24          fld dword ptr [esp + 0x24]
00401C78: D8 1D C8 73 4A 00    fcomp dword ptr [0x4a73c8]
00401C7E: DF E0                fnstsw ax
00401C80: F6 C4 40             test ah, 0x40
00401C83: 74 17                je 0x401c9c
00401C85: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00401C8A: 8B 54 24 14          mov edx, dword ptr [esp + 0x14]
00401C8E: 6A 00                push 0
00401C90: 52                   push edx
00401C91: 8B 08                mov ecx, dword ptr [eax]
00401C93: 50                   push eax
00401C94: FF 91 B8 00 00 00    call dword ptr [ecx + 0xb8]
00401C9A: EB 29                jmp 0x401cc5
00401C9C: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00401CA1: 51                   push ecx
00401CA2: 8B 4C 24 18          mov ecx, dword ptr [esp + 0x18]
00401CA6: 8B 10                mov edx, dword ptr [eax]
00401CA8: 51                   push ecx
00401CA9: 50                   push eax
00401CAA: FF 92 B0 00 00 00    call dword ptr [edx + 0xb0]
00401CB0: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00401CB5: 8B 4C 24 14          mov ecx, dword ptr [esp + 0x14]
00401CB9: 6A 01                push 1
00401CBB: 51                   push ecx
00401CBC: 8B 10                mov edx, dword ptr [eax]
00401CBE: 50                   push eax
00401CBF: FF 92 B8 00 00 00    call dword ptr [edx + 0xb8]
00401CC5: 8B 44 24 14          mov eax, dword ptr [esp + 0x14]
00401CC9: 8B 54 24 18          mov edx, dword ptr [esp + 0x18]
00401CCD: 40                   inc eax
00401CCE: 83 C2 18             add edx, 0x18
00401CD1: 83 C7 08             add edi, 8
00401CD4: 83 C6 68             add esi, 0x68
00401CD7: 83 F8 03             cmp eax, 3
00401CDA: C6 84 24 DC 01 00 00 01 mov byte ptr [esp + 0x1dc], 1
00401CE2: 89 44 24 14          mov dword ptr [esp + 0x14], eax
00401CE6: 89 54 24 18          mov dword ptr [esp + 0x18], edx
00401CEA: 0F 8C C8 FE FF FF    jl 0x401bb8
00401CF0: B9 11 00 00 00       mov ecx, 0x11
00401CF5: 33 C0                xor eax, eax
00401CF7: 8D 7C 24 58          lea edi, [esp + 0x58]
00401CFB: F3 AB                rep stosd dword ptr es:[edi], eax
00401CFD: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00401D02: 8D 4C 24 58          lea ecx, [esp + 0x58]
00401D06: C7 44 24 68 00 00 80 3F mov dword ptr [esp + 0x68], 0x3f800000
00401D0E: C7 44 24 6C 00 00 80 3F mov dword ptr [esp + 0x6c], 0x3f800000
00401D16: C7 44 24 70 00 00 80 3F mov dword ptr [esp + 0x70], 0x3f800000
00401D1E: C7 44 24 58 00 00 80 3F mov dword ptr [esp + 0x58], 0x3f800000
00401D26: C7 44 24 5C 00 00 80 3F mov dword ptr [esp + 0x5c], 0x3f800000
00401D2E: C7 44 24 60 00 00 80 3F mov dword ptr [esp + 0x60], 0x3f800000
00401D36: 8B 10                mov edx, dword ptr [eax]
00401D38: 51                   push ecx
00401D39: 50                   push eax
00401D3A: FF 92 A8 00 00 00    call dword ptr [edx + 0xa8]
00401D40: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00401D45: 68 80 80 80 FF       push 0xff808080
00401D4A: 68 8B 00 00 00       push 0x8b
00401D4F: 50                   push eax
00401D50: 8B 10                mov edx, dword ptr [eax]
00401D52: FF 92 C8 00 00 00    call dword ptr [edx + 0xc8]
00401D58: 8B 43 54             mov eax, dword ptr [ebx + 0x54]
00401D5B: 83 C3 54             add ebx, 0x54
00401D5E: 89 44 24 10          mov dword ptr [esp + 0x10], eax
00401D62: 68 00 00 00 41       push 0x41000000
00401D67: DB 44 24 14          fild dword ptr [esp + 0x14]
00401D6B: 68 CD CC 4C 3D       push 0x3d4ccccd
00401D70: 68 00 00 40 3F       push 0x3f400000
00401D75: 8D B5 2C 35 00 00    lea esi, [ebp + 0x352c]
00401D7B: 51                   push ecx
00401D7C: D8 3D C4 73 4A 00    fdivr dword ptr [0x4a73c4]
00401D82: 8B CE                mov ecx, esi
00401D84: A3 94 EC 4B 00       mov dword ptr [0x4bec94], eax
00401D89: D9 E8                fld1 
00401D8B: D9 F3                fpatan 
00401D8D: DC C0                fadd st(0), st(0)
00401D8F: D9 1C 24             fstp dword ptr [esp]
00401D92: E8 09 2F 00 00       call 0x404ca0
00401D97: 83 EC 0C             sub esp, 0xc
00401D9A: 8B CC                mov ecx, esp
00401D9C: 89 64 24 1C          mov dword ptr [esp + 0x1c], esp
00401DA0: 68 00 00 80 BF       push 0xbf800000
00401DA5: 6A 00                push 0
00401DA7: 6A 00                push 0
00401DA9: E8 62 EC 09 00       call 0x4a0a10
00401DAE: 83 EC 0C             sub esp, 0xc
00401DB1: 8D 44 24 40          lea eax, [esp + 0x40]
00401DB5: 8B CC                mov ecx, esp
00401DB7: 89 64 24 30          mov dword ptr [esp + 0x30], esp
00401DBB: 50                   push eax
00401DBC: C6 84 24 F8 01 00 00 03 mov byte ptr [esp + 0x1f8], 3
00401DC4: E8 67 EC 09 00       call 0x4a0a30
00401DC9: 83 EC 0C             sub esp, 0xc
00401DCC: 8D 54 24 70          lea edx, [esp + 0x70]
00401DD0: 8B CC                mov ecx, esp
00401DD2: 89 64 24 38          mov dword ptr [esp + 0x38], esp
00401DD6: 52                   push edx
00401DD7: C6 84 24 04 02 00 00 04 mov byte ptr [esp + 0x204], 4
00401DDF: E8 4C EC 09 00       call 0x4a0a30
00401DE4: 8B CE                mov ecx, esi
00401DE6: C6 84 24 00 02 00 00 01 mov byte ptr [esp + 0x200], 1
00401DEE: E8 FD 2D 00 00       call 0x404bf0
00401DF3: 8D BD 64 32 00 00    lea edi, [ebp + 0x3264]
00401DF9: B9 2E 00 00 00       mov ecx, 0x2e
00401DFE: 83 C3 24             add ebx, 0x24
00401E01: F3 A5                rep movsd dword ptr es:[edi], dword ptr [esi]
00401E03: 8B 03                mov eax, dword ptr [ebx]
00401E05: 83 C3 04             add ebx, 4
00401E08: 89 45 18             mov dword ptr [ebp + 0x18], eax
00401E0B: 8A D0                mov dl, al
00401E0D: 8B 0B                mov ecx, dword ptr [ebx]
00401E0F: 83 C3 04             add ebx, 4
00401E12: 89 4D 1C             mov dword ptr [ebp + 0x1c], ecx
00401E15: 88 15 28 22 4F 00    mov byte ptr [0x4f2228], dl
00401E1B: 8A 45 1C             mov al, byte ptr [ebp + 0x1c]
00401E1E: 8D 75 20             lea esi, [ebp + 0x20]
00401E21: A2 29 22 4F 00       mov byte ptr [0x4f2229], al
00401E26: B9 08 00 00 00       mov ecx, 8
00401E2B: 83 C8 FF             or eax, 0xffffffff
00401E2E: 8B FE                mov edi, esi
00401E30: F3 AB                rep stosd dword ptr es:[edi], eax
00401E32: 66 AB                stosw word ptr es:[edi], ax
00401E34: AA                   stosb byte ptr es:[edi], al
00401E35: 8B 4D 18             mov ecx, dword ptr [ebp + 0x18]
00401E38: 33 C0                xor eax, eax
00401E3A: 0F AF 4D 1C          imul ecx, dword ptr [ebp + 0x1c]
00401E3E: 85 C9                test ecx, ecx
00401E40: 7E 14                jle 0x401e56
00401E42: 8A 13                mov dl, byte ptr [ebx]
00401E44: 83 C3 04             add ebx, 4
00401E47: 88 14 06             mov byte ptr [esi + eax], dl
00401E4A: 8B 4D 18             mov ecx, dword ptr [ebp + 0x18]
00401E4D: 0F AF 4D 1C          imul ecx, dword ptr [ebp + 0x1c]
00401E51: 40                   inc eax
00401E52: 3B C1                cmp eax, ecx
00401E54: 7C EC                jl 0x401e42
00401E56: 8B 8C 24 D4 01 00 00 mov ecx, dword ptr [esp + 0x1d4]
00401E5D: 5F                   pop edi
00401E5E: 5E                   pop esi
00401E5F: 5D                   pop ebp
00401E60: 64 89 0D 00 00 00 00 mov dword ptr fs:[0], ecx
00401E67: 5B                   pop ebx
00401E68: 81 C4 D0 01 00 00    add esp, 0x1d0
00401E6E: C2 04 00             ret 4
00401E71: 90                   nop 
00401E72: 90                   nop 
00401E73: 90                   nop 
00401E74: 90                   nop 
00401E75: 90                   nop 
00401E76: 90                   nop 
00401E77: 90                   nop 
00401E78: 90                   nop 
00401E79: 90                   nop 
00401E7A: 90                   nop 
00401E7B: 90                   nop 
00401E7C: 90                   nop 
00401E7D: 90                   nop 
00401E7E: 90                   nop 
00401E7F: 90                   nop 
00401E80: 8B 44 24 08          mov eax, dword ptr [esp + 8]
00401E84: 0F BF 15 24 22 4F 00 movsx edx, word ptr [0x4f2224]
00401E8B: 8D 0C 00             lea ecx, [eax + eax]
00401E8E: 8B 44 24 0C          mov eax, dword ptr [esp + 0xc]
00401E92: 2B CA                sub ecx, edx
00401E94: 8D 14 00             lea edx, [eax + eax]
00401E97: 0F BF 05 26 22 4F 00 movsx eax, word ptr [0x4f2226]
00401E9E: 2B D0                sub edx, eax
00401EA0: 8B 44 24 04          mov eax, dword ptr [esp + 4]
00401EA4: 89 08                mov dword ptr [eax], ecx
00401EA6: 89 50 04             mov dword ptr [eax + 4], edx
00401EA9: C2 0C 00             ret 0xc
00401EAC: 90                   nop 
00401EAD: 90                   nop 
00401EAE: 90                   nop 
00401EAF: 90                   nop 
00401EB0: 81 EC A4 00 00 00    sub esp, 0xa4
00401EB6: 57                   push edi
00401EB7: 8B F9                mov edi, ecx
00401EB9: 83 7F 04 FF          cmp dword ptr [edi + 4], -1
00401EBD: 0F 84 05 03 00 00    je 0x4021c8
00401EC3: A1 A4 3F 4F 00       mov eax, dword ptr [0x4f3fa4]
00401EC8: 85 C0                test eax, eax
00401ECA: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00401ECF: 8B 08                mov ecx, dword ptr [eax]
00401ED1: 74 18                je 0x401eeb
00401ED3: 6A 02                push 2
00401ED5: 6A 11                push 0x11
00401ED7: 6A 00                push 0
00401ED9: 50                   push eax
00401EDA: FF 91 FC 00 00 00    call dword ptr [ecx + 0xfc]
00401EE0: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00401EE5: 6A 02                push 2
00401EE7: 8B 10                mov edx, dword ptr [eax]
00401EE9: EB 16                jmp 0x401f01
00401EEB: 6A 01                push 1
00401EED: 6A 11                push 0x11
00401EEF: 6A 00                push 0
00401EF1: 50                   push eax
00401EF2: FF 91 FC 00 00 00    call dword ptr [ecx + 0xfc]
00401EF8: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00401EFD: 6A 01                push 1
00401EFF: 8B 10                mov edx, dword ptr [eax]
00401F01: 6A 10                push 0x10
00401F03: 6A 00                push 0
00401F05: 50                   push eax
00401F06: FF 92 FC 00 00 00    call dword ptr [edx + 0xfc]
00401F0C: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00401F11: 6A 00                push 0
00401F13: 6A 0E                push 0xe
00401F15: 50                   push eax
00401F16: 8B 08                mov ecx, dword ptr [eax]
00401F18: FF 91 C8 00 00 00    call dword ptr [ecx + 0xc8]
00401F1E: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00401F23: 6A 00                push 0
00401F25: 6A 1B                push 0x1b
00401F27: 50                   push eax
00401F28: 8B 10                mov edx, dword ptr [eax]
00401F2A: FF 92 C8 00 00 00    call dword ptr [edx + 0xc8]
00401F30: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00401F35: 6A 05                push 5
00401F37: 6A 13                push 0x13
00401F39: 50                   push eax
00401F3A: 8B 08                mov ecx, dword ptr [eax]
00401F3C: FF 91 C8 00 00 00    call dword ptr [ecx + 0xc8]
00401F42: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00401F47: 6A 06                push 6
00401F49: 6A 14                push 0x14
00401F4B: 50                   push eax
00401F4C: 8B 10                mov edx, dword ptr [eax]
00401F4E: FF 92 C8 00 00 00    call dword ptr [edx + 0xc8]
00401F54: A0 29 22 4F 00       mov al, byte ptr [0x4f2229]
00401F59: C7 44 24 0C 00 00 00 00 mov dword ptr [esp + 0xc], 0
00401F61: 84 C0                test al, al
00401F63: 0F 8E 13 02 00 00    jle 0x40217c
00401F69: 53                   push ebx
00401F6A: 55                   push ebp
00401F6B: 8B 2D 84 73 4A 00    mov ebp, dword ptr [0x4a7384]
00401F71: 56                   push esi
00401F72: 0F BE 05 28 22 4F 00 movsx eax, byte ptr [0x4f2228]
00401F79: 33 DB                xor ebx, ebx
00401F7B: 85 C0                test eax, eax
00401F7D: 0F 8E DE 01 00 00    jle 0x402161
00401F83: 0F AF 44 24 18       imul eax, dword ptr [esp + 0x18]
00401F88: 03 C3                add eax, ebx
00401F8A: 8D 34 80             lea esi, [eax + eax*4]
00401F8D: C1 E6 02             shl esi, 2
00401F90: 66 83 BE 82 06 4F 00 FF cmp word ptr [esi + 0x4f0682], -1
00401F98: 0F 84 B3 01 00 00    je 0x402151
00401F9E: 0F BF 86 82 06 4F 00 movsx eax, word ptr [esi + 0x4f0682]
00401FA5: 8B 8F 5C 27 00 00    mov ecx, dword ptr [edi + 0x275c]
00401FAB: 8B 14 81             mov edx, dword ptr [ecx + eax*4]
00401FAE: 8B 4A 74             mov ecx, dword ptr [edx + 0x74]
00401FB1: 85 C9                test ecx, ecx
00401FB3: 8D 42 70             lea eax, [edx + 0x70]
00401FB6: 89 44 24 10          mov dword ptr [esp + 0x10], eax
00401FBA: 74 0C                je 0x401fc8
00401FBC: 8B 40 08             mov eax, dword ptr [eax + 8]
00401FBF: 2B C1                sub eax, ecx
00401FC1: A9 FC FF FF FF       test eax, 0xfffffffc
00401FC6: 75 04                jne 0x401fcc
00401FC8: 33 C9                xor ecx, ecx
00401FCA: EB 05                jmp 0x401fd1
00401FCC: 8B 4A 74             mov ecx, dword ptr [edx + 0x74]
00401FCF: 8B 09                mov ecx, dword ptr [ecx]
00401FD1: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00401FD6: 8B 49 1C             mov ecx, dword ptr [ecx + 0x1c]
00401FD9: 51                   push ecx
00401FDA: 6A 00                push 0
00401FDC: 8B 10                mov edx, dword ptr [eax]
00401FDE: 50                   push eax
00401FDF: FF 92 F4 00 00 00    call dword ptr [edx + 0xf4]
00401FE5: 0F BF 8E 78 06 4F 00 movsx ecx, word ptr [esi + 0x4f0678]
00401FEC: 0F BF 86 76 06 4F 00 movsx eax, word ptr [esi + 0x4f0676]
00401FF3: 51                   push ecx
00401FF4: 8D 94 24 A0 00 00 00 lea edx, [esp + 0xa0]
00401FFB: 50                   push eax
00401FFC: 52                   push edx
00401FFD: 8B CF                mov ecx, edi
00401FFF: E8 7C FE FF FF       call 0x401e80
00402004: 8B 50 04             mov edx, dword ptr [eax + 4]
00402007: 8B 08                mov ecx, dword ptr [eax]
00402009: 8B C2                mov eax, edx
0040200B: 89 4C 24 10          mov dword ptr [esp + 0x10], ecx
0040200F: 89 44 24 20          mov dword ptr [esp + 0x20], eax
00402013: 05 00 01 00 00       add eax, 0x100
00402018: 89 4C 24 1C          mov dword ptr [esp + 0x1c], ecx
0040201C: 81 C1 00 01 00 00    add ecx, 0x100
00402022: 89 44 24 28          mov dword ptr [esp + 0x28], eax
00402026: 8D 44 24 1C          lea eax, [esp + 0x1c]
0040202A: 89 4C 24 24          mov dword ptr [esp + 0x24], ecx
0040202E: 50                   push eax
0040202F: 8D 8C 24 A8 00 00 00 lea ecx, [esp + 0xa8]
00402036: 68 68 4C 4D 00       push 0x4d4c68
0040203B: 51                   push ecx
0040203C: 89 54 24 20          mov dword ptr [esp + 0x20], edx
00402040: FF D5                call ebp
00402042: 85 C0                test eax, eax
00402044: 0F 84 07 01 00 00    je 0x402151
0040204A: DB 44 24 1C          fild dword ptr [esp + 0x1c]
0040204E: 8B 44 24 28          mov eax, dword ptr [esp + 0x28]
00402052: 8B 4C 24 20          mov ecx, dword ptr [esp + 0x20]
00402056: 2B C1                sub eax, ecx
00402058: 8B 4C 24 24          mov ecx, dword ptr [esp + 0x24]
0040205C: D9 54 24 2C          fst dword ptr [esp + 0x2c]
00402060: DB 44 24 28          fild dword ptr [esp + 0x28]
00402064: C7 44 24 40 00 00 00 00 mov dword ptr [esp + 0x40], 0
0040206C: C7 44 24 5C 00 00 00 00 mov dword ptr [esp + 0x5c], 0
00402074: C7 44 24 60 00 00 00 00 mov dword ptr [esp + 0x60], 0
0040207C: C7 84 24 98 00 00 00 00 00 00 00 mov dword ptr [esp + 0x98], 0
00402087: D9 54 24 10          fst dword ptr [esp + 0x10]
0040208B: D9 5C 24 30          fstp dword ptr [esp + 0x30]
0040208F: 8B 54 24 10          mov edx, dword ptr [esp + 0x10]
00402093: 89 44 24 10          mov dword ptr [esp + 0x10], eax
00402097: D9 5C 24 48          fstp dword ptr [esp + 0x48]
0040209B: DB 44 24 20          fild dword ptr [esp + 0x20]
0040209F: 8B 44 24 1C          mov eax, dword ptr [esp + 0x1c]
004020A3: 89 54 24 68          mov dword ptr [esp + 0x68], edx
004020A7: 2B C8                sub ecx, eax
004020A9: 8D 44 24 34          lea eax, [esp + 0x34]
004020AD: D9 54 24 4C          fst dword ptr [esp + 0x4c]
004020B1: DB 44 24 24          fild dword ptr [esp + 0x24]
004020B5: D9 54 24 64          fst dword ptr [esp + 0x64]
004020B9: D9 9C 24 80 00 00 00 fstp dword ptr [esp + 0x80]
004020C0: D9 9C 24 84 00 00 00 fstp dword ptr [esp + 0x84]
004020C7: DB 44 24 10          fild dword ptr [esp + 0x10]
004020CB: 89 4C 24 10          mov dword ptr [esp + 0x10], ecx
004020CF: B9 04 00 00 00       mov ecx, 4
004020D4: D9 54 24 44          fst dword ptr [esp + 0x44]
004020D8: DB 44 24 10          fild dword ptr [esp + 0x10]
004020DC: D9 54 24 10          fst dword ptr [esp + 0x10]
004020E0: D9 5C 24 78          fstp dword ptr [esp + 0x78]
004020E4: 8B 54 24 10          mov edx, dword ptr [esp + 0x10]
004020E8: D9 5C 24 7C          fstp dword ptr [esp + 0x7c]
004020EC: 89 94 24 94 00 00 00 mov dword ptr [esp + 0x94], edx
004020F3: C7 40 08 FF FF FF FF mov dword ptr [eax + 8], 0xffffffff
004020FA: C7 00 00 00 00 00    mov dword ptr [eax], 0
00402100: C7 40 04 00 00 80 3F mov dword ptr [eax + 4], 0x3f800000
00402107: D9 40 10             fld dword ptr [eax + 0x10]
0040210A: D8 0D D0 73 4A 00    fmul dword ptr [0x4a73d0]
00402110: 83 C0 1C             add eax, 0x1c
00402113: 49                   dec ecx
00402114: D9 58 F4             fstp dword ptr [eax - 0xc]
00402117: D9 40 F0             fld dword ptr [eax - 0x10]
0040211A: D8 0D D0 73 4A 00    fmul dword ptr [0x4a73d0]
00402120: D9 58 F0             fstp dword ptr [eax - 0x10]
00402123: 75 CE                jne 0x4020f3
00402125: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
0040212A: 68 44 01 00 00       push 0x144
0040212F: 50                   push eax
00402130: 8B 08                mov ecx, dword ptr [eax]
00402132: FF 91 30 01 00 00    call dword ptr [ecx + 0x130]
00402138: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
0040213D: 8D 4C 24 2C          lea ecx, [esp + 0x2c]
00402141: 6A 1C                push 0x1c
00402143: 51                   push ecx
00402144: 8B 10                mov edx, dword ptr [eax]
00402146: 6A 02                push 2
00402148: 6A 05                push 5
0040214A: 50                   push eax
0040214B: FF 92 20 01 00 00    call dword ptr [edx + 0x120]
00402151: 0F BE 05 28 22 4F 00 movsx eax, byte ptr [0x4f2228]
00402158: 43                   inc ebx
00402159: 3B D8                cmp ebx, eax
0040215B: 0F 8C 22 FE FF FF    jl 0x401f83
00402161: 8B 44 24 18          mov eax, dword ptr [esp + 0x18]
00402165: 0F BE 15 29 22 4F 00 movsx edx, byte ptr [0x4f2229]
0040216C: 40                   inc eax
0040216D: 3B C2                cmp eax, edx
0040216F: 89 44 24 18          mov dword ptr [esp + 0x18], eax
00402173: 0F 8C F9 FD FF FF    jl 0x401f72
00402179: 5E                   pop esi
0040217A: 5D                   pop ebp
0040217B: 5B                   pop ebx
0040217C: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00402181: 6A 00                push 0
00402183: 6A 1B                push 0x1b
00402185: 50                   push eax
00402186: 8B 08                mov ecx, dword ptr [eax]
00402188: FF 91 C8 00 00 00    call dword ptr [ecx + 0xc8]
0040218E: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00402193: 6A 01                push 1
00402195: 6A 0E                push 0xe
00402197: 50                   push eax
00402198: 8B 10                mov edx, dword ptr [eax]
0040219A: FF 92 C8 00 00 00    call dword ptr [edx + 0xc8]
004021A0: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
004021A5: 6A 01                push 1
004021A7: 6A 11                push 0x11
004021A9: 6A 00                push 0
004021AB: 8B 08                mov ecx, dword ptr [eax]
004021AD: 50                   push eax
004021AE: FF 91 FC 00 00 00    call dword ptr [ecx + 0xfc]
004021B4: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
004021B9: 6A 01                push 1
004021BB: 6A 10                push 0x10
004021BD: 6A 00                push 0
004021BF: 8B 10                mov edx, dword ptr [eax]
004021C1: 50                   push eax
004021C2: FF 92 FC 00 00 00    call dword ptr [edx + 0xfc]
004021C8: 5F                   pop edi
004021C9: 81 C4 A4 00 00 00    add esp, 0xa4
004021CF: C3                   ret 
004021D0: 6A FF                push -1
004021D2: 68 A8 24 4A 00       push 0x4a24a8
004021D7: 64 A1 00 00 00 00    mov eax, dword ptr fs:[0]
004021DD: 50                   push eax
004021DE: 64 89 25 00 00 00 00 mov dword ptr fs:[0], esp
004021E5: 83 EC 54             sub esp, 0x54
004021E8: 8B 41 04             mov eax, dword ptr [ecx + 4]
004021EB: 89 4C 24 2C          mov dword ptr [esp + 0x2c], ecx
004021EF: 83 F8 FF             cmp eax, -1
004021F2: 0F 84 04 08 00 00    je 0x4029fc
004021F8: 83 F8 2C             cmp eax, 0x2c
004021FB: 0F 84 FB 07 00 00    je 0x4029fc
00402201: 53                   push ebx
00402202: 55                   push ebp
00402203: 56                   push esi
00402204: 57                   push edi
00402205: E8 F6 F2 FF FF       call 0x401500
0040220A: A1 A4 3F 4F 00       mov eax, dword ptr [0x4f3fa4]
0040220F: 33 ED                xor ebp, ebp
00402211: 3B C5                cmp eax, ebp
00402213: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00402218: 8B 08                mov ecx, dword ptr [eax]
0040221A: 74 17                je 0x402233
0040221C: 6A 02                push 2
0040221E: 6A 11                push 0x11
00402220: 55                   push ebp
00402221: 50                   push eax
00402222: FF 91 FC 00 00 00    call dword ptr [ecx + 0xfc]
00402228: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
0040222D: 6A 02                push 2
0040222F: 8B 10                mov edx, dword ptr [eax]
00402231: EB 15                jmp 0x402248
00402233: 6A 01                push 1
00402235: 6A 11                push 0x11
00402237: 55                   push ebp
00402238: 50                   push eax
00402239: FF 91 FC 00 00 00    call dword ptr [ecx + 0xfc]
0040223F: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00402244: 6A 01                push 1
00402246: 8B 10                mov edx, dword ptr [eax]
00402248: 6A 10                push 0x10
0040224A: 55                   push ebp
0040224B: 50                   push eax
0040224C: FF 92 FC 00 00 00    call dword ptr [edx + 0xfc]
00402252: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00402257: 55                   push ebp
00402258: 6A 0E                push 0xe
0040225A: 50                   push eax
0040225B: 8B 08                mov ecx, dword ptr [eax]
0040225D: BF 2C 09 4F 00       mov edi, 0x4f092c
00402262: FF 91 C8 00 00 00    call dword ptr [ecx + 0xc8]
00402268: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
0040226D: 6A 01                push 1
0040226F: 6A 1B                push 0x1b
00402271: 50                   push eax
00402272: 8B 10                mov edx, dword ptr [eax]
00402274: FF 92 C8 00 00 00    call dword ptr [edx + 0xc8]
0040227A: 8A 44 24 13          mov al, byte ptr [esp + 0x13]
0040227E: 89 6C 24 58          mov dword ptr [esp + 0x58], ebp
00402282: 88 44 24 54          mov byte ptr [esp + 0x54], al
00402286: 89 6C 24 5C          mov dword ptr [esp + 0x5c], ebp
0040228A: 89 6C 24 60          mov dword ptr [esp + 0x60], ebp
0040228E: 89 6C 24 6C          mov dword ptr [esp + 0x6c], ebp
00402292: C7 44 24 2C BB 00 00 00 mov dword ptr [esp + 0x2c], 0xbb
0040229A: 0F BE 4F 20          movsx ecx, byte ptr [edi + 0x20]
0040229E: 89 4C 24 40          mov dword ptr [esp + 0x40], ecx
004022A2: 66 8B 44 4F 06       mov ax, word ptr [edi + ecx*2 + 6]
004022A7: 66 3D FF FF          cmp ax, 0xffff
004022AB: 0F 84 01 04 00 00    je 0x4026b2
004022B1: 83 F9 FF             cmp ecx, -1
004022B4: 0F 84 F8 03 00 00    je 0x4026b2
004022BA: 66 3D FE FF          cmp ax, 0xfffe
004022BE: 0F 84 65 04 00 00    je 0x402729
004022C4: 80 7F 21 01          cmp byte ptr [edi + 0x21], 1
004022C8: 0F 84 5B 04 00 00    je 0x402729
004022CE: 8B 4C 24 3C          mov ecx, dword ptr [esp + 0x3c]
004022D2: 0F BF C0             movsx eax, ax
004022D5: 8D 14 C5 00 00 00 00 lea edx, [eax*8]
004022DC: 2B D0                sub edx, eax
004022DE: 0F BF 47 02          movsx eax, word ptr [edi + 2]
004022E2: 8D 9C 51 6C 27 00 00 lea ebx, [ecx + edx*2 + 0x276c]
004022E9: 0F BF 57 04          movsx edx, word ptr [edi + 4]
004022ED: 52                   push edx
004022EE: 50                   push eax
004022EF: 8D 44 24 54          lea eax, [esp + 0x54]
004022F3: 50                   push eax
004022F4: E8 87 FB FF FF       call 0x401e80
004022F9: 8B 28                mov ebp, dword ptr [eax]
004022FB: 89 6C 24 30          mov dword ptr [esp + 0x30], ebp
004022FF: 8B 48 04             mov ecx, dword ptr [eax + 4]
00402302: 8A 47 21             mov al, byte ptr [edi + 0x21]
00402305: A8 80                test al, 0x80
00402307: 89 4C 24 48          mov dword ptr [esp + 0x48], ecx
0040230B: 0F 84 A1 01 00 00    je 0x4024b2
00402311: 66 8B 47 06          mov ax, word ptr [edi + 6]
00402315: 66 85 C0             test ax, ax
00402318: 74 0C                je 0x402326
0040231A: 66 3D 03 00          cmp ax, 3
0040231E: 74 06                je 0x402326
00402320: 66 3D 04 00          cmp ax, 4
00402324: 75 0A                jne 0x402330
00402326: C6 44 24 20 06       mov byte ptr [esp + 0x20], 6
0040232B: C6 44 24 13 03       mov byte ptr [esp + 0x13], 3
00402330: 66 3D 01 00          cmp ax, 1
00402334: 74 0C                je 0x402342
00402336: 66 3D 05 00          cmp ax, 5
0040233A: 74 06                je 0x402342
0040233C: 66 3D 06 00          cmp ax, 6
00402340: 75 0A                jne 0x40234c
00402342: C6 44 24 20 02       mov byte ptr [esp + 0x20], 2
00402347: C6 44 24 13 01       mov byte ptr [esp + 0x13], 1
0040234C: 66 3D 02 00          cmp ax, 2
00402350: 75 0A                jne 0x40235c
00402352: C6 44 24 20 04       mov byte ptr [esp + 0x20], 4
00402357: C6 44 24 13 0A       mov byte ptr [esp + 0x13], 0xa
0040235C: 8B 74 24 20          mov esi, dword ptr [esp + 0x20]
00402360: 81 E6 FF 00 00 00    and esi, 0xff
00402366: 56                   push esi
00402367: E8 64 3C 08 00       call 0x485fd0
0040236C: 8A C8                mov cl, al
0040236E: 83 C4 04             add esp, 4
00402371: 0F BE C1             movsx eax, cl
00402374: D1 EE                shr esi, 1
00402376: 3B C6                cmp eax, esi
00402378: 7E 07                jle 0x402381
0040237A: 99                   cdq 
0040237B: F7 FE                idiv esi
0040237D: 8B CA                mov ecx, edx
0040237F: F6 D9                neg cl
00402381: 66 8B 47 06          mov ax, word ptr [edi + 6]
00402385: 66 85 C0             test ax, ax
00402388: 74 0C                je 0x402396
0040238A: 66 3D 03 00          cmp ax, 3
0040238E: 74 06                je 0x402396
00402390: 66 3D 04 00          cmp ax, 4
00402394: 75 38                jne 0x4023ce
00402396: 33 C0                xor eax, eax
00402398: BE 03 00 00 00       mov esi, 3
0040239D: 66 A1 8E 3F 4F 00    mov ax, word ptr [0x4f3f8e]
004023A3: 99                   cdq 
004023A4: F7 FE                idiv esi
004023A6: 85 D2                test edx, edx
004023A8: 75 08                jne 0x4023b2
004023AA: 66 0F BE D1          movsx dx, cl
004023AE: 66 01 57 02          add word ptr [edi + 2], dx
004023B2: B8 40 01 00 00       mov eax, 0x140
004023B7: 66 39 47 02          cmp word ptr [edi + 2], ax
004023BB: 7E 06                jle 0x4023c3
004023BD: 66 C7 47 02 00 00    mov word ptr [edi + 2], 0
004023C3: 66 83 7F 02 00       cmp word ptr [edi + 2], 0
004023C8: 7D 04                jge 0x4023ce
004023CA: 66 89 47 02          mov word ptr [edi + 2], ax
004023CE: 0F BE C1             movsx eax, cl
004023D1: 0F BF 53 02          movsx edx, word ptr [ebx + 2]
004023D5: 8D 4C 45 00          lea ecx, [ebp + eax*2]
004023D9: 89 54 24 18          mov dword ptr [esp + 0x18], edx
004023DD: 0F BF 03             movsx eax, word ptr [ebx]
004023E0: 89 4C 24 30          mov dword ptr [esp + 0x30], ecx
004023E4: 33 C9                xor ecx, ecx
004023E6: 8A 4B 0A             mov cl, byte ptr [ebx + 0xa]
004023E9: 89 44 24 1C          mov dword ptr [esp + 0x1c], eax
004023ED: 8B F1                mov esi, ecx
004023EF: 33 C9                xor ecx, ecx
004023F1: C1 E0 06             shl eax, 6
004023F4: 8D 14 36             lea edx, [esi + esi]
004023F7: 89 74 24 24          mov dword ptr [esp + 0x24], esi
004023FB: 89 54 24 34          mov dword ptr [esp + 0x34], edx
004023FF: 8A 4B 0B             mov cl, byte ptr [ebx + 0xb]
00402402: 0F BE 6B 0C          movsx ebp, byte ptr [ebx + 0xc]
00402406: 99                   cdq 
00402407: 81 E2 FF 00 00 00    and edx, 0xff
0040240D: 89 4C 24 28          mov dword ptr [esp + 0x28], ecx
00402411: 03 C2                add eax, edx
00402413: 8A 53 0D             mov dl, byte ptr [ebx + 0xd]
00402416: 8B F0                mov esi, eax
00402418: 83 E2 03             and edx, 3
0040241B: 66 0F B6 44 24 13    movzx ax, byte ptr [esp + 0x13]
00402421: C1 FE 08             sar esi, 8
00402424: 66 01 47 04          add word ptr [edi + 4], ax
00402428: 81 C6 80 01 00 00    add esi, 0x180
0040242E: C1 E5 04             shl ebp, 4
00402431: C1 FE 06             sar esi, 6
00402434: 81 E5 F0 03 00 00    and ebp, 0x3f0
0040243A: 83 E6 0F             and esi, 0xf
0040243D: C1 E2 05             shl edx, 5
00402440: 81 CD 00 98 07 00    or ebp, 0x79800
00402446: 03 C9                add ecx, ecx
00402448: 0B F2                or esi, edx
0040244A: 89 4C 24 38          mov dword ptr [esp + 0x38], ecx
0040244E: C1 FD 04             sar ebp, 4
00402451: 66 81 7F 04 82 00    cmp word ptr [edi + 4], 0x82
00402457: 7E 42                jle 0x40249b
00402459: 66 83 7F 06 02       cmp word ptr [edi + 6], 2
0040245E: 74 3B                je 0x40249b
00402460: 6A 0A                push 0xa
00402462: E8 69 3B 08 00       call 0x485fd0
00402467: 83 C4 04             add esp, 4
0040246A: 83 F8 02             cmp eax, 2
0040246D: 7D 10                jge 0x40247f
0040246F: 8A 47 20             mov al, byte ptr [edi + 0x20]
00402472: 84 C0                test al, al
00402474: 75 09                jne 0x40247f
00402476: FE C0                inc al
00402478: C6 47 1E 00          mov byte ptr [edi + 0x1e], 0
0040247C: 88 47 20             mov byte ptr [edi + 0x20], al
0040247F: 8A 47 20             mov al, byte ptr [edi + 0x20]
00402482: 3C 01                cmp al, 1
00402484: 7E 15                jle 0x40249b
00402486: 0F BE C8             movsx ecx, al
00402489: 66 83 7C 4F 08 FF    cmp word ptr [edi + ecx*2 + 8], -1
0040248F: 75 0A                jne 0x40249b
00402491: C6 47 20 00          mov byte ptr [edi + 0x20], 0
00402495: 66 C7 47 04 00 00    mov word ptr [edi + 4], 0
0040249B: 66 81 7F 04 F0 00    cmp word ptr [edi + 4], 0xf0
004024A1: 0F 8E 3A 01 00 00    jle 0x4025e1
004024A7: 66 C7 47 04 00 00    mov word ptr [edi + 4], 0
004024AD: E9 2F 01 00 00       jmp 0x4025e1
004024B2: 33 C9                xor ecx, ecx
004024B4: 8A 4B 0A             mov cl, byte ptr [ebx + 0xa]
004024B7: 8D 14 09             lea edx, [ecx + ecx]
004024BA: 89 54 24 34          mov dword ptr [esp + 0x34], edx
004024BE: 33 D2                xor edx, edx
004024C0: 8A 53 0B             mov dl, byte ptr [ebx + 0xb]
004024C3: 8D 04 12             lea eax, [edx + edx]
004024C6: 89 44 24 38          mov dword ptr [esp + 0x38], eax
004024CA: 0F BF 03             movsx eax, word ptr [ebx]
004024CD: 8B F0                mov esi, eax
004024CF: 81 E6 FF 00 00 80    and esi, 0x800000ff
004024D5: 79 08                jns 0x4024df
004024D7: 4E                   dec esi
004024D8: 81 CE 00 FF FF FF    or esi, 0xffffff00
004024DE: 46                   inc esi
004024DF: 03 F1                add esi, ecx
004024E1: 81 FE 00 01 00 00    cmp esi, 0x100
004024E7: 7D 2E                jge 0x402517
004024E9: 0F BF 73 02          movsx esi, word ptr [ebx + 2]
004024ED: 8B EE                mov ebp, esi
004024EF: 81 E5 FF 00 00 80    and ebp, 0x800000ff
004024F5: 79 08                jns 0x4024ff
004024F7: 4D                   dec ebp
004024F8: 81 CD 00 FF FF FF    or ebp, 0xffffff00
004024FE: 45                   inc ebp
004024FF: 03 EA                add ebp, edx
00402501: 81 FD 00 01 00 00    cmp ebp, 0x100
00402507: 7D 0E                jge 0x402517
00402509: 89 44 24 1C          mov dword ptr [esp + 0x1c], eax
0040250D: 89 74 24 18          mov dword ptr [esp + 0x18], esi
00402511: 89 4C 24 24          mov dword ptr [esp + 0x24], ecx
00402515: EB 12                jmp 0x402529
00402517: 0F BF 73 02          movsx esi, word ptr [ebx + 2]
0040251B: 49                   dec ecx
0040251C: 89 44 24 1C          mov dword ptr [esp + 0x1c], eax
00402520: 89 74 24 18          mov dword ptr [esp + 0x18], esi
00402524: 89 4C 24 24          mov dword ptr [esp + 0x24], ecx
00402528: 4A                   dec edx
00402529: 8A 4B 0C             mov cl, byte ptr [ebx + 0xc]
0040252C: 89 54 24 28          mov dword ptr [esp + 0x28], edx
00402530: 80 F9 FF             cmp cl, 0xff
00402533: 75 32                jne 0x402567
00402535: C1 E0 07             shl eax, 7
00402538: 99                   cdq 
00402539: 8A 4B 0D             mov cl, byte ptr [ebx + 0xd]
0040253C: 81 E2 FF 00 00 00    and edx, 0xff
00402542: 03 C2                add eax, edx
00402544: 83 E1 03             and ecx, 3
00402547: 8B F0                mov esi, eax
00402549: 83 C9 04             or ecx, 4
0040254C: C1 FE 08             sar esi, 8
0040254F: 81 C6 80 01 00 00    add esi, 0x180
00402555: BD 00 78 00 00       mov ebp, 0x7800
0040255A: C1 FE 06             sar esi, 6
0040255D: 83 E6 0F             and esi, 0xf
00402560: C1 E1 05             shl ecx, 5
00402563: 0B F1                or esi, ecx
00402565: EB 7A                jmp 0x4025e1
00402567: 80 F9 0F             cmp cl, 0xf
0040256A: 7F 3F                jg 0x4025ab
0040256C: C1 E0 06             shl eax, 6
0040256F: 99                   cdq 
00402570: 81 E2 FF 00 00 00    and edx, 0xff
00402576: 03 C2                add eax, edx
00402578: 8A 53 0D             mov dl, byte ptr [ebx + 0xd]
0040257B: 8B F0                mov esi, eax
0040257D: 83 E2 03             and edx, 3
00402580: 0F BE E9             movsx ebp, cl
00402583: C1 FE 08             sar esi, 8
00402586: 81 C6 80 01 00 00    add esi, 0x180
0040258C: C1 E5 04             shl ebp, 4
0040258F: C1 FE 06             sar esi, 6
00402592: 81 E5 F0 03 00 00    and ebp, 0x3f0
00402598: 83 E6 0F             and esi, 0xf
0040259B: C1 E2 05             shl edx, 5
0040259E: 81 CD 00 98 07 00    or ebp, 0x79800
004025A4: 0B F2                or esi, edx
004025A6: C1 FD 04             sar ebp, 4
004025A9: EB 36                jmp 0x4025e1
004025AB: C1 E0 07             shl eax, 7
004025AE: 99                   cdq 
004025AF: 81 E2 FF 00 00 00    and edx, 0xff
004025B5: 03 C2                add eax, edx
004025B7: 8B F0                mov esi, eax
004025B9: 8A 43 0D             mov al, byte ptr [ebx + 0xd]
004025BC: C1 FE 08             sar esi, 8
004025BF: 81 C6 80 01 00 00    add esi, 0x180
004025C5: 83 E0 03             and eax, 3
004025C8: 0F BE E9             movsx ebp, cl
004025CB: C1 FE 06             sar esi, 6
004025CE: 0C 04                or al, 4
004025D0: 83 E6 0F             and esi, 0xf
004025D3: C1 E0 05             shl eax, 5
004025D6: 81 C5 D4 01 00 00    add ebp, 0x1d4
004025DC: 0B F0                or esi, eax
004025DE: C1 E5 06             shl ebp, 6
004025E1: 6A 30                push 0x30
004025E3: E8 56 F4 09 00       call 0x4a1a3e
004025E8: 8B 4C 24 30          mov ecx, dword ptr [esp + 0x30]
004025EC: 89 44 24 18          mov dword ptr [esp + 0x18], eax
004025F0: 89 08                mov dword ptr [eax], ecx
004025F2: 8B 54 24 18          mov edx, dword ptr [esp + 0x18]
004025F6: 8B 44 24 34          mov eax, dword ptr [esp + 0x34]
004025FA: 83 C4 04             add esp, 4
004025FD: 89 42 08             mov dword ptr [edx + 8], eax
00402600: 8B 4C 24 14          mov ecx, dword ptr [esp + 0x14]
00402604: 8B 54 24 48          mov edx, dword ptr [esp + 0x48]
00402608: 89 51 0C             mov dword ptr [ecx + 0xc], edx
0040260B: 8B 44 24 14          mov eax, dword ptr [esp + 0x14]
0040260F: 8B 4C 24 34          mov ecx, dword ptr [esp + 0x34]
00402613: 89 48 10             mov dword ptr [eax + 0x10], ecx
00402616: 8B 54 24 14          mov edx, dword ptr [esp + 0x14]
0040261A: 8B 44 24 38          mov eax, dword ptr [esp + 0x38]
0040261E: 89 42 14             mov dword ptr [edx + 0x14], eax
00402621: 8B 4C 24 14          mov ecx, dword ptr [esp + 0x14]
00402625: 8B 54 24 1C          mov edx, dword ptr [esp + 0x1c]
00402629: 89 51 18             mov dword ptr [ecx + 0x18], edx
0040262C: 8B 44 24 14          mov eax, dword ptr [esp + 0x14]
00402630: 8B 4C 24 18          mov ecx, dword ptr [esp + 0x18]
00402634: 89 48 1C             mov dword ptr [eax + 0x1c], ecx
00402637: 8B 54 24 14          mov edx, dword ptr [esp + 0x14]
0040263B: 8B 44 24 24          mov eax, dword ptr [esp + 0x24]
0040263F: 89 42 20             mov dword ptr [edx + 0x20], eax
00402642: 8B 4C 24 14          mov ecx, dword ptr [esp + 0x14]
00402646: 8B 54 24 28          mov edx, dword ptr [esp + 0x28]
0040264A: 89 51 24             mov dword ptr [ecx + 0x24], edx
0040264D: 8B 44 24 14          mov eax, dword ptr [esp + 0x14]
00402651: 89 70 28             mov dword ptr [eax + 0x28], esi
00402654: 8B 4C 24 14          mov ecx, dword ptr [esp + 0x14]
00402658: 8D 44 24 14          lea eax, [esp + 0x14]
0040265C: 89 69 2C             mov dword ptr [ecx + 0x2c], ebp
0040265F: 8B 54 24 14          mov edx, dword ptr [esp + 0x14]
00402663: 50                   push eax
00402664: 6A 01                push 1
00402666: 89 5A 04             mov dword ptr [edx + 4], ebx
00402669: 8B 4C 24 64          mov ecx, dword ptr [esp + 0x64]
0040266D: 51                   push ecx
0040266E: 8D 4C 24 60          lea ecx, [esp + 0x60]
00402672: E8 D9 56 01 00       call 0x417d50
00402677: 8A 57 1E             mov dl, byte ptr [edi + 0x1e]
0040267A: FE C2                inc dl
0040267C: 88 57 1E             mov byte ptr [edi + 0x1e], dl
0040267F: 8A C2                mov al, dl
00402681: 8B 54 24 40          mov edx, dword ptr [esp + 0x40]
00402685: 3A 44 3A 16          cmp al, byte ptr [edx + edi + 0x16]
00402689: 75 23                jne 0x4026ae
0040268B: 8A 57 20             mov dl, byte ptr [edi + 0x20]
0040268E: C6 47 1E 00          mov byte ptr [edi + 0x1e], 0
00402692: FE C2                inc dl
00402694: 8A C2                mov al, dl
00402696: 88 57 20             mov byte ptr [edi + 0x20], dl
00402699: 0F BE C0             movsx eax, al
0040269C: 66 83 7C 47 06 FF    cmp word ptr [edi + eax*2 + 6], -1
004026A2: 74 06                je 0x4026aa
004026A4: 8A C2                mov al, dl
004026A6: 3C 08                cmp al, 8
004026A8: 7C 04                jl 0x4026ae
004026AA: C6 47 20 00          mov byte ptr [edi + 0x20], 0
004026AE: 8B 6C 24 5C          mov ebp, dword ptr [esp + 0x5c]
004026B2: 8B 44 24 2C          mov eax, dword ptr [esp + 0x2c]
004026B6: 83 C7 22             add edi, 0x22
004026B9: 48                   dec eax
004026BA: 83 F8 FF             cmp eax, -1
004026BD: 89 44 24 2C          mov dword ptr [esp + 0x2c], eax
004026C1: 0F 8F D3 FB FF FF    jg 0x40229a
004026C7: 8B 5C 24 58          mov ebx, dword ptr [esp + 0x58]
004026CB: 8B C5                mov eax, ebp
004026CD: 2B C3                sub eax, ebx
004026CF: 8B F5                mov esi, ebp
004026D1: 24 FC                and al, 0xfc
004026D3: 89 74 24 34          mov dword ptr [esp + 0x34], esi
004026D7: 83 F8 40             cmp eax, 0x40
004026DA: 0F 8F B2 00 00 00    jg 0x402792
004026E0: 8A 54 24 14          mov dl, byte ptr [esp + 0x14]
004026E4: 3B DD                cmp ebx, ebp
004026E6: 88 54 24 38          mov byte ptr [esp + 0x38], dl
004026EA: 0F 84 2F 02 00 00    je 0x40291f
004026F0: 8D 7B 04             lea edi, [ebx + 4]
004026F3: 3B FD                cmp edi, ebp
004026F5: 0F 84 24 02 00 00    je 0x40291f
004026FB: 8B 07                mov eax, dword ptr [edi]
004026FD: 8D 4C 24 2C          lea ecx, [esp + 0x2c]
00402701: 53                   push ebx
00402702: 51                   push ecx
00402703: 8D 4C 24 40          lea ecx, [esp + 0x40]
00402707: 89 44 24 34          mov dword ptr [esp + 0x34], eax
0040270B: E8 00 03 00 00       call 0x402a10
00402710: 84 C0                test al, al
00402712: 75 55                jne 0x402769
00402714: 8B 54 24 38          mov edx, dword ptr [esp + 0x38]
00402718: 8B 44 24 2C          mov eax, dword ptr [esp + 0x2c]
0040271C: 52                   push edx
0040271D: 50                   push eax
0040271E: 57                   push edi
0040271F: E8 6C 22 00 00       call 0x404990
00402724: 83 C4 0C             add esp, 0xc
00402727: EB 59                jmp 0x402782
00402729: 8A 5F 1E             mov bl, byte ptr [edi + 0x1e]
0040272C: FE C3                inc bl
0040272E: 88 5F 1E             mov byte ptr [edi + 0x1e], bl
00402731: 8A 54 39 16          mov dl, byte ptr [ecx + edi + 0x16]
00402735: 8A C3                mov al, bl
00402737: 3A C2                cmp al, dl
00402739: 0F 85 73 FF FF FF    jne 0x4026b2
0040273F: 8A 4F 20             mov cl, byte ptr [edi + 0x20]
00402742: C6 47 1E 00          mov byte ptr [edi + 0x1e], 0
00402746: FE C1                inc cl
00402748: 8A C1                mov al, cl
0040274A: 88 4F 20             mov byte ptr [edi + 0x20], cl
0040274D: 0F BE C8             movsx ecx, al
00402750: 66 83 7C 4F 06 FF    cmp word ptr [edi + ecx*2 + 6], -1
00402756: 74 08                je 0x402760
00402758: 3C 08                cmp al, 8
0040275A: 0F 8C 52 FF FF FF    jl 0x4026b2
00402760: C6 47 20 00          mov byte ptr [edi + 0x20], 0
00402764: E9 49 FF FF FF       jmp 0x4026b2
00402769: 3B DF                cmp ebx, edi
0040276B: 8B C7                mov eax, edi
0040276D: 74 0D                je 0x40277c
0040276F: 8B 48 FC             mov ecx, dword ptr [eax - 4]
00402772: 83 E8 04             sub eax, 4
00402775: 3B C3                cmp eax, ebx
00402777: 89 48 04             mov dword ptr [eax + 4], ecx
0040277A: 75 F3                jne 0x40276f
0040277C: 8B 54 24 2C          mov edx, dword ptr [esp + 0x2c]
00402780: 89 13                mov dword ptr [ebx], edx
00402782: 83 C7 04             add edi, 4
00402785: 3B FE                cmp edi, esi
00402787: 0F 85 6E FF FF FF    jne 0x4026fb
0040278D: E9 89 01 00 00       jmp 0x40291b
00402792: 83 F8 40             cmp eax, 0x40
00402795: 8B FB                mov edi, ebx
00402797: 0F 8E 0C 01 00 00    jle 0x4028a9
0040279D: 8B 07                mov eax, dword ptr [edi]
0040279F: 89 44 24 18          mov dword ptr [esp + 0x18], eax
004027A3: 8B C5                mov eax, ebp
004027A5: 2B C7                sub eax, edi
004027A7: C1 F8 02             sar eax, 2
004027AA: 99                   cdq 
004027AB: 2B C2                sub eax, edx
004027AD: D1 F8                sar eax, 1
004027AF: 8B 0C 87             mov ecx, dword ptr [edi + eax*4]
004027B2: 89 4C 24 20          mov dword ptr [esp + 0x20], ecx
004027B6: 8B 55 FC             mov edx, dword ptr [ebp - 4]
004027B9: 89 54 24 14          mov dword ptr [esp + 0x14], edx
004027BD: 8A 44 24 14          mov al, byte ptr [esp + 0x14]
004027C1: 8D 4C 24 20          lea ecx, [esp + 0x20]
004027C5: 8D 54 24 18          lea edx, [esp + 0x18]
004027C9: 51                   push ecx
004027CA: 52                   push edx
004027CB: 8D 4C 24 24          lea ecx, [esp + 0x24]
004027CF: 88 44 24 24          mov byte ptr [esp + 0x24], al
004027D3: E8 38 02 00 00       call 0x402a10
004027D8: 84 C0                test al, al
004027DA: 74 34                je 0x402810
004027DC: 8D 44 24 14          lea eax, [esp + 0x14]
004027E0: 8D 4C 24 20          lea ecx, [esp + 0x20]
004027E4: 50                   push eax
004027E5: 51                   push ecx
004027E6: 8D 4C 24 24          lea ecx, [esp + 0x24]
004027EA: E8 21 02 00 00       call 0x402a10
004027EF: 84 C0                test al, al
004027F1: 75 55                jne 0x402848
004027F3: 8D 54 24 14          lea edx, [esp + 0x14]
004027F7: 8D 44 24 18          lea eax, [esp + 0x18]
004027FB: 52                   push edx
004027FC: 50                   push eax
004027FD: 8D 4C 24 24          lea ecx, [esp + 0x24]
00402801: E8 0A 02 00 00       call 0x402a10
00402806: 84 C0                test al, al
00402808: 74 1D                je 0x402827
0040280A: 8B 44 24 14          mov eax, dword ptr [esp + 0x14]
0040280E: EB 3C                jmp 0x40284c
00402810: 8D 4C 24 14          lea ecx, [esp + 0x14]
00402814: 8D 54 24 18          lea edx, [esp + 0x18]
00402818: 51                   push ecx
00402819: 52                   push edx
0040281A: 8D 4C 24 24          lea ecx, [esp + 0x24]
0040281E: E8 ED 01 00 00       call 0x402a10
00402823: 84 C0                test al, al
00402825: 74 06                je 0x40282d
00402827: 8B 44 24 18          mov eax, dword ptr [esp + 0x18]
0040282B: EB 1F                jmp 0x40284c
0040282D: 8D 44 24 14          lea eax, [esp + 0x14]
00402831: 8D 4C 24 20          lea ecx, [esp + 0x20]
00402835: 50                   push eax
00402836: 51                   push ecx
00402837: 8D 4C 24 24          lea ecx, [esp + 0x24]
0040283B: E8 D0 01 00 00       call 0x402a10
00402840: 84 C0                test al, al
00402842: 8B 44 24 14          mov eax, dword ptr [esp + 0x14]
00402846: 75 04                jne 0x40284c
00402848: 8B 44 24 20          mov eax, dword ptr [esp + 0x20]
0040284C: 8B 54 24 14          mov edx, dword ptr [esp + 0x14]
00402850: 52                   push edx
00402851: 50                   push eax
00402852: 55                   push ebp
00402853: 57                   push edi
00402854: E8 57 22 00 00       call 0x404ab0
00402859: 8B F0                mov esi, eax
0040285B: 8B C5                mov eax, ebp
0040285D: 8B CE                mov ecx, esi
0040285F: 2B C6                sub eax, esi
00402861: 2B CF                sub ecx, edi
00402863: 83 C4 10             add esp, 0x10
00402866: 24 FC                and al, 0xfc
00402868: 83 E1 FC             and ecx, 0xfffffffc
0040286B: 3B C1                cmp eax, ecx
0040286D: 6A 00                push 0
0040286F: 7F 13                jg 0x402884
00402871: 8B 54 24 18          mov edx, dword ptr [esp + 0x18]
00402875: 52                   push edx
00402876: 55                   push ebp
00402877: 56                   push esi
00402878: E8 73 1F 00 00       call 0x4047f0
0040287D: 83 C4 10             add esp, 0x10
00402880: 8B EE                mov ebp, esi
00402882: EB 11                jmp 0x402895
00402884: 8B 44 24 18          mov eax, dword ptr [esp + 0x18]
00402888: 50                   push eax
00402889: 56                   push esi
0040288A: 57                   push edi
0040288B: E8 60 1F 00 00       call 0x4047f0
00402890: 83 C4 10             add esp, 0x10
00402893: 8B FE                mov edi, esi
00402895: 8B CD                mov ecx, ebp
00402897: 2B CF                sub ecx, edi
00402899: 83 E1 FC             and ecx, 0xfffffffc
0040289C: 83 F9 40             cmp ecx, 0x40
0040289F: 0F 8F F8 FE FF FF    jg 0x40279d
004028A5: 8B 74 24 34          mov esi, dword ptr [esp + 0x34]
004028A9: 8B 54 24 14          mov edx, dword ptr [esp + 0x14]
004028AD: 8D 7B 40             lea edi, [ebx + 0x40]
004028B0: 6A 00                push 0
004028B2: 52                   push edx
004028B3: 57                   push edi
004028B4: 53                   push ebx
004028B5: E8 26 21 00 00       call 0x4049e0
004028BA: 83 C4 10             add esp, 0x10
004028BD: 3B FE                cmp edi, esi
004028BF: 74 5A                je 0x40291b
004028C1: 8D 5F FC             lea ebx, [edi - 4]
004028C4: 8B 0F                mov ecx, dword ptr [edi]
004028C6: 8A 44 24 14          mov al, byte ptr [esp + 0x14]
004028CA: 8D 54 24 2C          lea edx, [esp + 0x2c]
004028CE: 89 4C 24 2C          mov dword ptr [esp + 0x2c], ecx
004028D2: 53                   push ebx
004028D3: 52                   push edx
004028D4: 8D 4C 24 40          lea ecx, [esp + 0x40]
004028D8: 88 44 24 40          mov byte ptr [esp + 0x40], al
004028DC: 8B EF                mov ebp, edi
004028DE: 8B F3                mov esi, ebx
004028E0: E8 2B 01 00 00       call 0x402a10
004028E5: 84 C0                test al, al
004028E7: 74 1D                je 0x402906
004028E9: 8B 06                mov eax, dword ptr [esi]
004028EB: 8D 4C 24 2C          lea ecx, [esp + 0x2c]
004028EF: 89 45 00             mov dword ptr [ebp], eax
004028F2: 8B EE                mov ebp, esi
004028F4: 83 EE 04             sub esi, 4
004028F7: 56                   push esi
004028F8: 51                   push ecx
004028F9: 8D 4C 24 40          lea ecx, [esp + 0x40]
004028FD: E8 0E 01 00 00       call 0x402a10
00402902: 84 C0                test al, al
00402904: 75 E3                jne 0x4028e9
00402906: 8B 44 24 34          mov eax, dword ptr [esp + 0x34]
0040290A: 8B 54 24 2C          mov edx, dword ptr [esp + 0x2c]
0040290E: 83 C7 04             add edi, 4
00402911: 83 C3 04             add ebx, 4
00402914: 3B F8                cmp edi, eax
00402916: 89 55 00             mov dword ptr [ebp], edx
00402919: 75 A9                jne 0x4028c4
0040291B: 8B 6C 24 5C          mov ebp, dword ptr [esp + 0x5c]
0040291F: 8B 5C 24 3C          mov ebx, dword ptr [esp + 0x3c]
00402923: 33 FF                xor edi, edi
00402925: 8B 44 24 58          mov eax, dword ptr [esp + 0x58]
00402929: 85 C0                test eax, eax
0040292B: 74 54                je 0x402981
0040292D: 8B CD                mov ecx, ebp
0040292F: 2B C8                sub ecx, eax
00402931: C1 F9 02             sar ecx, 2
00402934: 3B F9                cmp edi, ecx
00402936: 73 49                jae 0x402981
00402938: 8B 34 B8             mov esi, dword ptr [eax + edi*4]
0040293B: 8B 56 2C             mov edx, dword ptr [esi + 0x2c]
0040293E: 8B 46 28             mov eax, dword ptr [esi + 0x28]
00402941: 8B 4E 24             mov ecx, dword ptr [esi + 0x24]
00402944: 52                   push edx
00402945: 8B 56 20             mov edx, dword ptr [esi + 0x20]
00402948: 50                   push eax
00402949: 8B 46 1C             mov eax, dword ptr [esi + 0x1c]
0040294C: 51                   push ecx
0040294D: 8B 4E 18             mov ecx, dword ptr [esi + 0x18]
00402950: 52                   push edx
00402951: 8B 56 14             mov edx, dword ptr [esi + 0x14]
00402954: 50                   push eax
00402955: 8B 46 10             mov eax, dword ptr [esi + 0x10]
00402958: 51                   push ecx
00402959: 8B 4E 0C             mov ecx, dword ptr [esi + 0xc]
0040295C: 52                   push edx
0040295D: 8B 56 08             mov edx, dword ptr [esi + 8]
00402960: 50                   push eax
00402961: 8B 46 04             mov eax, dword ptr [esi + 4]
00402964: 51                   push ecx
00402965: 8B 0E                mov ecx, dword ptr [esi]
00402967: 52                   push edx
00402968: 50                   push eax
00402969: 51                   push ecx
0040296A: 8B CB                mov ecx, ebx
0040296C: E8 BF 01 00 00       call 0x402b30
00402971: 56                   push esi
00402972: E8 AF F0 09 00       call 0x4a1a26
00402977: 8B 6C 24 60          mov ebp, dword ptr [esp + 0x60]
0040297B: 83 C4 04             add esp, 4
0040297E: 47                   inc edi
0040297F: EB A4                jmp 0x402925
00402981: 8B 4C 24 58          mov ecx, dword ptr [esp + 0x58]
00402985: 8B C5                mov eax, ebp
00402987: 3B C5                cmp eax, ebp
00402989: 8B D5                mov edx, ebp
0040298B: 74 0E                je 0x40299b
0040298D: 8B 30                mov esi, dword ptr [eax]
0040298F: 83 C0 04             add eax, 4
00402992: 89 31                mov dword ptr [ecx], esi
00402994: 83 C1 04             add ecx, 4
00402997: 3B C2                cmp eax, edx
00402999: 75 F2                jne 0x40298d
0040299B: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
004029A0: 6A 01                push 1
004029A2: 89 4C 24 60          mov dword ptr [esp + 0x60], ecx
004029A6: 6A 11                push 0x11
004029A8: 8B 10                mov edx, dword ptr [eax]
004029AA: 6A 00                push 0
004029AC: 50                   push eax
004029AD: FF 92 FC 00 00 00    call dword ptr [edx + 0xfc]
004029B3: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
004029B8: 6A 01                push 1
004029BA: 6A 10                push 0x10
004029BC: 6A 00                push 0
004029BE: 8B 08                mov ecx, dword ptr [eax]
004029C0: 50                   push eax
004029C1: FF 91 FC 00 00 00    call dword ptr [ecx + 0xfc]
004029C7: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
004029CC: 6A 00                push 0
004029CE: 6A 1B                push 0x1b
004029D0: 50                   push eax
004029D1: 8B 10                mov edx, dword ptr [eax]
004029D3: FF 92 C8 00 00 00    call dword ptr [edx + 0xc8]
004029D9: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
004029DE: 6A 01                push 1
004029E0: 6A 0E                push 0xe
004029E2: 50                   push eax
004029E3: 8B 08                mov ecx, dword ptr [eax]
004029E5: FF 91 C8 00 00 00    call dword ptr [ecx + 0xc8]
004029EB: 8B 54 24 58          mov edx, dword ptr [esp + 0x58]
004029EF: 52                   push edx
004029F0: E8 31 F0 09 00       call 0x4a1a26
004029F5: 83 C4 04             add esp, 4
004029F8: 5F                   pop edi
004029F9: 5E                   pop esi
004029FA: 5D                   pop ebp
004029FB: 5B                   pop ebx
004029FC: 8B 4C 24 54          mov ecx, dword ptr [esp + 0x54]
00402A00: 64 89 0D 00 00 00 00 mov dword ptr fs:[0], ecx
00402A07: 83 C4 60             add esp, 0x60
00402A0A: C3                   ret 
00402A0B: 90                   nop 
00402A0C: 90                   nop 
00402A0D: 90                   nop 
00402A0E: 90                   nop 
00402A0F: 90                   nop 
00402A10: 6A FF                push -1
00402A12: 68 E0 24 4A 00       push 0x4a24e0
00402A17: 64 A1 00 00 00 00    mov eax, dword ptr fs:[0]
00402A1D: 50                   push eax
00402A1E: 64 89 25 00 00 00 00 mov dword ptr fs:[0], esp
00402A25: 83 EC 24             sub esp, 0x24
00402A28: 8B 44 24 34          mov eax, dword ptr [esp + 0x34]
00402A2C: 8B 08                mov ecx, dword ptr [eax]
00402A2E: 8B 41 04             mov eax, dword ptr [ecx + 4]
00402A31: 0F BF 50 08          movsx edx, word ptr [eax + 8]
00402A35: 0F BF 48 06          movsx ecx, word ptr [eax + 6]
00402A39: 52                   push edx
00402A3A: 51                   push ecx
00402A3B: 0F BF 50 04          movsx edx, word ptr [eax + 4]
00402A3F: 8D 44 24 08          lea eax, [esp + 8]
00402A43: 52                   push edx
00402A44: 50                   push eax
00402A45: E8 26 78 01 00       call 0x41a270
00402A4A: 8B 4C 24 48          mov ecx, dword ptr [esp + 0x48]
00402A4E: C7 44 24 3C 00 00 00 00 mov dword ptr [esp + 0x3c], 0
00402A56: 8B 11                mov edx, dword ptr [ecx]
00402A58: 8B 42 04             mov eax, dword ptr [edx + 4]
00402A5B: 0F BF 48 08          movsx ecx, word ptr [eax + 8]
00402A5F: 0F BF 50 06          movsx edx, word ptr [eax + 6]
00402A63: 0F BF 40 04          movsx eax, word ptr [eax + 4]
00402A67: 51                   push ecx
00402A68: 52                   push edx
00402A69: 8D 4C 24 24          lea ecx, [esp + 0x24]
00402A6D: 50                   push eax
00402A6E: 51                   push ecx
00402A6F: E8 FC 77 01 00       call 0x41a270
00402A74: 83 C4 14             add esp, 0x14
00402A77: 8D 54 24 0C          lea edx, [esp + 0xc]
00402A7B: 8B CC                mov ecx, esp
00402A7D: 89 64 24 40          mov dword ptr [esp + 0x40], esp
00402A81: 52                   push edx
00402A82: C6 44 24 3C 01       mov byte ptr [esp + 0x3c], 1
00402A87: E8 A4 DF 09 00       call 0x4a0a30
00402A8C: 8B 0D 80 93 4C 00    mov ecx, dword ptr [0x4c9380]
00402A92: 8D 44 24 24          lea eax, [esp + 0x24]
00402A96: 50                   push eax
00402A97: 81 C1 2C 35 00 00    add ecx, 0x352c
00402A9D: E8 4E 22 00 00       call 0x404cf0
00402AA2: 50                   push eax
00402AA3: 8D 4C 24 04          lea ecx, [esp + 4]
00402AA7: C6 44 24 30 02       mov byte ptr [esp + 0x30], 2
00402AAC: E8 7F DF 09 00       call 0x4a0a30
00402AB1: 83 EC 0C             sub esp, 0xc
00402AB4: 8D 54 24 18          lea edx, [esp + 0x18]
00402AB8: 8B CC                mov ecx, esp
00402ABA: 89 64 24 40          mov dword ptr [esp + 0x40], esp
00402ABE: 52                   push edx
00402ABF: C6 44 24 3C 01       mov byte ptr [esp + 0x3c], 1
00402AC4: E8 67 DF 09 00       call 0x4a0a30
00402AC9: 8B 0D 80 93 4C 00    mov ecx, dword ptr [0x4c9380]
00402ACF: 8D 44 24 24          lea eax, [esp + 0x24]
00402AD3: 50                   push eax
00402AD4: 81 C1 2C 35 00 00    add ecx, 0x352c
00402ADA: E8 11 22 00 00       call 0x404cf0
00402ADF: 50                   push eax
00402AE0: 8D 4C 24 10          lea ecx, [esp + 0x10]
00402AE4: C6 44 24 30 03       mov byte ptr [esp + 0x30], 3
00402AE9: E8 42 DF 09 00       call 0x4a0a30
00402AEE: D9 44 24 08          fld dword ptr [esp + 8]
00402AF2: D8 5C 24 14          fcomp dword ptr [esp + 0x14]
00402AF6: DF E0                fnstsw ax
00402AF8: F6 C4 41             test ah, 0x41
00402AFB: 75 13                jne 0x402b10
00402AFD: B0 01                mov al, 1
00402AFF: 8B 4C 24 24          mov ecx, dword ptr [esp + 0x24]
00402B03: 64 89 0D 00 00 00 00 mov dword ptr fs:[0], ecx
00402B0A: 83 C4 30             add esp, 0x30
00402B0D: C2 08 00             ret 8
00402B10: 8B 4C 24 24          mov ecx, dword ptr [esp + 0x24]
00402B14: 32 C0                xor al, al
00402B16: 64 89 0D 00 00 00 00 mov dword ptr fs:[0], ecx
00402B1D: 83 C4 30             add esp, 0x30
00402B20: C2 08 00             ret 8
00402B23: 90                   nop 
00402B24: 90                   nop 
00402B25: 90                   nop 
00402B26: 90                   nop 
00402B27: 90                   nop 
00402B28: 90                   nop 
00402B29: 90                   nop 
00402B2A: 90                   nop 
00402B2B: 90                   nop 
00402B2C: 90                   nop 
00402B2D: 90                   nop 
00402B2E: 90                   nop 
00402B2F: 90                   nop 
00402B30: 64 A1 00 00 00 00    mov eax, dword ptr fs:[0]
00402B36: 6A FF                push -1
00402B38: 68 60 25 4A 00       push 0x4a2560
00402B3D: 50                   push eax
00402B3E: 64 89 25 00 00 00 00 mov dword ptr fs:[0], esp
00402B45: 81 EC 28 01 00 00    sub esp, 0x128
00402B4B: 53                   push ebx
00402B4C: 55                   push ebp
00402B4D: 56                   push esi
00402B4E: 57                   push edi
00402B4F: 8B E9                mov ebp, ecx
00402B51: E8 3A 7F 07 00       call 0x47aa90
00402B56: 66 3D 0D 00          cmp ax, 0xd
00402B5A: 0F 84 80 09 00 00    je 0x4034e0
00402B60: A1 04 9D 4C 00       mov eax, dword ptr [0x4c9d04]
00402B65: 85 C0                test eax, eax
00402B67: 0F 85 73 09 00 00    jne 0x4034e0
00402B6D: 8B 45 04             mov eax, dword ptr [ebp + 4]
00402B70: 8B 8C 24 48 01 00 00 mov ecx, dword ptr [esp + 0x148]
00402B77: 83 F8 08             cmp eax, 8
00402B7A: 75 18                jne 0x402b94
00402B7C: 81 F9 8B 00 00 00    cmp ecx, 0x8b
00402B82: 0F 84 58 09 00 00    je 0x4034e0
00402B88: 81 F9 BB 00 00 00    cmp ecx, 0xbb
00402B8E: 0F 84 4C 09 00 00    je 0x4034e0
00402B94: 3D B3 00 00 00       cmp eax, 0xb3
00402B99: 75 09                jne 0x402ba4
00402B9B: 83 F9 6C             cmp ecx, 0x6c
00402B9E: 0F 84 3C 09 00 00    je 0x4034e0
00402BA4: 3D 92 00 00 00       cmp eax, 0x92
00402BA9: 75 0C                jne 0x402bb7
00402BAB: 81 F9 A8 00 00 00    cmp ecx, 0xa8
00402BB1: 0F 84 29 09 00 00    je 0x4034e0
00402BB7: 8B 84 24 58 01 00 00 mov eax, dword ptr [esp + 0x158]
00402BBE: 25 01 00 00 80       and eax, 0x80000001
00402BC3: 79 05                jns 0x402bca
00402BC5: 48                   dec eax
00402BC6: 83 C8 FE             or eax, 0xfffffffe
00402BC9: 40                   inc eax
00402BCA: 74 07                je 0x402bd3
00402BCC: FF 84 24 58 01 00 00 inc dword ptr [esp + 0x158]
00402BD3: 8B 8C 24 5C 01 00 00 mov ecx, dword ptr [esp + 0x15c]
00402BDA: 81 E1 01 00 00 80    and ecx, 0x80000001
00402BE0: 79 05                jns 0x402be7
00402BE2: 49                   dec ecx
00402BE3: 83 C9 FE             or ecx, 0xfffffffe
00402BE6: 41                   inc ecx
00402BE7: 74 07                je 0x402bf0
00402BE9: FF 84 24 5C 01 00 00 inc dword ptr [esp + 0x15c]
00402BF0: 8B 84 24 70 01 00 00 mov eax, dword ptr [esp + 0x170]
00402BF7: 83 E0 0F             and eax, 0xf
00402BFA: C1 E0 06             shl eax, 6
00402BFD: 33 FF                xor edi, edi
00402BFF: 89 7C 24 18          mov dword ptr [esp + 0x18], edi
00402C03: 8B 4D 0C             mov ecx, dword ptr [ebp + 0xc]
00402C06: 85 C9                test ecx, ecx
00402C08: 0F 84 CE 08 00 00    je 0x4034dc
00402C0E: 8B 55 10             mov edx, dword ptr [ebp + 0x10]
00402C11: 2B D1                sub edx, ecx
00402C13: C1 FA 02             sar edx, 2
00402C16: 3B FA                cmp edi, edx
00402C18: 0F 83 BE 08 00 00    jae 0x4034dc
00402C1E: 8B 34 B9             mov esi, dword ptr [ecx + edi*4]
00402C21: 8D 4E 04             lea ecx, [esi + 4]
00402C24: 8B D9                mov ebx, ecx
00402C26: 8B 0B                mov ecx, dword ptr [ebx]
00402C28: 3B C1                cmp eax, ecx
00402C2A: 8B 53 04             mov edx, dword ptr [ebx + 4]
00402C2D: 89 54 24 58          mov dword ptr [esp + 0x58], edx
00402C31: 8B 53 08             mov edx, dword ptr [ebx + 8]
00402C34: 8B 5B 0C             mov ebx, dword ptr [ebx + 0xc]
00402C37: 89 5C 24 60          mov dword ptr [esp + 0x60], ebx
00402C3B: 7C 04                jl 0x402c41
00402C3D: 3B C2                cmp eax, edx
00402C3F: 7C 03                jl 0x402c44
00402C41: 47                   inc edi
00402C42: EB BF                jmp 0x402c03
00402C44: 85 F6                test esi, esi
00402C46: 89 7C 24 18          mov dword ptr [esp + 0x18], edi
00402C4A: 0F 84 90 08 00 00    je 0x4034e0
00402C50: 81 7D 04 81 00 00 00 cmp dword ptr [ebp + 4], 0x81
00402C57: 75 29                jne 0x402c82
00402C59: 8B 84 24 48 01 00 00 mov eax, dword ptr [esp + 0x148]
00402C60: 3D A7 00 00 00       cmp eax, 0xa7
00402C65: 74 1B                je 0x402c82
00402C67: 3D A6 00 00 00       cmp eax, 0xa6
00402C6C: 74 14                je 0x402c82
00402C6E: 3D BA 00 00 00       cmp eax, 0xba
00402C73: 74 0D                je 0x402c82
00402C75: 3D BB 00 00 00       cmp eax, 0xbb
00402C7A: 74 06                je 0x402c82
00402C7C: 8B 45 0C             mov eax, dword ptr [ebp + 0xc]
00402C7F: 8B 70 08             mov esi, dword ptr [eax + 8]
00402C82: 8B BC 24 74 01 00 00 mov edi, dword ptr [esp + 0x174]
00402C89: 8B 84 24 64 01 00 00 mov eax, dword ptr [esp + 0x164]
00402C90: 57                   push edi
00402C91: 50                   push eax
00402C92: B8 00 01 00 00       mov eax, 0x100
00402C97: 8B 8C 24 54 01 00 00 mov ecx, dword ptr [esp + 0x154]
00402C9E: 99                   cdq 
00402C9F: F7 7E 3C             idiv dword ptr [esi + 0x3c]
00402CA2: 0F BF 11             movsx edx, word ptr [ecx]
00402CA5: 8B CE                mov ecx, esi
00402CA7: 0F AF C2             imul eax, edx
00402CAA: 99                   cdq 
00402CAB: 81 E2 FF 00 00 00    and edx, 0xff
00402CB1: 03 C2                add eax, edx
00402CB3: C1 F8 08             sar eax, 8
00402CB6: 05 80 01 00 00       add eax, 0x180
00402CBB: 50                   push eax
00402CBC: E8 2F 00 01 00       call 0x412cf0
00402CC1: 85 C0                test eax, eax
00402CC3: 89 44 24 14          mov dword ptr [esp + 0x14], eax
00402CC7: 0F 84 13 08 00 00    je 0x4034e0
00402CCD: 8B 4E 38             mov ecx, dword ptr [esi + 0x38]
00402CD0: 8B 46 30             mov eax, dword ptr [esi + 0x30]
00402CD3: 8B 56 28             mov edx, dword ptr [esi + 0x28]
00402CD6: 8B DF                mov ebx, edi
00402CD8: 83 E3 3F             and ebx, 0x3f
00402CDB: C1 E3 04             shl ebx, 4
00402CDE: C1 FF 06             sar edi, 6
00402CE1: F7 D9                neg ecx
00402CE3: 1B C9                sbb ecx, ecx
00402CE5: 2B C2                sub eax, edx
00402CE7: 81 E1 F0 00 00 00    and ecx, 0xf0
00402CED: 99                   cdq 
00402CEE: 83 C1 10             add ecx, 0x10
00402CF1: F7 F9                idiv ecx
00402CF3: 8B 56 2C             mov edx, dword ptr [esi + 0x2c]
00402CF6: 2B FA                sub edi, edx
00402CF8: 8B 56 28             mov edx, dword ptr [esi + 0x28]
00402CFB: 0F AF F8             imul edi, eax
00402CFE: 8B C3                mov eax, ebx
00402D00: 2B C2                sub eax, edx
00402D02: 99                   cdq 
00402D03: F7 F9                idiv ecx
00402D05: 03 F8                add edi, eax
00402D07: 8B C7                mov eax, edi
00402D09: 79 02                jns 0x402d0d
00402D0B: 33 C0                xor eax, eax
00402D0D: 8B 8E 98 00 00 00    mov ecx, dword ptr [esi + 0x98]
00402D13: 49                   dec ecx
00402D14: 3B C1                cmp eax, ecx
00402D16: 7E 02                jle 0x402d1a
00402D18: 33 C0                xor eax, eax
00402D1A: 8B BE 94 00 00 00    mov edi, dword ptr [esi + 0x94]
00402D20: 8B 1D 78 4C 4D 00    mov ebx, dword ptr [0x4d4c78]
00402D26: 0F AF BE 90 00 00 00 imul edi, dword ptr [esi + 0x90]
00402D2D: 8B 13                mov edx, dword ptr [ebx]
00402D2F: 6A 00                push 0
00402D31: 68 89 00 00 00       push 0x89
00402D36: 53                   push ebx
00402D37: 0F AF F8             imul edi, eax
00402D3A: FF 92 C8 00 00 00    call dword ptr [edx + 0xc8]
00402D40: 8B 03                mov eax, dword ptr [ebx]
00402D42: 6A 01                push 1
00402D44: 6A 1B                push 0x1b
00402D46: 53                   push ebx
00402D47: FF 90 C8 00 00 00    call dword ptr [eax + 0xc8]
00402D4D: 8B 45 04             mov eax, dword ptr [ebp + 4]
00402D50: 8B 8C 24 4C 01 00 00 mov ecx, dword ptr [esp + 0x14c]
00402D57: 3D 81 00 00 00       cmp eax, 0x81
00402D5C: 0F BF 01             movsx eax, word ptr [ecx]
00402D5F: 75 22                jne 0x402d83
00402D61: 25 FF 00 00 80       and eax, 0x800000ff
00402D66: 79 07                jns 0x402d6f
00402D68: 48                   dec eax
00402D69: 0D 00 FF FF FF       or eax, 0xffffff00
00402D6E: 40                   inc eax
00402D6F: 89 84 24 60 01 00 00 mov dword ptr [esp + 0x160], eax
00402D76: 0F BF 41 02          movsx eax, word ptr [ecx + 2]
00402D7A: 25 FF 00 00 80       and eax, 0x800000ff
00402D7F: 79 29                jns 0x402daa
00402D81: EB 20                jmp 0x402da3
00402D83: 25 FF 00 00 80       and eax, 0x800000ff
00402D88: 79 07                jns 0x402d91
00402D8A: 48                   dec eax
00402D8B: 0D 00 FF FF FF       or eax, 0xffffff00
00402D90: 40                   inc eax
00402D91: 89 84 24 60 01 00 00 mov dword ptr [esp + 0x160], eax
00402D98: 0F BF 41 02          movsx eax, word ptr [ecx + 2]
00402D9C: 25 FF 00 00 80       and eax, 0x800000ff
00402DA1: 79 07                jns 0x402daa
00402DA3: 48                   dec eax
00402DA4: 0D 00 FF FF FF       or eax, 0xffffff00
00402DA9: 40                   inc eax
00402DAA: 8B 54 24 14          mov edx, dword ptr [esp + 0x14]
00402DAE: 8B 0B                mov ecx, dword ptr [ebx]
00402DB0: 89 84 24 64 01 00 00 mov dword ptr [esp + 0x164], eax
00402DB7: 8B 42 1C             mov eax, dword ptr [edx + 0x1c]
00402DBA: 50                   push eax
00402DBB: 6A 00                push 0
00402DBD: 53                   push ebx
00402DBE: FF 91 F4 00 00 00    call dword ptr [ecx + 0xf4]
00402DC4: 8B 8C 24 4C 01 00 00 mov ecx, dword ptr [esp + 0x14c]
00402DCB: C7 44 24 14 FF FF FF FF mov dword ptr [esp + 0x14], 0xffffffff
00402DD3: 0F BE 41 0D          movsx eax, byte ptr [ecx + 0xd]
00402DD7: 83 F8 03             cmp eax, 3
00402DDA: 0F 87 AF 01 00 00    ja 0x402f8f
00402DE0: FF 24 85 FC 34 40 00 jmp dword ptr [eax*4 + 0x4034fc]
00402DE7: 8B BC 24 48 01 00 00 mov edi, dword ptr [esp + 0x148]
00402DEE: 56                   push esi
00402DEF: 57                   push edi
00402DF0: 8B CD                mov ecx, ebp
00402DF2: E8 29 07 00 00       call 0x403520
00402DF7: 85 C0                test eax, eax
00402DF9: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00402DFE: 8B 10                mov edx, dword ptr [eax]
00402E00: 74 27                je 0x402e29
00402E02: 6A 02                push 2
00402E04: 6A 13                push 0x13
00402E06: 50                   push eax
00402E07: FF 92 C8 00 00 00    call dword ptr [edx + 0xc8]
00402E0D: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00402E12: 6A 02                push 2
00402E14: 6A 14                push 0x14
00402E16: 50                   push eax
00402E17: 8B 08                mov ecx, dword ptr [eax]
00402E19: FF 91 C8 00 00 00    call dword ptr [ecx + 0xc8]
00402E1F: C7 44 24 14 80 80 80 FF mov dword ptr [esp + 0x14], 0xff808080
00402E27: EB 25                jmp 0x402e4e
00402E29: 6A 05                push 5
00402E2B: 6A 13                push 0x13
00402E2D: 50                   push eax
00402E2E: FF 92 C8 00 00 00    call dword ptr [edx + 0xc8]
00402E34: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00402E39: 6A 06                push 6
00402E3B: 6A 14                push 0x14
00402E3D: 50                   push eax
00402E3E: 8B 08                mov ecx, dword ptr [eax]
00402E40: FF 91 C8 00 00 00    call dword ptr [ecx + 0xc8]
00402E46: C7 44 24 14 FF FF FF FF mov dword ptr [esp + 0x14], 0xffffffff
00402E4E: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00402E53: 6A 01                push 1
00402E55: 68 AB 00 00 00       push 0xab
00402E5A: 50                   push eax
00402E5B: 8B 10                mov edx, dword ptr [eax]
00402E5D: FF 92 C8 00 00 00    call dword ptr [edx + 0xc8]
00402E63: E9 67 01 00 00       jmp 0x402fcf
00402E68: 8B 84 24 48 01 00 00 mov eax, dword ptr [esp + 0x148]
00402E6F: 56                   push esi
00402E70: 50                   push eax
00402E71: 8B CD                mov ecx, ebp
00402E73: E8 A8 06 00 00       call 0x403520
00402E78: 85 C0                test eax, eax
00402E7A: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00402E7F: 8B 08                mov ecx, dword ptr [eax]
00402E81: 74 16                je 0x402e99
00402E83: 6A 02                push 2
00402E85: 6A 13                push 0x13
00402E87: 50                   push eax
00402E88: FF 91 C8 00 00 00    call dword ptr [ecx + 0xc8]
00402E8E: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00402E93: 6A 02                push 2
00402E95: 8B 10                mov edx, dword ptr [eax]
00402E97: EB 14                jmp 0x402ead
00402E99: 6A 05                push 5
00402E9B: 6A 13                push 0x13
00402E9D: 50                   push eax
00402E9E: FF 91 C8 00 00 00    call dword ptr [ecx + 0xc8]
00402EA4: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00402EA9: 6A 06                push 6
00402EAB: 8B 10                mov edx, dword ptr [eax]
00402EAD: 6A 14                push 0x14
00402EAF: 50                   push eax
00402EB0: FF 92 C8 00 00 00    call dword ptr [edx + 0xc8]
00402EB6: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00402EBB: 6A 01                push 1
00402EBD: 68 AB 00 00 00       push 0xab
00402EC2: 50                   push eax
00402EC3: 8B 08                mov ecx, dword ptr [eax]
00402EC5: FF 91 C8 00 00 00    call dword ptr [ecx + 0xc8]
00402ECB: E9 F8 00 00 00       jmp 0x402fc8
00402ED0: 8B 46 4C             mov eax, dword ptr [esi + 0x4c]
00402ED3: 85 C0                test eax, eax
00402ED5: 75 19                jne 0x402ef0
00402ED7: 8B 45 04             mov eax, dword ptr [ebp + 4]
00402EDA: 3D B3 00 00 00       cmp eax, 0xb3
00402EDF: 74 0F                je 0x402ef0
00402EE1: 3D AD 00 00 00       cmp eax, 0xad
00402EE6: 74 08                je 0x402ef0
00402EE8: 57                   push edi
00402EE9: 8B CE                mov ecx, esi
00402EEB: E8 40 00 01 00       call 0x412f30
00402EF0: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00402EF5: 6A 09                push 9
00402EF7: 6A 13                push 0x13
00402EF9: 50                   push eax
00402EFA: 8B 10                mov edx, dword ptr [eax]
00402EFC: FF 92 C8 00 00 00    call dword ptr [edx + 0xc8]
00402F02: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00402F07: 6A 01                push 1
00402F09: 6A 14                push 0x14
00402F0B: 50                   push eax
00402F0C: 8B 08                mov ecx, dword ptr [eax]
00402F0E: FF 91 C8 00 00 00    call dword ptr [ecx + 0xc8]
00402F14: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00402F19: 6A 02                push 2
00402F1B: 8B 10                mov edx, dword ptr [eax]
00402F1D: E9 9A 00 00 00       jmp 0x402fbc
00402F22: 8B 84 24 48 01 00 00 mov eax, dword ptr [esp + 0x148]
00402F29: 56                   push esi
00402F2A: 50                   push eax
00402F2B: 8B CD                mov ecx, ebp
00402F2D: E8 EE 05 00 00       call 0x403520
00402F32: 85 C0                test eax, eax
00402F34: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00402F39: 8B 08                mov ecx, dword ptr [eax]
00402F3B: 74 16                je 0x402f53
00402F3D: 6A 02                push 2
00402F3F: 6A 13                push 0x13
00402F41: 50                   push eax
00402F42: FF 91 C8 00 00 00    call dword ptr [ecx + 0xc8]
00402F48: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00402F4D: 6A 02                push 2
00402F4F: 8B 10                mov edx, dword ptr [eax]
00402F51: EB 14                jmp 0x402f67
00402F53: 6A 05                push 5
00402F55: 6A 13                push 0x13
00402F57: 50                   push eax
00402F58: FF 91 C8 00 00 00    call dword ptr [ecx + 0xc8]
00402F5E: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00402F63: 6A 06                push 6
00402F65: 8B 10                mov edx, dword ptr [eax]
00402F67: 6A 14                push 0x14
00402F69: 50                   push eax
00402F6A: FF 92 C8 00 00 00    call dword ptr [edx + 0xc8]
00402F70: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00402F75: 6A 01                push 1
00402F77: 68 AB 00 00 00       push 0xab
00402F7C: 50                   push eax
00402F7D: 8B 08                mov ecx, dword ptr [eax]
00402F7F: FF 91 C8 00 00 00    call dword ptr [ecx + 0xc8]
00402F85: C7 44 24 14 40 40 40 FF mov dword ptr [esp + 0x14], 0xff404040
00402F8D: EB 39                jmp 0x402fc8
00402F8F: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00402F94: 6A 05                push 5
00402F96: 6A 13                push 0x13
00402F98: 50                   push eax
00402F99: 8B 10                mov edx, dword ptr [eax]
00402F9B: FF 92 C8 00 00 00    call dword ptr [edx + 0xc8]
00402FA1: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00402FA6: 6A 06                push 6
00402FA8: 6A 14                push 0x14
00402FAA: 50                   push eax
00402FAB: 8B 08                mov ecx, dword ptr [eax]
00402FAD: FF 91 C8 00 00 00    call dword ptr [ecx + 0xc8]
00402FB3: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00402FB8: 6A 01                push 1
00402FBA: 8B 10                mov edx, dword ptr [eax]
00402FBC: 68 AB 00 00 00       push 0xab
00402FC1: 50                   push eax
00402FC2: FF 92 C8 00 00 00    call dword ptr [edx + 0xc8]
00402FC8: 8B BC 24 48 01 00 00 mov edi, dword ptr [esp + 0x148]
00402FCF: 8B 84 24 4C 01 00 00 mov eax, dword ptr [esp + 0x14c]
00402FD6: 0F BF 48 08          movsx ecx, word ptr [eax + 8]
00402FDA: 0F BF 50 06          movsx edx, word ptr [eax + 6]
00402FDE: 0F BF 40 04          movsx eax, word ptr [eax + 4]
00402FE2: 51                   push ecx
00402FE3: 52                   push edx
00402FE4: 8D 4C 24 50          lea ecx, [esp + 0x50]
00402FE8: 50                   push eax
00402FE9: 51                   push ecx
00402FEA: E8 81 72 01 00       call 0x41a270
00402FEF: 83 C4 04             add esp, 4
00402FF2: C7 84 24 4C 01 00 00 00 00 00 00 mov dword ptr [esp + 0x14c], 0
00402FFD: 8B CC                mov ecx, esp
00402FFF: 89 64 24 1C          mov dword ptr [esp + 0x1c], esp
00403003: 68 EC 8B 4E 00       push 0x4e8bec
00403008: E8 23 DA 09 00       call 0x4a0a30
0040300D: 8D B5 64 32 00 00    lea esi, [ebp + 0x3264]
00403013: 8D 94 24 D0 00 00 00 lea edx, [esp + 0xd0]
0040301A: 52                   push edx
0040301B: 8B CE                mov ecx, esi
0040301D: E8 CE 1C 00 00       call 0x404cf0
00403022: 8B 45 04             mov eax, dword ptr [ebp + 4]
00403025: C6 84 24 40 01 00 00 01 mov byte ptr [esp + 0x140], 1
0040302D: 3D B3 00 00 00       cmp eax, 0xb3
00403032: 75 5E                jne 0x403092
00403034: 81 FF B5 00 00 00    cmp edi, 0xb5
0040303A: 74 48                je 0x403084
0040303C: 81 FF B4 00 00 00    cmp edi, 0xb4
00403042: 74 40                je 0x403084
00403044: 81 FF B6 00 00 00    cmp edi, 0xb6
0040304A: 74 38                je 0x403084
0040304C: 81 FF AF 00 00 00    cmp edi, 0xaf
00403052: 74 30                je 0x403084
00403054: 81 FF B1 00 00 00    cmp edi, 0xb1
0040305A: 74 28                je 0x403084
0040305C: 81 FF B7 00 00 00    cmp edi, 0xb7
00403062: 74 20                je 0x403084
00403064: 81 FF B8 00 00 00    cmp edi, 0xb8
0040306A: 74 18                je 0x403084
0040306C: 81 FF B2 00 00 00    cmp edi, 0xb2
00403072: 74 10                je 0x403084
00403074: 81 FF 8D 00 00 00    cmp edi, 0x8d
0040307A: 74 08                je 0x403084
0040307C: 81 FF 8E 00 00 00    cmp edi, 0x8e
00403082: 75 0E                jne 0x403092
00403084: D9 44 24 50          fld dword ptr [esp + 0x50]
00403088: D8 05 E0 73 4A 00    fadd dword ptr [0x4a73e0]
0040308E: D9 5C 24 50          fstp dword ptr [esp + 0x50]
00403092: 83 EC 0C             sub esp, 0xc
00403095: 8D 44 24 54          lea eax, [esp + 0x54]
00403099: 8B CC                mov ecx, esp
0040309B: 89 64 24 1C          mov dword ptr [esp + 0x1c], esp
0040309F: 50                   push eax
004030A0: E8 8B D9 09 00       call 0x4a0a30
004030A5: 8D 4C 24 2C          lea ecx, [esp + 0x2c]
004030A9: 51                   push ecx
004030AA: 8B CE                mov ecx, esi
004030AC: E8 3F 1C 00 00       call 0x404cf0
004030B1: D9 85 14 33 00 00    fld dword ptr [ebp + 0x3314]
004030B7: D9 44 24 28          fld dword ptr [esp + 0x28]
004030BB: D8 F1                fdiv st(1)
004030BD: C6 84 24 40 01 00 00 02 mov byte ptr [esp + 0x140], 2
004030C5: D9 5C 24 28          fstp dword ptr [esp + 0x28]
004030C9: DD D8                fstp st(0)
004030CB: D9 85 14 33 00 00    fld dword ptr [ebp + 0x3314]
004030D1: D9 85 10 33 00 00    fld dword ptr [ebp + 0x3310]
004030D7: D8 05 DC 73 4A 00    fadd dword ptr [0x4a73dc]
004030DD: D8 F1                fdiv st(1)
004030DF: D9 44 24 28          fld dword ptr [esp + 0x28]
004030E3: DE D9                fcompp 
004030E5: DF E0                fnstsw ax
004030E7: F6 C4 41             test ah, 0x41
004030EA: DD D8                fstp st(0)
004030EC: 74 1A                je 0x403108
004030EE: D9 85 14 33 00 00    fld dword ptr [ebp + 0x3314]
004030F4: D9 85 10 33 00 00    fld dword ptr [ebp + 0x3310]
004030FA: D8 05 DC 73 4A 00    fadd dword ptr [0x4a73dc]
00403100: D8 F1                fdiv st(1)
00403102: D9 5C 24 28          fstp dword ptr [esp + 0x28]
00403106: DD D8                fstp st(0)
00403108: D9 44 24 28          fld dword ptr [esp + 0x28]
0040310C: D8 1D D8 73 4A 00    fcomp dword ptr [0x4a73d8]
00403112: DF E0                fnstsw ax
00403114: F6 C4 01             test ah, 1
00403117: 75 08                jne 0x403121
00403119: C7 44 24 28 A4 70 7D 3F mov dword ptr [esp + 0x28], 0x3f7d70a4
00403121: 8B 84 24 50 01 00 00 mov eax, dword ptr [esp + 0x150]
00403128: 8B 94 24 58 01 00 00 mov edx, dword ptr [esp + 0x158]
0040312F: 8B 8C 24 5C 01 00 00 mov ecx, dword ptr [esp + 0x15c]
00403136: 89 44 24 2C          mov dword ptr [esp + 0x2c], eax
0040313A: 03 C2                add eax, edx
0040313C: 8D 54 24 2C          lea edx, [esp + 0x2c]
00403140: 89 44 24 34          mov dword ptr [esp + 0x34], eax
00403144: 8B 84 24 54 01 00 00 mov eax, dword ptr [esp + 0x154]
0040314B: 89 44 24 30          mov dword ptr [esp + 0x30], eax
0040314F: 03 C1                add eax, ecx
00403151: 89 44 24 38          mov dword ptr [esp + 0x38], eax
00403155: 52                   push edx
00403156: 8D 84 24 EC 00 00 00 lea eax, [esp + 0xec]
0040315D: 68 68 4C 4D 00       push 0x4d4c68
00403162: 50                   push eax
00403163: FF 15 84 73 4A 00    call dword ptr [0x4a7384]
00403169: 85 C0                test eax, eax
0040316B: 75 3B                jne 0x4031a8
0040316D: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00403172: 6A 02                push 2
00403174: 6A 02                push 2
00403176: 6A 00                push 0
00403178: 8B 08                mov ecx, dword ptr [eax]
0040317A: 50                   push eax
0040317B: FF 91 FC 00 00 00    call dword ptr [ecx + 0xfc]
00403181: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00403186: 6A 01                push 1
00403188: 68 AB 00 00 00       push 0xab
0040318D: 50                   push eax
0040318E: 8B 10                mov edx, dword ptr [eax]
00403190: FF 92 C8 00 00 00    call dword ptr [edx + 0xc8]
00403196: 8B 03                mov eax, dword ptr [ebx]
00403198: 6A 00                push 0
0040319A: 6A 1B                push 0x1b
0040319C: 53                   push ebx
0040319D: FF 90 C8 00 00 00    call dword ptr [eax + 0xc8]
004031A3: E9 38 03 00 00       jmp 0x4034e0
004031A8: 8D 8C 24 F8 00 00 00 lea ecx, [esp + 0xf8]
004031AF: E8 1C DB 09 00       call 0x4a0cd0
004031B4: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
004031B9: 8D 94 24 F8 00 00 00 lea edx, [esp + 0xf8]
004031C0: 52                   push edx
004031C1: 68 00 01 00 00       push 0x100
004031C6: 8B 08                mov ecx, dword ptr [eax]
004031C8: 50                   push eax
004031C9: FF 91 94 00 00 00    call dword ptr [ecx + 0x94]
004031CF: 8D 8C 24 D0 00 00 00 lea ecx, [esp + 0xd0]
004031D6: E8 25 D8 09 00       call 0x4a0a00
004031DB: 8D 8C 24 DC 00 00 00 lea ecx, [esp + 0xdc]
004031E2: C6 84 24 40 01 00 00 03 mov byte ptr [esp + 0x140], 3
004031EA: E8 11 D8 09 00       call 0x4a0a00
004031EF: 68 30 4B 40 00       push 0x404b30
004031F4: 68 10 35 40 00       push 0x403510
004031F9: 6A 04                push 4
004031FB: 8D 44 24 70          lea eax, [esp + 0x70]
004031FF: 6A 18                push 0x18
00403201: 50                   push eax
00403202: C6 84 24 54 01 00 00 04 mov byte ptr [esp + 0x154], 4
0040320A: E8 0B EC 09 00       call 0x4a1e1a
0040320F: 8B 54 24 28          mov edx, dword ptr [esp + 0x28]
00403213: 83 EC 0C             sub esp, 0xc
00403216: DB 44 24 44          fild dword ptr [esp + 0x44]
0040321A: 8B CC                mov ecx, esp
0040321C: 89 64 24 1C          mov dword ptr [esp + 0x1c], esp
00403220: 52                   push edx
00403221: 51                   push ecx
00403222: C6 84 24 54 01 00 00 05 mov byte ptr [esp + 0x154], 5
0040322A: D9 1C 24             fstp dword ptr [esp]
0040322D: DB 44 24 40          fild dword ptr [esp + 0x40]
00403231: 51                   push ecx
00403232: D9 1C 24             fstp dword ptr [esp]
00403235: E8 D6 D7 09 00       call 0x4a0a10
0040323A: 8D 44 24 60          lea eax, [esp + 0x60]
0040323E: 8B CE                mov ecx, esi
00403240: 50                   push eax
00403241: E8 2A 1B 00 00       call 0x404d70
00403246: 50                   push eax
00403247: 8D 4C 24 68          lea ecx, [esp + 0x68]
0040324B: C6 84 24 44 01 00 00 06 mov byte ptr [esp + 0x144], 6
00403253: E8 D8 D7 09 00       call 0x4a0a30
00403258: 8B 54 24 28          mov edx, dword ptr [esp + 0x28]
0040325C: 83 EC 0C             sub esp, 0xc
0040325F: DB 44 24 3C          fild dword ptr [esp + 0x3c]
00403263: 8B CC                mov ecx, esp
00403265: 89 64 24 1C          mov dword ptr [esp + 0x1c], esp
00403269: 52                   push edx
0040326A: 51                   push ecx
0040326B: C6 84 24 54 01 00 00 05 mov byte ptr [esp + 0x154], 5
00403273: D9 1C 24             fstp dword ptr [esp]
00403276: DB 44 24 40          fild dword ptr [esp + 0x40]
0040327A: 51                   push ecx
0040327B: D9 1C 24             fstp dword ptr [esp]
0040327E: E8 8D D7 09 00       call 0x4a0a10
00403283: 8D 44 24 60          lea eax, [esp + 0x60]
00403287: 8B CE                mov ecx, esi
00403289: 50                   push eax
0040328A: E8 E1 1A 00 00       call 0x404d70
0040328F: 50                   push eax
00403290: 8D 8C 24 80 00 00 00 lea ecx, [esp + 0x80]
00403297: C6 84 24 44 01 00 00 07 mov byte ptr [esp + 0x144], 7
0040329F: E8 8C D7 09 00       call 0x4a0a30
004032A4: 8B 54 24 28          mov edx, dword ptr [esp + 0x28]
004032A8: 83 EC 0C             sub esp, 0xc
004032AB: DB 44 24 44          fild dword ptr [esp + 0x44]
004032AF: 8B CC                mov ecx, esp
004032B1: 89 64 24 1C          mov dword ptr [esp + 0x1c], esp
004032B5: 52                   push edx
004032B6: 51                   push ecx
004032B7: C6 84 24 54 01 00 00 05 mov byte ptr [esp + 0x154], 5
004032BF: D9 1C 24             fstp dword ptr [esp]
004032C2: DB 44 24 48          fild dword ptr [esp + 0x48]
004032C6: 51                   push ecx
004032C7: D9 1C 24             fstp dword ptr [esp]
004032CA: E8 41 D7 09 00       call 0x4a0a10
004032CF: 8D 44 24 60          lea eax, [esp + 0x60]
004032D3: 8B CE                mov ecx, esi
004032D5: 50                   push eax
004032D6: E8 95 1A 00 00       call 0x404d70
004032DB: 50                   push eax
004032DC: 8D 8C 24 98 00 00 00 lea ecx, [esp + 0x98]
004032E3: C6 84 24 44 01 00 00 08 mov byte ptr [esp + 0x144], 8
004032EB: E8 40 D7 09 00       call 0x4a0a30
004032F0: 8B 54 24 28          mov edx, dword ptr [esp + 0x28]
004032F4: 83 EC 0C             sub esp, 0xc
004032F7: DB 44 24 3C          fild dword ptr [esp + 0x3c]
004032FB: 8B CC                mov ecx, esp
004032FD: 89 64 24 1C          mov dword ptr [esp + 0x1c], esp
00403301: 52                   push edx
00403302: 51                   push ecx
00403303: C6 84 24 54 01 00 00 05 mov byte ptr [esp + 0x154], 5
0040330B: D9 1C 24             fstp dword ptr [esp]
0040330E: DB 44 24 48          fild dword ptr [esp + 0x48]
00403312: 51                   push ecx
00403313: D9 1C 24             fstp dword ptr [esp]
00403316: E8 F5 D6 09 00       call 0x4a0a10
0040331B: 8D 44 24 60          lea eax, [esp + 0x60]
0040331F: 8B CE                mov ecx, esi
00403321: 50                   push eax
00403322: E8 49 1A 00 00       call 0x404d70
00403327: 50                   push eax
00403328: 8D 8C 24 B0 00 00 00 lea ecx, [esp + 0xb0]
0040332F: C6 84 24 44 01 00 00 09 mov byte ptr [esp + 0x144], 9
00403337: E8 F4 D6 09 00       call 0x4a0a30
0040333C: 8B 84 24 68 01 00 00 mov eax, dword ptr [esp + 0x168]
00403343: C6 84 24 40 01 00 00 05 mov byte ptr [esp + 0x140], 5
0040334B: 83 F8 03             cmp eax, 3
0040334E: 7E 10                jle 0x403360
00403350: 8B 94 24 60 01 00 00 mov edx, dword ptr [esp + 0x160]
00403357: 42                   inc edx
00403358: 48                   dec eax
00403359: 89 94 24 60 01 00 00 mov dword ptr [esp + 0x160], edx
00403360: 8B 8C 24 6C 01 00 00 mov ecx, dword ptr [esp + 0x16c]
00403367: 83 F9 03             cmp ecx, 3
0040336A: 7E 10                jle 0x40337c
0040336C: 8B B4 24 64 01 00 00 mov esi, dword ptr [esp + 0x164]
00403373: 46                   inc esi
00403374: 49                   dec ecx
00403375: 89 B4 24 64 01 00 00 mov dword ptr [esp + 0x164], esi
0040337C: 8B 94 24 64 01 00 00 mov edx, dword ptr [esp + 0x164]
00403383: BE 01 00 00 00       mov esi, 1
00403388: DB 84 24 60 01 00 00 fild dword ptr [esp + 0x160]
0040338F: 03 D1                add edx, ecx
00403391: 8B 8C 24 60 01 00 00 mov ecx, dword ptr [esp + 0x160]
00403398: 89 54 24 1C          mov dword ptr [esp + 0x1c], edx
0040339C: 03 C8                add ecx, eax
0040339E: D9 54 24 74          fst dword ptr [esp + 0x74]
004033A2: DB 44 24 1C          fild dword ptr [esp + 0x1c]
004033A6: 89 4C 24 1C          mov dword ptr [esp + 0x1c], ecx
004033AA: 8B 4D 04             mov ecx, dword ptr [ebp + 4]
004033AD: BF 02 00 00 00       mov edi, 2
004033B2: 66 C7 44 24 3C 00 00 mov word ptr [esp + 0x3c], 0
004033B9: D9 54 24 10          fst dword ptr [esp + 0x10]
004033BD: D9 5C 24 78          fstp dword ptr [esp + 0x78]
004033C1: 8B 54 24 10          mov edx, dword ptr [esp + 0x10]
004033C5: 66 89 74 24 3E       mov word ptr [esp + 0x3e], si
004033CA: D9 9C 24 8C 00 00 00 fstp dword ptr [esp + 0x8c]
004033D1: DB 84 24 64 01 00 00 fild dword ptr [esp + 0x164]
004033D8: 89 94 24 A8 00 00 00 mov dword ptr [esp + 0xa8], edx
004033DF: 66 89 7C 24 40       mov word ptr [esp + 0x40], di
004033E4: 66 89 74 24 42       mov word ptr [esp + 0x42], si
004033E9: 66 C7 44 24 44 03 00 mov word ptr [esp + 0x44], 3
004033F0: D9 94 24 90 00 00 00 fst dword ptr [esp + 0x90]
004033F7: DB 44 24 1C          fild dword ptr [esp + 0x1c]
004033FB: 66 89 7C 24 46       mov word ptr [esp + 0x46], di
00403400: 8D 44 24 74          lea eax, [esp + 0x74]
00403404: BA 04 00 00 00       mov edx, 4
00403409: D9 94 24 A4 00 00 00 fst dword ptr [esp + 0xa4]
00403410: D9 9C 24 BC 00 00 00 fstp dword ptr [esp + 0xbc]
00403417: D9 9C 24 C0 00 00 00 fstp dword ptr [esp + 0xc0]
0040341E: 8B 6C 24 14          mov ebp, dword ptr [esp + 0x14]
00403422: 83 F9 4E             cmp ecx, 0x4e
00403425: 89 68 FC             mov dword ptr [eax - 4], ebp
00403428: 75 10                jne 0x40343a
0040342A: 39 74 24 18          cmp dword ptr [esp + 0x18], esi
0040342E: 75 0A                jne 0x40343a
00403430: D9 00                fld dword ptr [eax]
00403432: D8 0D D4 73 4A 00    fmul dword ptr [0x4a73d4]
00403438: EB 08                jmp 0x403442
0040343A: D9 00                fld dword ptr [eax]
0040343C: D8 0D D0 73 4A 00    fmul dword ptr [0x4a73d0]
00403442: D9 18                fstp dword ptr [eax]
00403444: D9 40 04             fld dword ptr [eax + 4]
00403447: D8 0D D0 73 4A 00    fmul dword ptr [0x4a73d0]
0040344D: 83 C0 18             add eax, 0x18
00403450: 4A                   dec edx
00403451: D9 58 EC             fstp dword ptr [eax - 0x14]
00403454: 75 C8                jne 0x40341e
00403456: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
0040345B: 68 42 01 00 00       push 0x142
00403460: 50                   push eax
00403461: 8B 08                mov ecx, dword ptr [eax]
00403463: FF 91 30 01 00 00    call dword ptr [ecx + 0x130]
00403469: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
0040346E: 8D 4C 24 64          lea ecx, [esp + 0x64]
00403472: 6A 18                push 0x18
00403474: 51                   push ecx
00403475: 8B 10                mov edx, dword ptr [eax]
00403477: 8D 4C 24 44          lea ecx, [esp + 0x44]
0040347B: 6A 65                push 0x65
0040347D: 51                   push ecx
0040347E: 57                   push edi
0040347F: 6A 04                push 4
00403481: 6A 00                push 0
00403483: 6A 04                push 4
00403485: 50                   push eax
00403486: FF 92 24 01 00 00    call dword ptr [edx + 0x124]
0040348C: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00403491: 57                   push edi
00403492: 57                   push edi
00403493: 6A 00                push 0
00403495: 8B 10                mov edx, dword ptr [eax]
00403497: 50                   push eax
00403498: FF 92 FC 00 00 00    call dword ptr [edx + 0xfc]
0040349E: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
004034A3: 56                   push esi
004034A4: 68 AB 00 00 00       push 0xab
004034A9: 50                   push eax
004034AA: 8B 08                mov ecx, dword ptr [eax]
004034AC: FF 91 C8 00 00 00    call dword ptr [ecx + 0xc8]
004034B2: 8B 13                mov edx, dword ptr [ebx]
004034B4: 6A 00                push 0
004034B6: 6A 1B                push 0x1b
004034B8: 53                   push ebx
004034B9: FF 92 C8 00 00 00    call dword ptr [edx + 0xc8]
004034BF: 68 30 4B 40 00       push 0x404b30
004034C4: 6A 04                push 4
004034C6: 8D 44 24 6C          lea eax, [esp + 0x6c]
004034CA: 6A 18                push 0x18
004034CC: 50                   push eax
004034CD: C6 84 24 50 01 00 00 04 mov byte ptr [esp + 0x150], 4
004034D5: E8 4C E8 09 00       call 0x4a1d26
004034DA: EB 04                jmp 0x4034e0
004034DC: 89 7C 24 18          mov dword ptr [esp + 0x18], edi
004034E0: 8B 8C 24 38 01 00 00 mov ecx, dword ptr [esp + 0x138]
004034E7: 5F                   pop edi
004034E8: 5E                   pop esi
004034E9: 5D                   pop ebp
004034EA: 64 89 0D 00 00 00 00 mov dword ptr fs:[0], ecx
004034F1: 5B                   pop ebx
004034F2: 81 C4 34 01 00 00    add esp, 0x134
004034F8: C2 30 00             ret 0x30
004034FB: 90                   nop 
004034FC: E7 2D                out 0x2d, eax
004034FE: 40                   inc eax
004034FF: 00 68 2E             add byte ptr [eax + 0x2e], ch
00403502: 40                   inc eax
00403503: 00 D0                add al, dl
00403505: 2E 40                inc eax
00403507: 00 22                add byte ptr [edx], ah
00403509: 2F                   das 
0040350A: 40                   inc eax
0040350B: 00 90 90 90 90 56    add byte ptr [eax + 0x56909090], dl
00403511: 8B F1                mov esi, ecx
00403513: E8 E8 D4 09 00       call 0x4a0a00
00403518: 8B C6                mov eax, esi
0040351A: 5E                   pop esi
0040351B: C3                   ret 
0040351C: 90                   nop 
0040351D: 90                   nop 
0040351E: 90                   nop 
0040351F: 90                   nop 
00403520: 8B 41 04             mov eax, dword ptr [ecx + 4]
00403523: 8B 4C 24 04          mov ecx, dword ptr [esp + 4]
00403527: 83 F8 23             cmp eax, 0x23
0040352A: 75 28                jne 0x403554
0040352C: 81 F9 84 00 00 00    cmp ecx, 0x84
00403532: 74 18                je 0x40354c
00403534: 81 F9 83 00 00 00    cmp ecx, 0x83
0040353A: 74 10                je 0x40354c
0040353C: 81 F9 86 00 00 00    cmp ecx, 0x86
00403542: 74 08                je 0x40354c
00403544: 81 F9 85 00 00 00    cmp ecx, 0x85
0040354A: 75 08                jne 0x403554
0040354C: B8 01 00 00 00       mov eax, 1
00403551: C2 08 00             ret 8
00403554: 3D A3 00 00 00       cmp eax, 0xa3
00403559: 75 10                jne 0x40356b
0040355B: 81 F9 B6 00 00 00    cmp ecx, 0xb6
00403561: 75 08                jne 0x40356b
00403563: B8 01 00 00 00       mov eax, 1
00403568: C2 08 00             ret 8
0040356B: 3D A4 00 00 00       cmp eax, 0xa4
00403570: 75 20                jne 0x403592
00403572: 81 F9 A6 00 00 00    cmp ecx, 0xa6
00403578: 74 10                je 0x40358a
0040357A: 81 F9 A7 00 00 00    cmp ecx, 0xa7
00403580: 74 08                je 0x40358a
00403582: 81 F9 A8 00 00 00    cmp ecx, 0xa8
00403588: 75 08                jne 0x403592
0040358A: B8 01 00 00 00       mov eax, 1
0040358F: C2 08 00             ret 8
00403592: 8B 4C 24 08          mov ecx, dword ptr [esp + 8]
00403596: 83 79 38 01          cmp dword ptr [ecx + 0x38], 1
0040359A: 75 05                jne 0x4035a1
0040359C: 83 F8 61             cmp eax, 0x61
0040359F: 75 1B                jne 0x4035bc
004035A1: 83 F8 18             cmp eax, 0x18
004035A4: 74 16                je 0x4035bc
004035A6: 3D EE 00 00 00       cmp eax, 0xee
004035AB: 74 0F                je 0x4035bc
004035AD: 3D ED 00 00 00       cmp eax, 0xed
004035B2: 74 08                je 0x4035bc
004035B4: B8 01 00 00 00       mov eax, 1
004035B9: C2 08 00             ret 8
004035BC: 33 C0                xor eax, eax
004035BE: C2 08 00             ret 8
004035C1: 90                   nop 
004035C2: 90                   nop 
004035C3: 90                   nop 
004035C4: 90                   nop 
004035C5: 90                   nop 
004035C6: 90                   nop 
004035C7: 90                   nop 
004035C8: 90                   nop 
004035C9: 90                   nop 
004035CA: 90                   nop 
004035CB: 90                   nop 
004035CC: 90                   nop 
004035CD: 90                   nop 
004035CE: 90                   nop 
004035CF: 90                   nop 
004035D0: 83 EC 08             sub esp, 8
004035D3: 8B C1                mov eax, ecx
004035D5: 33 C9                xor ecx, ecx
004035D7: 89 44 24 00          mov dword ptr [esp], eax
004035DB: 8B 90 60 32 00 00    mov edx, dword ptr [eax + 0x3260]
004035E1: C1 E2 08             shl edx, 8
004035E4: 85 D2                test edx, edx
004035E6: 0F 8E A4 00 00 00    jle 0x403690
004035EC: 53                   push ebx
004035ED: 55                   push ebp
004035EE: 56                   push esi
004035EF: 57                   push edi
004035F0: EB 04                jmp 0x4035f6
004035F2: 8B 44 24 10          mov eax, dword ptr [esp + 0x10]
004035F6: 8B 80 5C 32 00 00    mov eax, dword ptr [eax + 0x325c]
004035FC: 0F BF 14 48          movsx edx, word ptr [eax + ecx*2]
00403600: 8D 1C 48             lea ebx, [eax + ecx*2]
00403603: 8B F2                mov esi, edx
00403605: 8B FA                mov edi, edx
00403607: 8B C2                mov eax, edx
00403609: C1 FE 0F             sar esi, 0xf
0040360C: C1 FF 05             sar edi, 5
0040360F: C1 FA 0A             sar edx, 0xa
00403612: 83 E6 01             and esi, 1
00403615: 83 E0 1F             and eax, 0x1f
00403618: 83 E7 1F             and edi, 0x1f
0040361B: 83 E2 1F             and edx, 0x1f
0040361E: 85 F6                test esi, esi
00403620: 8B EA                mov ebp, edx
00403622: 75 0C                jne 0x403630
00403624: 85 C0                test eax, eax
00403626: 75 08                jne 0x403630
00403628: 85 FF                test edi, edi
0040362A: 75 04                jne 0x403630
0040362C: 85 ED                test ebp, ebp
0040362E: 74 05                je 0x403635
00403630: BE 0F 00 00 00       mov esi, 0xf
00403635: 8B 54 24 10          mov edx, dword ptr [esp + 0x10]
00403639: 83 7A 04 4E          cmp dword ptr [edx + 4], 0x4e
0040363D: 74 0E                je 0x40364d
0040363F: 85 C0                test eax, eax
00403641: 75 0A                jne 0x40364d
00403643: 85 FF                test edi, edi
00403645: 75 06                jne 0x40364d
00403647: 85 ED                test ebp, ebp
00403649: 75 02                jne 0x40364d
0040364B: 33 F6                xor esi, esi
0040364D: 99                   cdq 
0040364E: 2B C2                sub eax, edx
00403650: 8B D0                mov edx, eax
00403652: 8B C7                mov eax, edi
00403654: D1 FA                sar edx, 1
00403656: C1 E6 04             shl esi, 4
00403659: 03 D6                add edx, esi
0040365B: C1 E2 04             shl edx, 4
0040365E: 8B F2                mov esi, edx
00403660: 99                   cdq 
00403661: 2B C2                sub eax, edx
00403663: D1 F8                sar eax, 1
00403665: 03 F0                add esi, eax
00403667: 8B C5                mov eax, ebp
00403669: 99                   cdq 
0040366A: 2B C2                sub eax, edx
0040366C: C1 E6 04             shl esi, 4
0040366F: D1 F8                sar eax, 1
00403671: 03 F0                add esi, eax
00403673: 8B 44 24 10          mov eax, dword ptr [esp + 0x10]
00403677: 66 89 33             mov word ptr [ebx], si
0040367A: 41                   inc ecx
0040367B: 8B 90 60 32 00 00    mov edx, dword ptr [eax + 0x3260]
00403681: C1 E2 08             shl edx, 8
00403684: 3B CA                cmp ecx, edx
00403686: 0F 8C 66 FF FF FF    jl 0x4035f2
0040368C: 5F                   pop edi
0040368D: 5E                   pop esi
0040368E: 5D                   pop ebp
0040368F: 5B                   pop ebx
00403690: 83 C4 08             add esp, 8
00403693: C3                   ret 
00403694: 90                   nop 
00403695: 90                   nop 
00403696: 90                   nop 
00403697: 90                   nop 
00403698: 90                   nop 
00403699: 90                   nop 
0040369A: 90                   nop 
0040369B: 90                   nop 
0040369C: 90                   nop 
0040369D: 90                   nop 
0040369E: 90                   nop 
0040369F: 90                   nop 
004036A0: 83 EC 18             sub esp, 0x18
004036A3: 53                   push ebx
004036A4: 8B 99 00 36 00 00    mov ebx, dword ptr [ecx + 0x3600]
004036AA: 83 C3 04             add ebx, 4
004036AD: 55                   push ebp
004036AE: 56                   push esi
004036AF: 57                   push edi
004036B0: 66 8B 03             mov ax, word ptr [ebx]
004036B3: 83 C3 04             add ebx, 4
004036B6: 0F BF C0             movsx eax, ax
004036B9: 89 81 60 32 00 00    mov dword ptr [ecx + 0x3260], eax
004036BF: 89 99 5C 32 00 00    mov dword ptr [ecx + 0x325c], ebx
004036C5: 8A 15 28 22 4F 00    mov dl, byte ptr [0x4f2228]
004036CB: 33 FF                xor edi, edi
004036CD: C1 E0 09             shl eax, 9
004036D0: 03 D8                add ebx, eax
004036D2: A0 29 22 4F 00       mov al, byte ptr [0x4f2229]
004036D7: 89 4C 24 14          mov dword ptr [esp + 0x14], ecx
004036DB: B9 70 06 4F 00       mov ecx, 0x4f0670
004036E0: 84 C0                test al, al
004036E2: 0F 8E D5 00 00 00    jle 0x4037bd
004036E8: 0F BE C2             movsx eax, dl
004036EB: 33 F6                xor esi, esi
004036ED: 85 C0                test eax, eax
004036EF: 0F 8E B8 00 00 00    jle 0x4037ad
004036F5: 0F AF C7             imul eax, edi
004036F8: 8B 54 24 14          mov edx, dword ptr [esp + 0x14]
004036FC: 03 C6                add eax, esi
004036FE: 66 0F BE 44 10 20    movsx ax, byte ptr [eax + edx + 0x20]
00403704: 66 3D FF FF          cmp ax, 0xffff
00403708: 66 89 41 04          mov word ptr [ecx + 4], ax
0040370C: 75 43                jne 0x403751
0040370E: 8B C6                mov eax, esi
00403710: 8B D7                mov edx, edi
00403712: C1 E0 07             shl eax, 7
00403715: 66 89 41 06          mov word ptr [ecx + 6], ax
00403719: 8B C6                mov eax, esi
0040371B: C1 E2 07             shl edx, 7
0040371E: 25 03 00 00 80       and eax, 0x80000003
00403723: 66 89 51 08          mov word ptr [ecx + 8], dx
00403727: C7 01 00 00 00 00    mov dword ptr [ecx], 0
0040372D: 79 05                jns 0x403734
0040372F: 48                   dec eax
00403730: 83 C8 FC             or eax, 0xfffffffc
00403733: 40                   inc eax
00403734: 83 C0 0C             add eax, 0xc
00403737: BD 03 00 00 00       mov ebp, 3
0040373C: C1 E0 06             shl eax, 6
0040373F: 66 89 41 0A          mov word ptr [ecx + 0xa], ax
00403743: 8B C7                mov eax, edi
00403745: 99                   cdq 
00403746: F7 FD                idiv ebp
00403748: C1 E2 07             shl edx, 7
0040374B: 66 89 51 0C          mov word ptr [ecx + 0xc], dx
0040374F: EB 47                jmp 0x403798
00403751: 8B D6                mov edx, esi
00403753: 8B C7                mov eax, edi
00403755: C1 E2 07             shl edx, 7
00403758: 66 89 51 06          mov word ptr [ecx + 6], dx
0040375C: 8B D6                mov edx, esi
0040375E: 83 C3 04             add ebx, 4
00403761: C1 E0 07             shl eax, 7
00403764: 81 E2 03 00 00 80    and edx, 0x80000003
0040376A: 66 89 41 08          mov word ptr [ecx + 8], ax
0040376E: 89 19                mov dword ptr [ecx], ebx
00403770: 79 05                jns 0x403777
00403772: 4A                   dec edx
00403773: 83 CA FC             or edx, 0xfffffffc
00403776: 42                   inc edx
00403777: 83 C2 0C             add edx, 0xc
0040377A: 8B C7                mov eax, edi
0040377C: C1 E2 06             shl edx, 6
0040377F: 66 89 51 0A          mov word ptr [ecx + 0xa], dx
00403783: BD 03 00 00 00       mov ebp, 3
00403788: 99                   cdq 
00403789: F7 FD                idiv ebp
0040378B: C1 E2 07             shl edx, 7
0040378E: 66 89 51 0C          mov word ptr [ecx + 0xc], dx
00403792: 81 C3 00 40 00 00    add ebx, 0x4000
00403798: 8A 15 28 22 4F 00    mov dl, byte ptr [0x4f2228]
0040379E: 83 C1 14             add ecx, 0x14
004037A1: 0F BE C2             movsx eax, dl
004037A4: 46                   inc esi
004037A5: 3B F0                cmp esi, eax
004037A7: 0F 8C 48 FF FF FF    jl 0x4036f5
004037AD: 0F BE 05 29 22 4F 00 movsx eax, byte ptr [0x4f2229]
004037B4: 47                   inc edi
004037B5: 3B F8                cmp edi, eax
004037B7: 0F 8C 2B FF FF FF    jl 0x4036e8
004037BD: A0 29 22 4F 00       mov al, byte ptr [0x4f2229]
004037C2: 33 ED                xor ebp, ebp
004037C4: 84 C0                test al, al
004037C6: 89 6C 24 1C          mov dword ptr [esp + 0x1c], ebp
004037CA: 0F 8E 19 02 00 00    jle 0x4039e9
004037D0: 0F BE C2             movsx eax, dl
004037D3: 33 DB                xor ebx, ebx
004037D5: 85 C0                test eax, eax
004037D7: 89 5C 24 18          mov dword ptr [esp + 0x18], ebx
004037DB: 0F 8E F4 01 00 00    jle 0x4039d5
004037E1: 0F AF C5             imul eax, ebp
004037E4: 03 C3                add eax, ebx
004037E6: 83 C9 FF             or ecx, 0xffffffff
004037E9: 8D 04 80             lea eax, [eax + eax*4]
004037EC: C1 E0 02             shl eax, 2
004037EF: 66 39 88 74 06 4F 00 cmp word ptr [eax + 0x4f0674], cx
004037F6: 0F 84 BC 01 00 00    je 0x4039b8
004037FC: 8B 88 70 06 4F 00    mov ecx, dword ptr [eax + 0x4f0670]
00403802: 8B 74 24 14          mov esi, dword ptr [esp + 0x14]
00403806: 53                   push ebx
00403807: 55                   push ebp
00403808: 51                   push ecx
00403809: 8B CE                mov ecx, esi
0040380B: E8 B0 02 00 00       call 0x403ac0
00403810: 81 C6 58 27 00 00    add esi, 0x2758
00403816: 89 44 24 10          mov dword ptr [esp + 0x10], eax
0040381A: 8B 46 04             mov eax, dword ptr [esi + 4]
0040381D: 85 C0                test eax, eax
0040381F: 75 04                jne 0x403825
00403821: 33 C9                xor ecx, ecx
00403823: EB 08                jmp 0x40382d
00403825: 8B 4E 08             mov ecx, dword ptr [esi + 8]
00403828: 2B C8                sub ecx, eax
0040382A: C1 F9 02             sar ecx, 2
0040382D: 0F BE 05 28 22 4F 00 movsx eax, byte ptr [0x4f2228]
00403834: 0F AF C5             imul eax, ebp
00403837: 03 C3                add eax, ebx
00403839: 8D 14 80             lea edx, [eax + eax*4]
0040383C: 66 89 0C 95 82 06 4F 00 mov word ptr [edx*4 + 0x4f0682], cx
00403844: 8B 46 08             mov eax, dword ptr [esi + 8]
00403847: 8B 4E 0C             mov ecx, dword ptr [esi + 0xc]
0040384A: 8B F8                mov edi, eax
0040384C: 2B C8                sub ecx, eax
0040384E: C1 F9 02             sar ecx, 2
00403851: 83 F9 01             cmp ecx, 1
00403854: 0F 83 C8 00 00 00    jae 0x403922
0040385A: 8B 56 04             mov edx, dword ptr [esi + 4]
0040385D: 85 D2                test edx, edx
0040385F: 74 0C                je 0x40386d
00403861: 8B C8                mov ecx, eax
00403863: 2B CA                sub ecx, edx
00403865: C1 F9 02             sar ecx, 2
00403868: 83 F9 01             cmp ecx, 1
0040386B: 77 05                ja 0x403872
0040386D: B9 01 00 00 00       mov ecx, 1
00403872: 85 D2                test edx, edx
00403874: 75 04                jne 0x40387a
00403876: 33 C0                xor eax, eax
00403878: EB 05                jmp 0x40387f
0040387A: 2B C2                sub eax, edx
0040387C: C1 F8 02             sar eax, 2
0040387F: 03 C1                add eax, ecx
00403881: 85 C0                test eax, eax
00403883: 89 44 24 24          mov dword ptr [esp + 0x24], eax
00403887: 7D 02                jge 0x40388b
00403889: 33 C0                xor eax, eax
0040388B: 8D 14 85 00 00 00 00 lea edx, [eax*4]
00403892: 52                   push edx
00403893: E8 A6 E1 09 00       call 0x4a1a3e
00403898: 8B 5E 04             mov ebx, dword ptr [esi + 4]
0040389B: 83 C4 04             add esp, 4
0040389E: 3B DF                cmp ebx, edi
004038A0: 89 44 24 20          mov dword ptr [esp + 0x20], eax
004038A4: 8B E8                mov ebp, eax
004038A6: 74 14                je 0x4038bc
004038A8: 53                   push ebx
004038A9: 55                   push ebp
004038AA: E8 21 0F 00 00       call 0x4047d0
004038AF: 83 C3 04             add ebx, 4
004038B2: 83 C4 08             add esp, 8
004038B5: 83 C5 04             add ebp, 4
004038B8: 3B DF                cmp ebx, edi
004038BA: 75 EC                jne 0x4038a8
004038BC: 8D 44 24 10          lea eax, [esp + 0x10]
004038C0: 8B CE                mov ecx, esi
004038C2: 50                   push eax
004038C3: 6A 01                push 1
004038C5: 55                   push ebp
004038C6: E8 D5 0E 00 00       call 0x4047a0
004038CB: 8B 4E 08             mov ecx, dword ptr [esi + 8]
004038CE: 83 C5 04             add ebp, 4
004038D1: 55                   push ebp
004038D2: 51                   push ecx
004038D3: 57                   push edi
004038D4: 8B CE                mov ecx, esi
004038D6: E8 85 46 01 00       call 0x417f60
004038DB: 8B 56 08             mov edx, dword ptr [esi + 8]
004038DE: 8B 46 04             mov eax, dword ptr [esi + 4]
004038E1: 52                   push edx
004038E2: 50                   push eax
004038E3: 8B CE                mov ecx, esi
004038E5: E8 A6 E7 03 00       call 0x442090
004038EA: 8B 4E 04             mov ecx, dword ptr [esi + 4]
004038ED: 51                   push ecx
004038EE: E8 33 E1 09 00       call 0x4a1a26
004038F3: 8B 7C 24 24          mov edi, dword ptr [esp + 0x24]
004038F7: 8B 54 24 28          mov edx, dword ptr [esp + 0x28]
004038FB: 83 C4 04             add esp, 4
004038FE: 8B CE                mov ecx, esi
00403900: 8D 04 97             lea eax, [edi + edx*4]
00403903: 89 46 0C             mov dword ptr [esi + 0xc], eax
00403906: E8 75 0E 00 00       call 0x404780
0040390B: 8B 6C 24 1C          mov ebp, dword ptr [esp + 0x1c]
0040390F: 8B 5C 24 18          mov ebx, dword ptr [esp + 0x18]
00403913: 8D 4C 87 04          lea ecx, [edi + eax*4 + 4]
00403917: 89 7E 04             mov dword ptr [esi + 4], edi
0040391A: 89 4E 08             mov dword ptr [esi + 8], ecx
0040391D: E9 9D 00 00 00       jmp 0x4039bf
00403922: 8B C8                mov ecx, eax
00403924: 2B CF                sub ecx, edi
00403926: C1 F9 02             sar ecx, 2
00403929: 83 F9 01             cmp ecx, 1
0040392C: 73 46                jae 0x403974
0040392E: 8D 57 04             lea edx, [edi + 4]
00403931: 8B CE                mov ecx, esi
00403933: 52                   push edx
00403934: 50                   push eax
00403935: 57                   push edi
00403936: E8 25 46 01 00       call 0x417f60
0040393B: 8B 46 08             mov eax, dword ptr [esi + 8]
0040393E: 8D 4C 24 10          lea ecx, [esp + 0x10]
00403942: 8B D0                mov edx, eax
00403944: 51                   push ecx
00403945: 2B D7                sub edx, edi
00403947: B9 01 00 00 00       mov ecx, 1
0040394C: C1 FA 02             sar edx, 2
0040394F: 2B CA                sub ecx, edx
00403951: 51                   push ecx
00403952: 50                   push eax
00403953: 8B CE                mov ecx, esi
00403955: E8 46 0E 00 00       call 0x4047a0
0040395A: 8B 46 08             mov eax, dword ptr [esi + 8]
0040395D: 3B F8                cmp edi, eax
0040395F: 74 0D                je 0x40396e
00403961: 8B 54 24 10          mov edx, dword ptr [esp + 0x10]
00403965: 89 17                mov dword ptr [edi], edx
00403967: 83 C7 04             add edi, 4
0040396A: 3B F8                cmp edi, eax
0040396C: 75 F3                jne 0x403961
0040396E: 83 46 08 04          add dword ptr [esi + 8], 4
00403972: EB 4B                jmp 0x4039bf
00403974: 8D 48 FC             lea ecx, [eax - 4]
00403977: 50                   push eax
00403978: 50                   push eax
00403979: 89 4C 24 2C          mov dword ptr [esp + 0x2c], ecx
0040397D: 51                   push ecx
0040397E: 8B CE                mov ecx, esi
00403980: E8 DB 45 01 00       call 0x417f60
00403985: 8B 4E 08             mov ecx, dword ptr [esi + 8]
00403988: 8D 41 FC             lea eax, [ecx - 4]
0040398B: 3B F8                cmp edi, eax
0040398D: 74 0F                je 0x40399e
0040398F: 8B 50 FC             mov edx, dword ptr [eax - 4]
00403992: 83 E8 04             sub eax, 4
00403995: 83 E9 04             sub ecx, 4
00403998: 3B C7                cmp eax, edi
0040399A: 89 11                mov dword ptr [ecx], edx
0040399C: 75 F1                jne 0x40398f
0040399E: 8D 47 04             lea eax, [edi + 4]
004039A1: 3B F8                cmp edi, eax
004039A3: 74 0D                je 0x4039b2
004039A5: 8B 4C 24 10          mov ecx, dword ptr [esp + 0x10]
004039A9: 89 0F                mov dword ptr [edi], ecx
004039AB: 83 C7 04             add edi, 4
004039AE: 3B F8                cmp edi, eax
004039B0: 75 F3                jne 0x4039a5
004039B2: 83 46 08 04          add dword ptr [esi + 8], 4
004039B6: EB 07                jmp 0x4039bf
004039B8: 66 89 88 82 06 4F 00 mov word ptr [eax + 0x4f0682], cx
004039BF: 8A 15 28 22 4F 00    mov dl, byte ptr [0x4f2228]
004039C5: 43                   inc ebx
004039C6: 0F BE C2             movsx eax, dl
004039C9: 3B D8                cmp ebx, eax
004039CB: 89 5C 24 18          mov dword ptr [esp + 0x18], ebx
004039CF: 0F 8C 0C FE FF FF    jl 0x4037e1
004039D5: 0F BE 05 29 22 4F 00 movsx eax, byte ptr [0x4f2229]
004039DC: 45                   inc ebp
004039DD: 3B E8                cmp ebp, eax
004039DF: 89 6C 24 1C          mov dword ptr [esp + 0x1c], ebp
004039E3: 0F 8C E7 FD FF FF    jl 0x4037d0
004039E9: 8B 4C 24 14          mov ecx, dword ptr [esp + 0x14]
004039ED: E8 DE FB FF FF       call 0x4035d0
004039F2: 5F                   pop edi
004039F3: 5E                   pop esi
004039F4: 5D                   pop ebp
004039F5: 5B                   pop ebx
004039F6: 83 C4 18             add esp, 0x18
004039F9: C3                   ret 
004039FA: 90                   nop 
004039FB: 90                   nop 
004039FC: 90                   nop 
004039FD: 90                   nop 
004039FE: 90                   nop 
004039FF: 90                   nop 
00403A00: 83 EC 1C             sub esp, 0x1c
00403A03: 8B 44 24 20          mov eax, dword ptr [esp + 0x20]
00403A07: 55                   push ebp
00403A08: 25 FF FF 00 00       and eax, 0xffff
00403A0D: 57                   push edi
00403A0E: 8B D0                mov edx, eax
00403A10: 83 C9 FF             or ecx, 0xffffffff
00403A13: C1 EA 0A             shr edx, 0xa
00403A16: 83 E2 1F             and edx, 0x1f
00403A19: 33 FF                xor edi, edi
00403A1B: 89 54 24 18          mov dword ptr [esp + 0x18], edx
00403A1F: 8B D0                mov edx, eax
00403A21: 83 E0 1F             and eax, 0x1f
00403A24: 89 4C 24 08          mov dword ptr [esp + 8], ecx
00403A28: C1 EA 05             shr edx, 5
00403A2B: 89 44 24 20          mov dword ptr [esp + 0x20], eax
00403A2F: 8B 44 24 30          mov eax, dword ptr [esp + 0x30]
00403A33: 83 E2 1F             and edx, 0x1f
00403A36: BD E8 03 00 00       mov ebp, 0x3e8
00403A3B: 85 C0                test eax, eax
00403A3D: 89 54 24 1C          mov dword ptr [esp + 0x1c], edx
00403A41: 7E 69                jle 0x403aac
00403A43: 53                   push ebx
00403A44: 8B 5C 24 30          mov ebx, dword ptr [esp + 0x30]
00403A48: 56                   push esi
00403A49: 33 C0                xor eax, eax
00403A4B: 33 F6                xor esi, esi
00403A4D: 66 8B 03             mov ax, word ptr [ebx]
00403A50: 8B C8                mov ecx, eax
00403A52: 8B D0                mov edx, eax
00403A54: C1 E9 0A             shr ecx, 0xa
00403A57: C1 EA 05             shr edx, 5
00403A5A: 83 E1 1F             and ecx, 0x1f
00403A5D: 83 E2 1F             and edx, 0x1f
00403A60: 83 E0 1F             and eax, 0x1f
00403A63: 89 4C 24 14          mov dword ptr [esp + 0x14], ecx
00403A67: 89 54 24 18          mov dword ptr [esp + 0x18], edx
00403A6B: 89 44 24 1C          mov dword ptr [esp + 0x1c], eax
00403A6F: 33 C9                xor ecx, ecx
00403A71: 8B 44 0C 14          mov eax, dword ptr [esp + ecx + 0x14]
00403A75: 8B 54 0C 20          mov edx, dword ptr [esp + ecx + 0x20]
00403A79: 2B C2                sub eax, edx
00403A7B: 83 C1 04             add ecx, 4
00403A7E: 99                   cdq 
00403A7F: 33 C2                xor eax, edx
00403A81: 2B C2                sub eax, edx
00403A83: 03 F0                add esi, eax
00403A85: 83 F9 0C             cmp ecx, 0xc
00403A88: 7C E7                jl 0x403a71
00403A8A: 3B F5                cmp esi, ebp
00403A8C: 7D 06                jge 0x403a94
00403A8E: 89 7C 24 10          mov dword ptr [esp + 0x10], edi
00403A92: 8B EE                mov ebp, esi
00403A94: 8B 44 24 38          mov eax, dword ptr [esp + 0x38]
00403A98: 47                   inc edi
00403A99: 83 C3 02             add ebx, 2
00403A9C: 3B F8                cmp edi, eax
00403A9E: 7C A9                jl 0x403a49
00403AA0: 8B 44 24 10          mov eax, dword ptr [esp + 0x10]
00403AA4: 5E                   pop esi
00403AA5: 5B                   pop ebx
00403AA6: 5F                   pop edi
00403AA7: 5D                   pop ebp
00403AA8: 83 C4 1C             add esp, 0x1c
00403AAB: C3                   ret 
00403AAC: 5F                   pop edi
00403AAD: 8B C1                mov eax, ecx
00403AAF: 5D                   pop ebp
00403AB0: 83 C4 1C             add esp, 0x1c
00403AB3: C3                   ret 
00403AB4: 90                   nop 
00403AB5: 90                   nop 
00403AB6: 90                   nop 
00403AB7: 90                   nop 
00403AB8: 90                   nop 
00403AB9: 90                   nop 
00403ABA: 90                   nop 
00403ABB: 90                   nop 
00403ABC: 90                   nop 
00403ABD: 90                   nop 
00403ABE: 90                   nop 
00403ABF: 90                   nop 
00403AC0: 6A FF                push -1
00403AC2: 68 94 25 4A 00       push 0x4a2594
00403AC7: 64 A1 00 00 00 00    mov eax, dword ptr fs:[0]
00403ACD: 50                   push eax
00403ACE: 64 89 25 00 00 00 00 mov dword ptr fs:[0], esp
00403AD5: 81 EC BC 05 00 00    sub esp, 0x5bc
00403ADB: 53                   push ebx
00403ADC: 55                   push ebp
00403ADD: 56                   push esi
00403ADE: 57                   push edi
00403ADF: 8B F1                mov esi, ecx
00403AE1: 68 A0 00 00 00       push 0xa0
00403AE6: E8 53 DF 09 00       call 0x4a1a3e
00403AEB: 83 C4 04             add esp, 4
00403AEE: 89 44 24 18          mov dword ptr [esp + 0x18], eax
00403AF2: 33 DB                xor ebx, ebx
00403AF4: 3B C3                cmp eax, ebx
00403AF6: 89 9C 24 D4 05 00 00 mov dword ptr [esp + 0x5d4], ebx
00403AFD: 74 0D                je 0x403b0c
00403AFF: 8B C8                mov ecx, eax
00403B01: E8 1A D7 00 00       call 0x411220
00403B06: 89 44 24 1C          mov dword ptr [esp + 0x1c], eax
00403B0A: EB 04                jmp 0x403b10
00403B0C: 89 5C 24 1C          mov dword ptr [esp + 0x1c], ebx
00403B10: 8D 4C 24 14          lea ecx, [esp + 0x14]
00403B14: C7 84 24 D4 05 00 00 FF FF FF FF mov dword ptr [esp + 0x5d4], 0xffffffff
00403B1F: E8 14 DF 09 00       call 0x4a1a38
00403B24: 8B 4E 04             mov ecx, dword ptr [esi + 4]
00403B27: C7 84 24 D4 05 00 00 01 00 00 00 mov dword ptr [esp + 0x5d4], 1
00403B32: 8B C1                mov eax, ecx
00403B34: C1 E0 04             shl eax, 4
00403B37: 05 98 25 4B 00       add eax, 0x4b2598
00403B3C: 50                   push eax
00403B3D: B8 89 88 88 88       mov eax, 0x88888889
00403B42: F7 E9                imul ecx
00403B44: 03 D1                add edx, ecx
00403B46: 8D 44 24 18          lea eax, [esp + 0x18]
00403B4A: C1 FA 03             sar edx, 3
00403B4D: 8B CA                mov ecx, edx
00403B4F: C1 E9 1F             shr ecx, 0x1f
00403B52: 8D 54 0A 01          lea edx, [edx + ecx + 1]
00403B56: 52                   push edx
00403B57: 68 40 24 4B 00       push 0x4b2440
00403B5C: 50                   push eax
00403B5D: E8 D0 DE 09 00       call 0x4a1a32
00403B62: 83 C4 10             add esp, 0x10
00403B65: 8D 4C 24 10          lea ecx, [esp + 0x10]
00403B69: E8 CA DE 09 00       call 0x4a1a38
00403B6E: 8B 8C 24 E4 05 00 00 mov ecx, dword ptr [esp + 0x5e4]
00403B75: 8B 94 24 E0 05 00 00 mov edx, dword ptr [esp + 0x5e0]
00403B7C: 8B 44 24 14          mov eax, dword ptr [esp + 0x14]
00403B80: 51                   push ecx
00403B81: 52                   push edx
00403B82: 50                   push eax
00403B83: 8D 4C 24 1C          lea ecx, [esp + 0x1c]
00403B87: 68 2C 24 4B 00       push 0x4b242c
00403B8C: 51                   push ecx
00403B8D: C6 84 24 E8 05 00 00 02 mov byte ptr [esp + 0x5e8], 2
00403B95: E8 98 DE 09 00       call 0x4a1a32
00403B9A: 68 20 42 00 00       push 0x4220
00403B9F: E8 9A DE 09 00       call 0x4a1a3e
00403BA4: 8D 68 04             lea ebp, [eax + 4]
00403BA7: B9 80 00 00 00       mov ecx, 0x80
00403BAC: 68 28 24 4B 00       push 0x4b2428
00403BB1: 89 44 24 34          mov dword ptr [esp + 0x34], eax
00403BB5: C7 45 00 09 00 00 00 mov dword ptr [ebp], 9
00403BBC: 83 C5 04             add ebp, 4
00403BBF: C7 45 00 24 02 00 00 mov dword ptr [ebp], 0x224
00403BC6: 83 C5 04             add ebp, 4
00403BC9: C7 45 00 00 00 E0 01 mov dword ptr [ebp], 0x1e00000
00403BD0: 83 C5 04             add ebp, 4
00403BD3: C7 45 00 00 01 01 00 mov dword ptr [ebp], 0x10100
00403BDA: 8B B6 5C 32 00 00    mov esi, dword ptr [esi + 0x325c]
00403BE0: 83 C5 04             add ebp, 4
00403BE3: 89 6C 24 3C          mov dword ptr [esp + 0x3c], ebp
00403BE7: 8B FD                mov edi, ebp
00403BE9: 81 C5 00 02 00 00    add ebp, 0x200
00403BEF: F3 A5                rep movsd dword ptr es:[edi], dword ptr [esi]
00403BF1: C7 45 00 0C 20 00 00 mov dword ptr [ebp], 0x200c
00403BF8: 83 C5 04             add ebp, 4
00403BFB: 8B B4 24 F8 05 00 00 mov esi, dword ptr [esp + 0x5f8]
00403C02: B9 00 10 00 00       mov ecx, 0x1000
00403C07: 89 5D 00             mov dword ptr [ebp], ebx
00403C0A: 83 C5 04             add ebp, 4
00403C0D: C7 45 00 40 00 80 00 mov dword ptr [ebp], 0x800040
00403C14: 83 C5 04             add ebp, 4
00403C17: 8B FD                mov edi, ebp
00403C19: F3 A5                rep movsd dword ptr es:[edi], dword ptr [esi]
00403C1B: 8B 54 24 2C          mov edx, dword ptr [esp + 0x2c]
00403C1F: 52                   push edx
00403C20: FF 15 10 73 4A 00    call dword ptr [0x4a7310]
00403C26: 8B D8                mov ebx, eax
00403C28: 83 C4 20             add esp, 0x20
00403C2B: 85 DB                test ebx, ebx
00403C2D: 0F 84 38 01 00 00    je 0x403d6b
00403C33: 6A 00                push 0
00403C35: 6A 0E                push 0xe
00403C37: 53                   push ebx
00403C38: FF 15 14 73 4A 00    call dword ptr [0x4a7314]
00403C3E: 8B 35 18 73 4A 00    mov esi, dword ptr [0x4a7318]
00403C44: 53                   push ebx
00403C45: 6A 01                push 1
00403C47: 8D 44 24 38          lea eax, [esp + 0x38]
00403C4B: 6A 28                push 0x28
00403C4D: 50                   push eax
00403C4E: FF D6                call esi
00403C50: 53                   push ebx
00403C51: 6A 01                push 1
00403C53: 8D 8C 24 F0 01 00 00 lea ecx, [esp + 0x1f0]
00403C5A: 68 00 04 00 00       push 0x400
00403C5F: 51                   push ecx
00403C60: FF D6                call esi
00403C62: 83 C4 2C             add esp, 0x2c
00403C65: 33 F6                xor esi, esi
00403C67: 8D BC 24 CD 01 00 00 lea edi, [esp + 0x1cd]
00403C6E: 33 C0                xor eax, eax
00403C70: 33 D2                xor edx, edx
00403C72: 8A 47 FF             mov al, byte ptr [edi - 1]
00403C75: 8A 17                mov dl, byte ptr [edi]
00403C77: 33 C9                xor ecx, ecx
00403C79: 8A 4F 01             mov cl, byte ptr [edi + 1]
00403C7C: C1 E8 03             shr eax, 3
00403C7F: C1 EA 03             shr edx, 3
00403C82: C1 E9 03             shr ecx, 3
00403C85: 83 F8 1F             cmp eax, 0x1f
00403C88: 7E 05                jle 0x403c8f
00403C8A: B8 1F 00 00 00       mov eax, 0x1f
00403C8F: 83 FA 1F             cmp edx, 0x1f
00403C92: 7E 05                jle 0x403c99
00403C94: BA 1F 00 00 00       mov edx, 0x1f
00403C99: 83 F9 1F             cmp ecx, 0x1f
00403C9C: 7E 05                jle 0x403ca3
00403C9E: B9 1F 00 00 00       mov ecx, 0x1f
00403CA3: C1 E0 05             shl eax, 5
00403CA6: 03 C2                add eax, edx
00403CA8: 8B 54 24 20          mov edx, dword ptr [esp + 0x20]
00403CAC: C1 E0 05             shl eax, 5
00403CAF: 03 C1                add eax, ecx
00403CB1: 68 00 01 00 00       push 0x100
00403CB6: 52                   push edx
00403CB7: 50                   push eax
00403CB8: E8 43 FD FF FF       call 0x403a00
00403CBD: 83 C4 0C             add esp, 0xc
00403CC0: 88 84 34 CC 00 00 00 mov byte ptr [esp + esi + 0xcc], al
00403CC7: 46                   inc esi
00403CC8: 83 C7 04             add edi, 4
00403CCB: 81 FE 00 01 00 00    cmp esi, 0x100
00403CD1: 7C 9B                jl 0x403c6e
00403CD3: 8B 44 24 2C          mov eax, dword ptr [esp + 0x2c]
00403CD7: 85 C0                test eax, eax
00403CD9: 7E 47                jle 0x403d22
00403CDB: 81 C5 80 3F 00 00    add ebp, 0x3f80
00403CE1: BE 80 00 00 00       mov esi, 0x80
00403CE6: 53                   push ebx
00403CE7: 6A 01                push 1
00403CE9: 8D 44 24 54          lea eax, [esp + 0x54]
00403CED: 68 80 00 00 00       push 0x80
00403CF2: 50                   push eax
00403CF3: FF 15 18 73 4A 00    call dword ptr [0x4a7318]
00403CF9: 83 C4 10             add esp, 0x10
00403CFC: 33 C0                xor eax, eax
00403CFE: 33 C9                xor ecx, ecx
00403D00: 8A 4C 04 4C          mov cl, byte ptr [esp + eax + 0x4c]
00403D04: 40                   inc eax
00403D05: 3D 80 00 00 00       cmp eax, 0x80
00403D0A: 8A 94 0C CC 00 00 00 mov dl, byte ptr [esp + ecx + 0xcc]
00403D11: 88 54 28 FF          mov byte ptr [eax + ebp - 1], dl
00403D15: 7C E7                jl 0x403cfe
00403D17: 81 ED 80 00 00 00    sub ebp, 0x80
00403D1D: 4E                   dec esi
00403D1E: 75 C6                jne 0x403ce6
00403D20: EB 3F                jmp 0x403d61
00403D22: BE 80 00 00 00       mov esi, 0x80
00403D27: 53                   push ebx
00403D28: 6A 01                push 1
00403D2A: 8D 44 24 54          lea eax, [esp + 0x54]
00403D2E: 68 80 00 00 00       push 0x80
00403D33: 50                   push eax
00403D34: FF 15 18 73 4A 00    call dword ptr [0x4a7318]
00403D3A: 83 C4 10             add esp, 0x10
00403D3D: 33 C0                xor eax, eax
00403D3F: 33 C9                xor ecx, ecx
00403D41: 8A 4C 04 4C          mov cl, byte ptr [esp + eax + 0x4c]
00403D45: 40                   inc eax
00403D46: 3D 80 00 00 00       cmp eax, 0x80
00403D4B: 8A 94 0C CC 00 00 00 mov dl, byte ptr [esp + ecx + 0xcc]
00403D52: 88 54 28 FF          mov byte ptr [eax + ebp - 1], dl
00403D56: 7C E7                jl 0x403d3f
00403D58: 81 C5 80 00 00 00    add ebp, 0x80
00403D5E: 4E                   dec esi
00403D5F: 75 C6                jne 0x403d27
00403D61: 53                   push ebx
00403D62: FF 15 1C 73 4A 00    call dword ptr [0x4a731c]
00403D68: 83 C4 04             add esp, 4
00403D6B: 8B 74 24 18          mov esi, dword ptr [esp + 0x18]
00403D6F: 8B 7C 24 1C          mov edi, dword ptr [esp + 0x1c]
00403D73: 6A 01                push 1
00403D75: 6A 00                push 0
00403D77: 56                   push esi
00403D78: 8B CF                mov ecx, edi
00403D7A: E8 81 D7 00 00       call 0x411500
00403D7F: 56                   push esi
00403D80: E8 A1 DC 09 00       call 0x4a1a26
00403D85: 83 C4 04             add esp, 4
00403D88: 8D 4C 24 10          lea ecx, [esp + 0x10]
00403D8C: C6 84 24 D4 05 00 00 01 mov byte ptr [esp + 0x5d4], 1
00403D94: E8 93 DC 09 00       call 0x4a1a2c
00403D99: 8D 4C 24 14          lea ecx, [esp + 0x14]
00403D9D: C7 84 24 D4 05 00 00 FF FF FF FF mov dword ptr [esp + 0x5d4], 0xffffffff
00403DA8: E8 7F DC 09 00       call 0x4a1a2c
00403DAD: 8B 8C 24 CC 05 00 00 mov ecx, dword ptr [esp + 0x5cc]
00403DB4: 8B C7                mov eax, edi
00403DB6: 5F                   pop edi
00403DB7: 5E                   pop esi
00403DB8: 5D                   pop ebp
00403DB9: 5B                   pop ebx
00403DBA: 64 89 0D 00 00 00 00 mov dword ptr fs:[0], ecx
00403DC1: 81 C4 C8 05 00 00    add esp, 0x5c8
00403DC7: C2 0C 00             ret 0xc
00403DCA: 90                   nop 
00403DCB: 90                   nop 
00403DCC: 90                   nop 
00403DCD: 90                   nop 
00403DCE: 90                   nop 
00403DCF: 90                   nop 
00403DD0: 6A FF                push -1
00403DD2: 68 D2 25 4A 00       push 0x4a25d2
00403DD7: 64 A1 00 00 00 00    mov eax, dword ptr fs:[0]
00403DDD: 50                   push eax
00403DDE: 64 89 25 00 00 00 00 mov dword ptr fs:[0], esp
00403DE5: 81 EC 64 05 00 00    sub esp, 0x564
00403DEB: 53                   push ebx
00403DEC: 55                   push ebp
00403DED: 8B E9                mov ebp, ecx
00403DEF: 56                   push esi
00403DF0: 57                   push edi
00403DF1: 33 FF                xor edi, edi
00403DF3: 8B 4D 04             mov ecx, dword ptr [ebp + 4]
00403DF6: 8B 85 FC 35 00 00    mov eax, dword ptr [ebp + 0x35fc]
00403DFC: C1 E1 04             shl ecx, 4
00403DFF: 83 C0 04             add eax, 4
00403E02: 89 6C 24 38          mov dword ptr [esp + 0x38], ebp
00403E06: 8A 91 A2 25 4B 00    mov dl, byte ptr [ecx + 0x4b25a2]
00403E0C: 89 44 24 1C          mov dword ptr [esp + 0x1c], eax
00403E10: 84 D2                test dl, dl
00403E12: 89 7C 24 28          mov dword ptr [esp + 0x28], edi
00403E16: 0F 8E A9 04 00 00    jle 0x4042c5
00403E1C: 8B 30                mov esi, dword ptr [eax]
00403E1E: 83 C0 04             add eax, 4
00403E21: 68 A0 00 00 00       push 0xa0
00403E26: 89 74 24 28          mov dword ptr [esp + 0x28], esi
00403E2A: 89 44 24 20          mov dword ptr [esp + 0x20], eax
00403E2E: E8 0B DC 09 00       call 0x4a1a3e
00403E33: 83 C4 04             add esp, 4
00403E36: 89 44 24 10          mov dword ptr [esp + 0x10], eax
00403E3A: 85 C0                test eax, eax
00403E3C: C7 84 24 7C 05 00 00 00 00 00 00 mov dword ptr [esp + 0x57c], 0
00403E47: 74 09                je 0x403e52
00403E49: 8B C8                mov ecx, eax
00403E4B: E8 D0 D3 00 00       call 0x411220
00403E50: EB 02                jmp 0x403e54
00403E52: 33 C0                xor eax, eax
00403E54: 8D 4C 24 30          lea ecx, [esp + 0x30]
00403E58: C7 84 24 7C 05 00 00 FF FF FF FF mov dword ptr [esp + 0x57c], 0xffffffff
00403E63: 89 44 24 2C          mov dword ptr [esp + 0x2c], eax
00403E67: E8 CC DB 09 00       call 0x4a1a38
00403E6C: 8B 4D 04             mov ecx, dword ptr [ebp + 4]
00403E6F: B8 89 88 88 88       mov eax, 0x88888889
00403E74: 8B D1                mov edx, ecx
00403E76: C7 84 24 7C 05 00 00 01 00 00 00 mov dword ptr [esp + 0x57c], 1
00403E81: C1 E2 04             shl edx, 4
00403E84: 81 C2 98 25 4B 00    add edx, 0x4b2598
00403E8A: 52                   push edx
00403E8B: F7 E9                imul ecx
00403E8D: 03 D1                add edx, ecx
00403E8F: C1 FA 03             sar edx, 3
00403E92: 8B C2                mov eax, edx
00403E94: C1 E8 1F             shr eax, 0x1f
00403E97: 8D 4C 02 01          lea ecx, [edx + eax + 1]
00403E9B: 8D 54 24 34          lea edx, [esp + 0x34]
00403E9F: 51                   push ecx
00403EA0: 68 64 24 4B 00       push 0x4b2464
00403EA5: 52                   push edx
00403EA6: E8 87 DB 09 00       call 0x4a1a32
00403EAB: 83 C4 10             add esp, 0x10
00403EAE: 8D 4C 24 34          lea ecx, [esp + 0x34]
00403EB2: E8 81 DB 09 00       call 0x4a1a38
00403EB7: 8B 44 24 30          mov eax, dword ptr [esp + 0x30]
00403EBB: 57                   push edi
00403EBC: 50                   push eax
00403EBD: 8D 4C 24 3C          lea ecx, [esp + 0x3c]
00403EC1: 68 54 24 4B 00       push 0x4b2454
00403EC6: 51                   push ecx
00403EC7: C6 84 24 8C 05 00 00 02 mov byte ptr [esp + 0x58c], 2
00403ECF: E8 5E DB 09 00       call 0x4a1a32
00403ED4: 8B 54 24 44          mov edx, dword ptr [esp + 0x44]
00403ED8: 68 28 24 4B 00       push 0x4b2428
00403EDD: 52                   push edx
00403EDE: FF 15 10 73 4A 00    call dword ptr [0x4a7310]
00403EE4: 8B F8                mov edi, eax
00403EE6: 83 C4 18             add esp, 0x18
00403EE9: 85 FF                test edi, edi
00403EEB: 0F 84 26 02 00 00    je 0x404117
00403EF1: 8B 44 24 38          mov eax, dword ptr [esp + 0x38]
00403EF5: 8B 54 24 24          mov edx, dword ptr [esp + 0x24]
00403EF9: 33 F6                xor esi, esi
00403EFB: 57                   push edi
00403EFC: 8B 88 FC 35 00 00    mov ecx, dword ptr [eax + 0x35fc]
00403F02: 8B 44 0A 10          mov eax, dword ptr [edx + ecx + 0x10]
00403F06: C1 E8 10             shr eax, 0x10
00403F09: 8D 4C 0A 10          lea ecx, [edx + ecx + 0x10]
00403F0D: 6A 01                push 1
00403F0F: 0F BF C0             movsx eax, ax
00403F12: 66 8B 11             mov dx, word ptr [ecx]
00403F15: 83 C1 04             add ecx, 4
00403F18: 0F BF D2             movsx edx, dx
00403F1B: 0F AF C2             imul eax, edx
00403F1E: D1 E0                shl eax, 1
00403F20: 99                   cdq 
00403F21: 83 E2 03             and edx, 3
00403F24: 6A 0E                push 0xe
00403F26: 03 C2                add eax, edx
00403F28: 89 4C 24 1C          mov dword ptr [esp + 0x1c], ecx
00403F2C: C1 F8 02             sar eax, 2
00403F2F: 66 8B 74 81 08       mov si, word ptr [ecx + eax*4 + 8]
00403F34: 8B 5C 81 08          mov ebx, dword ptr [ecx + eax*4 + 8]
00403F38: 8D 6C 81 08          lea ebp, [ecx + eax*4 + 8]
00403F3C: 8D 44 24 48          lea eax, [esp + 0x48]
00403F40: 50                   push eax
00403F41: 83 C5 04             add ebp, 4
00403F44: D1 E6                shl esi, 1
00403F46: C1 EB 10             shr ebx, 0x10
00403F49: FF 15 18 73 4A 00    call dword ptr [0x4a7318]
00403F4F: 57                   push edi
00403F50: 6A 01                push 1
00403F52: 8D 4C 24 64          lea ecx, [esp + 0x64]
00403F56: 6A 28                push 0x28
00403F58: 51                   push ecx
00403F59: FF 15 18 73 4A 00    call dword ptr [0x4a7318]
00403F5F: 57                   push edi
00403F60: 6A 01                push 1
00403F62: 8D 94 24 9C 01 00 00 lea edx, [esp + 0x19c]
00403F69: 68 00 04 00 00       push 0x400
00403F6E: 52                   push edx
00403F6F: FF 15 18 73 4A 00    call dword ptr [0x4a7318]
00403F75: 8B 44 24 76          mov eax, dword ptr [esp + 0x76]
00403F79: 6A 00                push 0
00403F7B: 50                   push eax
00403F7C: 57                   push edi
00403F7D: FF 15 14 73 4A 00    call dword ptr [0x4a7314]
00403F83: 8D 8C 24 B1 01 00 00 lea ecx, [esp + 0x1b1]
00403F8A: 83 C4 3C             add esp, 0x3c
00403F8D: C7 44 24 18 00 00 00 00 mov dword ptr [esp + 0x18], 0
00403F95: 89 4C 24 14          mov dword ptr [esp + 0x14], ecx
00403F99: 8B 4C 24 14          mov ecx, dword ptr [esp + 0x14]
00403F9D: 33 D2                xor edx, edx
00403F9F: 33 C0                xor eax, eax
00403FA1: 8A 11                mov dl, byte ptr [ecx]
00403FA3: 8A 41 FF             mov al, byte ptr [ecx - 1]
00403FA6: C1 EA 03             shr edx, 3
00403FA9: 89 54 24 20          mov dword ptr [esp + 0x20], edx
00403FAD: 33 D2                xor edx, edx
00403FAF: 8A 51 01             mov dl, byte ptr [ecx + 1]
00403FB2: 8B CA                mov ecx, edx
00403FB4: C1 E8 03             shr eax, 3
00403FB7: C1 E9 03             shr ecx, 3
00403FBA: 83 F8 1F             cmp eax, 0x1f
00403FBD: 7E 05                jle 0x403fc4
00403FBF: B8 1F 00 00 00       mov eax, 0x1f
00403FC4: 8B 54 24 20          mov edx, dword ptr [esp + 0x20]
00403FC8: 83 FA 1F             cmp edx, 0x1f
00403FCB: 7E 05                jle 0x403fd2
00403FCD: BA 1F 00 00 00       mov edx, 0x1f
00403FD2: 83 F9 1F             cmp ecx, 0x1f
00403FD5: 7E 05                jle 0x403fdc
00403FD7: B9 1F 00 00 00       mov ecx, 0x1f
00403FDC: C1 E0 05             shl eax, 5
00403FDF: 03 C2                add eax, edx
00403FE1: 68 00 01 00 00       push 0x100
00403FE6: C1 E0 05             shl eax, 5
00403FE9: 03 C1                add eax, ecx
00403FEB: 8B 4C 24 14          mov ecx, dword ptr [esp + 0x14]
00403FEF: 51                   push ecx
00403FF0: 50                   push eax
00403FF1: E8 0A FA FF FF       call 0x403a00
00403FF6: 8B 4C 24 24          mov ecx, dword ptr [esp + 0x24]
00403FFA: 8B 54 24 20          mov edx, dword ptr [esp + 0x20]
00403FFE: 83 C4 0C             add esp, 0xc
00404001: 83 C2 04             add edx, 4
00404004: 88 44 0C 74          mov byte ptr [esp + ecx + 0x74], al
00404008: 41                   inc ecx
00404009: 81 F9 00 01 00 00    cmp ecx, 0x100
0040400F: 89 4C 24 18          mov dword ptr [esp + 0x18], ecx
00404013: 89 54 24 14          mov dword ptr [esp + 0x14], edx
00404017: 7C 80                jl 0x403f99
00404019: 8B 44 24 54          mov eax, dword ptr [esp + 0x54]
0040401D: 56                   push esi
0040401E: 85 C0                test eax, eax
00404020: 7E 79                jle 0x40409b
00404022: E8 17 DA 09 00       call 0x4a1a3e
00404027: 83 C4 04             add esp, 4
0040402A: 89 44 24 20          mov dword ptr [esp + 0x20], eax
0040402E: 85 DB                test ebx, ebx
00404030: 7E 63                jle 0x404095
00404032: 8B C6                mov eax, esi
00404034: 89 5C 24 18          mov dword ptr [esp + 0x18], ebx
00404038: F7 D8                neg eax
0040403A: 89 44 24 10          mov dword ptr [esp + 0x10], eax
0040403E: 8D 43 FF             lea eax, [ebx - 1]
00404041: 0F AF C6             imul eax, esi
00404044: 8B 1D 18 73 4A 00    mov ebx, dword ptr [0x4a7318]
0040404A: 03 C5                add eax, ebp
0040404C: 8B 6C 24 20          mov ebp, dword ptr [esp + 0x20]
00404050: 89 44 24 14          mov dword ptr [esp + 0x14], eax
00404054: 57                   push edi
00404055: 6A 01                push 1
00404057: 56                   push esi
00404058: 55                   push ebp
00404059: FF D3                call ebx
0040405B: 83 C4 10             add esp, 0x10
0040405E: 33 C0                xor eax, eax
00404060: 85 F6                test esi, esi
00404062: 7E 16                jle 0x40407a
00404064: 8B 4C 24 14          mov ecx, dword ptr [esp + 0x14]
00404068: 33 D2                xor edx, edx
0040406A: 8A 14 28             mov dl, byte ptr [eax + ebp]
0040406D: 40                   inc eax
0040406E: 41                   inc ecx
0040406F: 3B C6                cmp eax, esi
00404071: 8A 54 14 74          mov dl, byte ptr [esp + edx + 0x74]
00404075: 88 51 FF             mov byte ptr [ecx - 1], dl
00404078: 7C EE                jl 0x404068
0040407A: 8B 44 24 10          mov eax, dword ptr [esp + 0x10]
0040407E: 8B 4C 24 14          mov ecx, dword ptr [esp + 0x14]
00404082: 03 C8                add ecx, eax
00404084: 8B 44 24 18          mov eax, dword ptr [esp + 0x18]
00404088: 48                   dec eax
00404089: 89 4C 24 14          mov dword ptr [esp + 0x14], ecx
0040408D: 89 44 24 18          mov dword ptr [esp + 0x18], eax
00404091: 75 C1                jne 0x404054
00404093: EB 67                jmp 0x4040fc
00404095: 8B 6C 24 20          mov ebp, dword ptr [esp + 0x20]
00404099: EB 61                jmp 0x4040fc
0040409B: E8 9E D9 09 00       call 0x4a1a3e
004040A0: 83 C4 04             add esp, 4
004040A3: 89 44 24 18          mov dword ptr [esp + 0x18], eax
004040A7: 85 DB                test ebx, ebx
004040A9: 7E 4D                jle 0x4040f8
004040AB: 89 6C 24 14          mov dword ptr [esp + 0x14], ebp
004040AF: 89 5C 24 20          mov dword ptr [esp + 0x20], ebx
004040B3: 8B 1D 18 73 4A 00    mov ebx, dword ptr [0x4a7318]
004040B9: 8B E8                mov ebp, eax
004040BB: 57                   push edi
004040BC: 6A 01                push 1
004040BE: 56                   push esi
004040BF: 55                   push ebp
004040C0: FF D3                call ebx
004040C2: 83 C4 10             add esp, 0x10
004040C5: 33 C0                xor eax, eax
004040C7: 85 F6                test esi, esi
004040C9: 7E 16                jle 0x4040e1
004040CB: 8B 4C 24 14          mov ecx, dword ptr [esp + 0x14]
004040CF: 33 D2                xor edx, edx
004040D1: 8A 14 28             mov dl, byte ptr [eax + ebp]
004040D4: 40                   inc eax
004040D5: 41                   inc ecx
004040D6: 3B C6                cmp eax, esi
004040D8: 8A 54 14 74          mov dl, byte ptr [esp + edx + 0x74]
004040DC: 88 51 FF             mov byte ptr [ecx - 1], dl
004040DF: 7C EE                jl 0x4040cf
004040E1: 8B 4C 24 14          mov ecx, dword ptr [esp + 0x14]
004040E5: 8B 44 24 20          mov eax, dword ptr [esp + 0x20]
004040E9: 03 CE                add ecx, esi
004040EB: 48                   dec eax
004040EC: 89 4C 24 14          mov dword ptr [esp + 0x14], ecx
004040F0: 89 44 24 20          mov dword ptr [esp + 0x20], eax
004040F4: 75 C5                jne 0x4040bb
004040F6: EB 04                jmp 0x4040fc
004040F8: 8B 6C 24 18          mov ebp, dword ptr [esp + 0x18]
004040FC: 55                   push ebp
004040FD: E8 24 D9 09 00       call 0x4a1a26
00404102: 83 C4 04             add esp, 4
00404105: 57                   push edi
00404106: FF 15 1C 73 4A 00    call dword ptr [0x4a731c]
0040410C: 8B 74 24 28          mov esi, dword ptr [esp + 0x28]
00404110: 8B 6C 24 3C          mov ebp, dword ptr [esp + 0x3c]
00404114: 83 C4 04             add esp, 4
00404117: 8B 9D FC 35 00 00    mov ebx, dword ptr [ebp + 0x35fc]
0040411D: 8B 4C 24 2C          mov ecx, dword ptr [esp + 0x2c]
00404121: 6A 01                push 1
00404123: 03 F3                add esi, ebx
00404125: 6A 03                push 3
00404127: 56                   push esi
00404128: E8 D3 D3 00 00       call 0x411500
0040412D: 8B 45 10             mov eax, dword ptr [ebp + 0x10]
00404130: 8B 4D 14             mov ecx, dword ptr [ebp + 0x14]
00404133: 8D 75 08             lea esi, [ebp + 8]
00404136: 2B C8                sub ecx, eax
00404138: C1 F9 02             sar ecx, 2
0040413B: 83 F9 01             cmp ecx, 1
0040413E: 8B F8                mov edi, eax
00404140: 0F 83 A8 00 00 00    jae 0x4041ee
00404146: 8B 4E 04             mov ecx, dword ptr [esi + 4]
00404149: 85 C9                test ecx, ecx
0040414B: 74 0C                je 0x404159
0040414D: 2B C1                sub eax, ecx
0040414F: C1 F8 02             sar eax, 2
00404152: 83 F8 01             cmp eax, 1
00404155: 8B D8                mov ebx, eax
00404157: 77 05                ja 0x40415e
00404159: BB 01 00 00 00       mov ebx, 1
0040415E: 8B CE                mov ecx, esi
00404160: E8 1B 06 00 00       call 0x404780
00404165: 03 C3                add eax, ebx
00404167: 89 44 24 10          mov dword ptr [esp + 0x10], eax
0040416B: 79 02                jns 0x40416f
0040416D: 33 C0                xor eax, eax
0040416F: 8D 14 85 00 00 00 00 lea edx, [eax*4]
00404176: 52                   push edx
00404177: E8 C2 D8 09 00       call 0x4a1a3e
0040417C: 83 C4 04             add esp, 4
0040417F: 8B D8                mov ebx, eax
00404181: 8B 46 04             mov eax, dword ptr [esi + 4]
00404184: 8B CE                mov ecx, esi
00404186: 53                   push ebx
00404187: 57                   push edi
00404188: 50                   push eax
00404189: E8 D2 3D 01 00       call 0x417f60
0040418E: 8D 4C 24 2C          lea ecx, [esp + 0x2c]
00404192: 8B E8                mov ebp, eax
00404194: 51                   push ecx
00404195: 6A 01                push 1
00404197: 55                   push ebp
00404198: 8B CE                mov ecx, esi
0040419A: E8 01 06 00 00       call 0x4047a0
0040419F: 8B 56 08             mov edx, dword ptr [esi + 8]
004041A2: 83 C5 04             add ebp, 4
004041A5: 55                   push ebp
004041A6: 52                   push edx
004041A7: 57                   push edi
004041A8: 8B CE                mov ecx, esi
004041AA: E8 B1 3D 01 00       call 0x417f60
004041AF: 8B 46 08             mov eax, dword ptr [esi + 8]
004041B2: 8B 4E 04             mov ecx, dword ptr [esi + 4]
004041B5: 50                   push eax
004041B6: 51                   push ecx
004041B7: 8B CE                mov ecx, esi
004041B9: E8 D2 DE 03 00       call 0x442090
004041BE: 8B 46 04             mov eax, dword ptr [esi + 4]
004041C1: 50                   push eax
004041C2: E8 5F D8 09 00       call 0x4a1a26
004041C7: 8B 54 24 14          mov edx, dword ptr [esp + 0x14]
004041CB: 83 C4 04             add esp, 4
004041CE: 8B CE                mov ecx, esi
004041D0: 8D 04 93             lea eax, [ebx + edx*4]
004041D3: 89 46 0C             mov dword ptr [esi + 0xc], eax
004041D6: E8 A5 05 00 00       call 0x404780
004041DB: 8B 6C 24 38          mov ebp, dword ptr [esp + 0x38]
004041DF: 8D 4C 83 04          lea ecx, [ebx + eax*4 + 4]
004041E3: 89 4E 08             mov dword ptr [esi + 8], ecx
004041E6: 89 5E 04             mov dword ptr [esi + 4], ebx
004041E9: E9 90 00 00 00       jmp 0x40427e
004041EE: 8B C8                mov ecx, eax
004041F0: 2B CF                sub ecx, edi
004041F2: C1 F9 02             sar ecx, 2
004041F5: 83 F9 01             cmp ecx, 1
004041F8: 73 42                jae 0x40423c
004041FA: 8D 57 04             lea edx, [edi + 4]
004041FD: 8B CE                mov ecx, esi
004041FF: 52                   push edx
00404200: 50                   push eax
00404201: 57                   push edi
00404202: E8 59 3D 01 00       call 0x417f60
00404207: 8B 46 08             mov eax, dword ptr [esi + 8]
0040420A: 8D 4C 24 2C          lea ecx, [esp + 0x2c]
0040420E: 8B D0                mov edx, eax
00404210: 51                   push ecx
00404211: 2B D7                sub edx, edi
00404213: B9 01 00 00 00       mov ecx, 1
00404218: C1 FA 02             sar edx, 2
0040421B: 2B CA                sub ecx, edx
0040421D: 51                   push ecx
0040421E: 50                   push eax
0040421F: 8B CE                mov ecx, esi
00404221: E8 7A 05 00 00       call 0x4047a0
00404226: 8B 46 08             mov eax, dword ptr [esi + 8]
00404229: 3B F8                cmp edi, eax
0040422B: 74 4D                je 0x40427a
0040422D: 8B 54 24 2C          mov edx, dword ptr [esp + 0x2c]
00404231: 89 17                mov dword ptr [edi], edx
00404233: 83 C7 04             add edi, 4
00404236: 3B F8                cmp edi, eax
00404238: 75 F3                jne 0x40422d
0040423A: EB 3E                jmp 0x40427a
0040423C: 8D 48 FC             lea ecx, [eax - 4]
0040423F: 50                   push eax
00404240: 50                   push eax
00404241: 89 4C 24 18          mov dword ptr [esp + 0x18], ecx
00404245: 51                   push ecx
00404246: 8B CE                mov ecx, esi
00404248: E8 13 3D 01 00       call 0x417f60
0040424D: 8B 4E 08             mov ecx, dword ptr [esi + 8]
00404250: 8D 41 FC             lea eax, [ecx - 4]
00404253: 3B F8                cmp edi, eax
00404255: 74 0F                je 0x404266
00404257: 8B 50 FC             mov edx, dword ptr [eax - 4]
0040425A: 83 E8 04             sub eax, 4
0040425D: 83 E9 04             sub ecx, 4
00404260: 3B C7                cmp eax, edi
00404262: 89 11                mov dword ptr [ecx], edx
00404264: 75 F1                jne 0x404257
00404266: 8D 47 04             lea eax, [edi + 4]
00404269: 3B F8                cmp edi, eax
0040426B: 74 0D                je 0x40427a
0040426D: 8B 4C 24 2C          mov ecx, dword ptr [esp + 0x2c]
00404271: 89 0F                mov dword ptr [edi], ecx
00404273: 83 C7 04             add edi, 4
00404276: 3B F8                cmp edi, eax
00404278: 75 F3                jne 0x40426d
0040427A: 83 46 08 04          add dword ptr [esi + 8], 4
0040427E: 8D 4C 24 34          lea ecx, [esp + 0x34]
00404282: C6 84 24 7C 05 00 00 01 mov byte ptr [esp + 0x57c], 1
0040428A: E8 9D D7 09 00       call 0x4a1a2c
0040428F: 8D 4C 24 30          lea ecx, [esp + 0x30]
00404293: C7 84 24 7C 05 00 00 FF FF FF FF mov dword ptr [esp + 0x57c], 0xffffffff
0040429E: E8 89 D7 09 00       call 0x4a1a2c
004042A3: 8B 55 04             mov edx, dword ptr [ebp + 4]
004042A6: 8B 7C 24 28          mov edi, dword ptr [esp + 0x28]
004042AA: C1 E2 04             shl edx, 4
004042AD: 47                   inc edi
004042AE: 0F BE 82 A2 25 4B 00 movsx eax, byte ptr [edx + 0x4b25a2]
004042B5: 3B F8                cmp edi, eax
004042B7: 8B 44 24 1C          mov eax, dword ptr [esp + 0x1c]
004042BB: 89 7C 24 28          mov dword ptr [esp + 0x28], edi
004042BF: 0F 8C 57 FB FF FF    jl 0x403e1c
004042C5: 8B 4D 04             mov ecx, dword ptr [ebp + 4]
004042C8: 33 DB                xor ebx, ebx
004042CA: C1 E1 04             shl ecx, 4
004042CD: 89 5C 24 28          mov dword ptr [esp + 0x28], ebx
004042D1: 8A 91 A3 25 4B 00    mov dl, byte ptr [ecx + 0x4b25a3]
004042D7: 84 D2                test dl, dl
004042D9: 0F 8E 37 02 00 00    jle 0x404516
004042DF: EB 04                jmp 0x4042e5
004042E1: 8B 44 24 1C          mov eax, dword ptr [esp + 0x1c]
004042E5: 8B 30                mov esi, dword ptr [eax]
004042E7: 83 C0 04             add eax, 4
004042EA: 68 A0 00 00 00       push 0xa0
004042EF: 89 44 24 20          mov dword ptr [esp + 0x20], eax
004042F3: E8 46 D7 09 00       call 0x4a1a3e
004042F8: 83 C4 04             add esp, 4
004042FB: 89 44 24 10          mov dword ptr [esp + 0x10], eax
004042FF: 85 C0                test eax, eax
00404301: C7 84 24 7C 05 00 00 03 00 00 00 mov dword ptr [esp + 0x57c], 3
0040430C: 74 0B                je 0x404319
0040430E: 8B C8                mov ecx, eax
00404310: E8 0B CF 00 00       call 0x411220
00404315: 8B F8                mov edi, eax
00404317: EB 02                jmp 0x40431b
00404319: 33 FF                xor edi, edi
0040431B: 8B 95 FC 35 00 00    mov edx, dword ptr [ebp + 0x35fc]
00404321: 6A 01                push 1
00404323: 03 F2                add esi, edx
00404325: 6A 03                push 3
00404327: 56                   push esi
00404328: 8B CF                mov ecx, edi
0040432A: 89 7C 24 30          mov dword ptr [esp + 0x30], edi
0040432E: C7 84 24 88 05 00 00 FF FF FF FF mov dword ptr [esp + 0x588], 0xffffffff
00404339: E8 C2 D1 00 00       call 0x411500
0040433E: 85 DB                test ebx, ebx
00404340: 75 25                jne 0x404367
00404342: 8B 4F 34             mov ecx, dword ptr [edi + 0x34]
00404345: 8B 57 2C             mov edx, dword ptr [edi + 0x2c]
00404348: 8B 47 30             mov eax, dword ptr [edi + 0x30]
0040434B: 8B 77 28             mov esi, dword ptr [edi + 0x28]
0040434E: 2B CA                sub ecx, edx
00404350: 2B C6                sub eax, esi
00404352: 33 D2                xor edx, edx
00404354: BE E6 01 00 00       mov esi, 0x1e6
00404359: 89 57 28             mov dword ptr [edi + 0x28], edx
0040435C: 03 CE                add ecx, esi
0040435E: 89 77 2C             mov dword ptr [edi + 0x2c], esi
00404361: 89 47 30             mov dword ptr [edi + 0x30], eax
00404364: 89 4F 34             mov dword ptr [edi + 0x34], ecx
00404367: 8B 45 10             mov eax, dword ptr [ebp + 0x10]
0040436A: 8B 55 14             mov edx, dword ptr [ebp + 0x14]
0040436D: 2B D0                sub edx, eax
0040436F: 8B F0                mov esi, eax
00404371: C1 FA 02             sar edx, 2
00404374: 83 FA 01             cmp edx, 1
00404377: 0F 83 D2 00 00 00    jae 0x40444f
0040437D: 8B 55 0C             mov edx, dword ptr [ebp + 0xc]
00404380: 85 D2                test edx, edx
00404382: 74 0C                je 0x404390
00404384: 8B C8                mov ecx, eax
00404386: 2B CA                sub ecx, edx
00404388: C1 F9 02             sar ecx, 2
0040438B: 83 F9 01             cmp ecx, 1
0040438E: 77 05                ja 0x404395
00404390: B9 01 00 00 00       mov ecx, 1
00404395: 85 D2                test edx, edx
00404397: 75 04                jne 0x40439d
00404399: 33 C0                xor eax, eax
0040439B: EB 05                jmp 0x4043a2
0040439D: 2B C2                sub eax, edx
0040439F: C1 F8 02             sar eax, 2
004043A2: 8D 1C 08             lea ebx, [eax + ecx]
004043A5: 85 DB                test ebx, ebx
004043A7: 89 5C 24 10          mov dword ptr [esp + 0x10], ebx
004043AB: 8B C3                mov eax, ebx
004043AD: 7D 02                jge 0x4043b1
004043AF: 33 C0                xor eax, eax
004043B1: C1 E0 02             shl eax, 2
004043B4: 50                   push eax
004043B5: E8 84 D6 09 00       call 0x4a1a3e
004043BA: 8B 4D 0C             mov ecx, dword ptr [ebp + 0xc]
004043BD: 83 C4 04             add esp, 4
004043C0: 3B CE                cmp ecx, esi
004043C2: 8B F8                mov edi, eax
004043C4: 74 12                je 0x4043d8
004043C6: 85 C0                test eax, eax
004043C8: 74 04                je 0x4043ce
004043CA: 8B 11                mov edx, dword ptr [ecx]
004043CC: 89 10                mov dword ptr [eax], edx
004043CE: 83 C1 04             add ecx, 4
004043D1: 83 C0 04             add eax, 4
004043D4: 3B CE                cmp ecx, esi
004043D6: 75 EE                jne 0x4043c6
004043D8: 85 C0                test eax, eax
004043DA: 74 06                je 0x4043e2
004043DC: 8B 4C 24 24          mov ecx, dword ptr [esp + 0x24]
004043E0: 89 08                mov dword ptr [eax], ecx
004043E2: 8B 55 10             mov edx, dword ptr [ebp + 0x10]
004043E5: 8D 48 04             lea ecx, [eax + 4]
004043E8: 3B F2                cmp esi, edx
004043EA: 74 1E                je 0x40440a
004043EC: 8B D9                mov ebx, ecx
004043EE: 2B D8                sub ebx, eax
004043F0: 8D 74 33 FC          lea esi, [ebx + esi - 4]
004043F4: 85 C9                test ecx, ecx
004043F6: 74 04                je 0x4043fc
004043F8: 8B 06                mov eax, dword ptr [esi]
004043FA: 89 01                mov dword ptr [ecx], eax
004043FC: 83 C6 04             add esi, 4
004043FF: 83 C1 04             add ecx, 4
00404402: 3B F2                cmp esi, edx
00404404: 75 EE                jne 0x4043f4
00404406: 8B 5C 24 10          mov ebx, dword ptr [esp + 0x10]
0040440A: 8B 45 0C             mov eax, dword ptr [ebp + 0xc]
0040440D: 50                   push eax
0040440E: 89 44 24 14          mov dword ptr [esp + 0x14], eax
00404412: E8 0F D6 09 00       call 0x4a1a26
00404417: 8D 0C 9F             lea ecx, [edi + ebx*4]
0040441A: 83 C4 04             add esp, 4
0040441D: 89 4D 14             mov dword ptr [ebp + 0x14], ecx
00404420: 8B 4D 0C             mov ecx, dword ptr [ebp + 0xc]
00404423: 85 C9                test ecx, ecx
00404425: 75 11                jne 0x404438
00404427: 33 C0                xor eax, eax
00404429: 89 7D 0C             mov dword ptr [ebp + 0xc], edi
0040442C: 8D 54 87 04          lea edx, [edi + eax*4 + 4]
00404430: 89 55 10             mov dword ptr [ebp + 0x10], edx
00404433: E9 C0 00 00 00       jmp 0x4044f8
00404438: 8B 45 10             mov eax, dword ptr [ebp + 0x10]
0040443B: 89 7D 0C             mov dword ptr [ebp + 0xc], edi
0040443E: 2B C1                sub eax, ecx
00404440: C1 F8 02             sar eax, 2
00404443: 8D 54 87 04          lea edx, [edi + eax*4 + 4]
00404447: 89 55 10             mov dword ptr [ebp + 0x10], edx
0040444A: E9 A9 00 00 00       jmp 0x4044f8
0040444F: 8B C8                mov ecx, eax
00404451: 2B CE                sub ecx, esi
00404453: C1 F9 02             sar ecx, 2
00404456: 83 F9 01             cmp ecx, 1
00404459: 73 4F                jae 0x4044aa
0040445B: 3B F0                cmp esi, eax
0040445D: 8D 4E 04             lea ecx, [esi + 4]
00404460: 74 15                je 0x404477
00404462: 8D 51 FC             lea edx, [ecx - 4]
00404465: 85 C9                test ecx, ecx
00404467: 74 04                je 0x40446d
00404469: 8B 1A                mov ebx, dword ptr [edx]
0040446B: 89 19                mov dword ptr [ecx], ebx
0040446D: 83 C2 04             add edx, 4
00404470: 83 C1 04             add ecx, 4
00404473: 3B D0                cmp edx, eax
00404475: 75 EE                jne 0x404465
00404477: 8B 4D 10             mov ecx, dword ptr [ebp + 0x10]
0040447A: B8 01 00 00 00       mov eax, 1
0040447F: 8B D1                mov edx, ecx
00404481: 2B D6                sub edx, esi
00404483: C1 FA 02             sar edx, 2
00404486: 2B C2                sub eax, edx
00404488: 74 0C                je 0x404496
0040448A: 85 C9                test ecx, ecx
0040448C: 74 02                je 0x404490
0040448E: 89 39                mov dword ptr [ecx], edi
00404490: 83 C1 04             add ecx, 4
00404493: 48                   dec eax
00404494: 75 F4                jne 0x40448a
00404496: 8B 4D 10             mov ecx, dword ptr [ebp + 0x10]
00404499: 8B C6                mov eax, esi
0040449B: 3B F1                cmp esi, ecx
0040449D: 74 55                je 0x4044f4
0040449F: 89 38                mov dword ptr [eax], edi
004044A1: 83 C0 04             add eax, 4
004044A4: 3B C1                cmp eax, ecx
004044A6: 75 F7                jne 0x40449f
004044A8: EB 4A                jmp 0x4044f4
004044AA: 8D 48 FC             lea ecx, [eax - 4]
004044AD: 8B D0                mov edx, eax
004044AF: 3B C8                cmp ecx, eax
004044B1: 89 4C 24 10          mov dword ptr [esp + 0x10], ecx
004044B5: 74 12                je 0x4044c9
004044B7: 85 D2                test edx, edx
004044B9: 74 04                je 0x4044bf
004044BB: 8B 19                mov ebx, dword ptr [ecx]
004044BD: 89 1A                mov dword ptr [edx], ebx
004044BF: 83 C1 04             add ecx, 4
004044C2: 83 C2 04             add edx, 4
004044C5: 3B C8                cmp ecx, eax
004044C7: 75 EE                jne 0x4044b7
004044C9: 8B 4D 10             mov ecx, dword ptr [ebp + 0x10]
004044CC: 8D 41 FC             lea eax, [ecx - 4]
004044CF: 3B F0                cmp esi, eax
004044D1: 74 0F                je 0x4044e2
004044D3: 8B 50 FC             mov edx, dword ptr [eax - 4]
004044D6: 83 E8 04             sub eax, 4
004044D9: 83 E9 04             sub ecx, 4
004044DC: 3B C6                cmp eax, esi
004044DE: 89 11                mov dword ptr [ecx], edx
004044E0: 75 F1                jne 0x4044d3
004044E2: 8D 4E 04             lea ecx, [esi + 4]
004044E5: 8B C6                mov eax, esi
004044E7: 3B F1                cmp esi, ecx
004044E9: 74 09                je 0x4044f4
004044EB: 89 38                mov dword ptr [eax], edi
004044ED: 83 C0 04             add eax, 4
004044F0: 3B C1                cmp eax, ecx
004044F2: 75 F7                jne 0x4044eb
004044F4: 83 45 10 04          add dword ptr [ebp + 0x10], 4
004044F8: 8B 45 04             mov eax, dword ptr [ebp + 4]
004044FB: 8B 5C 24 28          mov ebx, dword ptr [esp + 0x28]
004044FF: C1 E0 04             shl eax, 4
00404502: 43                   inc ebx
00404503: 0F BE 88 A3 25 4B 00 movsx ecx, byte ptr [eax + 0x4b25a3]
0040450A: 3B D9                cmp ebx, ecx
0040450C: 89 5C 24 28          mov dword ptr [esp + 0x28], ebx
00404510: 0F 8C CB FD FF FF    jl 0x4042e1
00404516: 8B CD                mov ecx, ebp
00404518: E8 23 02 00 00       call 0x404740
0040451D: 8B 45 04             mov eax, dword ptr [ebp + 4]
00404520: C1 E0 04             shl eax, 4
00404523: 8A 88 A2 25 4B 00    mov cl, byte ptr [eax + 0x4b25a2]
00404529: 84 C9                test cl, cl
0040452B: 75 0E                jne 0x40453b
0040452D: 8A 88 A3 25 4B 00    mov cl, byte ptr [eax + 0x4b25a3]
00404533: 84 C9                test cl, cl
00404535: 0F 84 46 01 00 00    je 0x404681
0040453B: 8B 44 24 1C          mov eax, dword ptr [esp + 0x1c]
0040453F: 8B 95 FC 35 00 00    mov edx, dword ptr [ebp + 0x35fc]
00404545: 8B 30                mov esi, dword ptr [eax]
00404547: 83 C0 04             add eax, 4
0040454A: 03 F2                add esi, edx
0040454C: 89 44 24 1C          mov dword ptr [esp + 0x1c], eax
00404550: 66 8B 06             mov ax, word ptr [esi]
00404553: 83 C6 02             add esi, 2
00404556: 0F BF C8             movsx ecx, ax
00404559: 85 C9                test ecx, ecx
0040455B: 89 8D 68 27 00 00    mov dword ptr [ebp + 0x2768], ecx
00404561: 7E 5E                jle 0x4045c1
00404563: 8D 85 6E 27 00 00    lea eax, [ebp + 0x276e]
00404569: 66 8B 16             mov dx, word ptr [esi]
0040456C: 83 C6 02             add esi, 2
0040456F: 66 89 50 FE          mov word ptr [eax - 2], dx
00404573: 83 C0 0E             add eax, 0xe
00404576: 66 8B 16             mov dx, word ptr [esi]
00404579: 83 C6 02             add esi, 2
0040457C: 66 89 50 F2          mov word ptr [eax - 0xe], dx
00404580: 8A 16                mov dl, byte ptr [esi]
00404582: 83 C6 02             add esi, 2
00404585: 88 50 FA             mov byte ptr [eax - 6], dl
00404588: 8A 16                mov dl, byte ptr [esi]
0040458A: 83 C6 02             add esi, 2
0040458D: 88 50 FB             mov byte ptr [eax - 5], dl
00404590: 66 8B 16             mov dx, word ptr [esi]
00404593: 83 C6 02             add esi, 2
00404596: 66 89 50 F4          mov word ptr [eax - 0xc], dx
0040459A: 66 8B 16             mov dx, word ptr [esi]
0040459D: 83 C6 02             add esi, 2
004045A0: 66 89 50 F6          mov word ptr [eax - 0xa], dx
004045A4: 66 8B 16             mov dx, word ptr [esi]
004045A7: 83 C6 02             add esi, 2
004045AA: 66 89 50 F8          mov word ptr [eax - 8], dx
004045AE: 8A 16                mov dl, byte ptr [esi]
004045B0: 83 C6 02             add esi, 2
004045B3: 88 50 FC             mov byte ptr [eax - 4], dl
004045B6: 8A 16                mov dl, byte ptr [esi]
004045B8: 83 C6 02             add esi, 2
004045BB: 88 50 FD             mov byte ptr [eax - 3], dl
004045BE: 49                   dec ecx
004045BF: 75 A8                jne 0x404569
004045C1: 0F BF 06             movsx eax, word ptr [esi]
004045C4: 83 C6 02             add esi, 2
004045C7: 33 DB                xor ebx, ebx
004045C9: 85 C0                test eax, eax
004045CB: 89 44 24 10          mov dword ptr [esp + 0x10], eax
004045CF: 89 85 54 27 00 00    mov dword ptr [ebp + 0x2754], eax
004045D5: 0F 8E A6 00 00 00    jle 0x404681
004045DB: BF 2E 09 4F 00       mov edi, 0x4f092e
004045E0: 8D 47 04             lea eax, [edi + 4]
004045E3: B9 08 00 00 00       mov ecx, 8
004045E8: 66 8B 16             mov dx, word ptr [esi]
004045EB: 83 C6 02             add esi, 2
004045EE: 66 89 10             mov word ptr [eax], dx
004045F1: 83 C0 02             add eax, 2
004045F4: 49                   dec ecx
004045F5: 75 F1                jne 0x4045e8
004045F7: 33 C0                xor eax, eax
004045F9: 8A 0E                mov cl, byte ptr [esi]
004045FB: 83 C6 02             add esi, 2
004045FE: 88 4C 07 14          mov byte ptr [edi + eax + 0x14], cl
00404602: 40                   inc eax
00404603: 83 F8 08             cmp eax, 8
00404606: 7C F1                jl 0x4045f9
00404608: 66 8B 16             mov dx, word ptr [esi]
0040460B: 83 C6 02             add esi, 2
0040460E: 66 89 17             mov word ptr [edi], dx
00404611: 66 8B 06             mov ax, word ptr [esi]
00404614: 83 C6 02             add esi, 2
00404617: 66 89 47 02          mov word ptr [edi + 2], ax
0040461B: 8A 0E                mov cl, byte ptr [esi]
0040461D: 83 C6 02             add esi, 2
00404620: 88 4F 1F             mov byte ptr [edi + 0x1f], cl
00404623: 8B 45 04             mov eax, dword ptr [ebp + 4]
00404626: 83 F8 58             cmp eax, 0x58
00404629: 7C 05                jl 0x404630
0040462B: 83 F8 60             cmp eax, 0x60
0040462E: 7E 0E                jle 0x40463e
00404630: 3D 84 00 00 00       cmp eax, 0x84
00404635: 7C 3A                jl 0x404671
00404637: 3D 87 00 00 00       cmp eax, 0x87
0040463C: 7F 33                jg 0x404671
0040463E: 83 FB 23             cmp ebx, 0x23
00404641: 7D 2E                jge 0x404671
00404643: 83 FB 14             cmp ebx, 0x14
00404646: 7C 10                jl 0x404658
00404648: 68 80 02 00 00       push 0x280
0040464D: E8 7E 19 08 00       call 0x485fd0
00404652: 83 C4 04             add esp, 4
00404655: 66 89 07             mov word ptr [edi], ax
00404658: 68 E0 01 00 00       push 0x1e0
0040465D: E8 6E 19 08 00       call 0x485fd0
00404662: 66 89 47 02          mov word ptr [edi + 2], ax
00404666: 8A 47 1F             mov al, byte ptr [edi + 0x1f]
00404669: 83 C4 04             add esp, 4
0040466C: 0C 80                or al, 0x80
0040466E: 88 47 1F             mov byte ptr [edi + 0x1f], al
00404671: 8B 44 24 10          mov eax, dword ptr [esp + 0x10]
00404675: 83 C7 22             add edi, 0x22
00404678: 43                   inc ebx
00404679: 3B D8                cmp ebx, eax
0040467B: 0F 8C 5F FF FF FF    jl 0x4045e0
00404681: 8B 85 54 27 00 00    mov eax, dword ptr [ebp + 0x2754]
00404687: 33 FF                xor edi, edi
00404689: 85 C0                test eax, eax
0040468B: 7E 31                jle 0x4046be
0040468D: BE 4C 09 4F 00       mov esi, 0x4f094c
00404692: 33 D2                xor edx, edx
00404694: 8D 46 E6             lea eax, [esi - 0x1a]
00404697: 0F BF 08             movsx ecx, word ptr [eax]
0040469A: 83 F9 FF             cmp ecx, -1
0040469D: 74 05                je 0x4046a4
0040469F: 83 F9 FE             cmp ecx, -2
004046A2: 75 09                jne 0x4046ad
004046A4: 42                   inc edx
004046A5: 83 C0 02             add eax, 2
004046A8: 83 FA 08             cmp edx, 8
004046AB: 7C EA                jl 0x404697
004046AD: C6 06 00             mov byte ptr [esi], 0
004046B0: 8B 85 54 27 00 00    mov eax, dword ptr [ebp + 0x2754]
004046B6: 83 C6 22             add esi, 0x22
004046B9: 47                   inc edi
004046BA: 3B F8                cmp edi, eax
004046BC: 7C D4                jl 0x404692
004046BE: 8B 7C 24 1C          mov edi, dword ptr [esp + 0x1c]
004046C2: 8B 37                mov esi, dword ptr [edi]
004046C4: 83 C7 04             add edi, 4
004046C7: E8 54 85 05 00       call 0x45cc20
004046CC: 66 0F B6 15 5D 06 4F 00 movzx dx, byte ptr [0x4f065d]
004046D4: 66 8B 45 04          mov ax, word ptr [ebp + 4]
004046D8: 52                   push edx
004046D9: 50                   push eax
004046DA: 8B 85 FC 35 00 00    mov eax, dword ptr [ebp + 0x35fc]
004046E0: 03 F0                add esi, eax
004046E2: 56                   push esi
004046E3: E8 68 9B 05 00       call 0x45e250
004046E8: 8B 4D 04             mov ecx, dword ptr [ebp + 4]
004046EB: 83 C4 0C             add esp, 0xc
004046EE: C1 E1 04             shl ecx, 4
004046F1: 8A 81 A5 25 4B 00    mov al, byte ptr [ecx + 0x4b25a5]
004046F7: 84 C0                test al, al
004046F9: 74 0E                je 0x404709
004046FB: 66 0F BE D0          movsx dx, al
004046FF: 4A                   dec edx
00404700: 52                   push edx
00404701: E8 4A 80 07 00       call 0x47c750
00404706: 83 C4 04             add esp, 4
00404709: 8B 37                mov esi, dword ptr [edi]
0040470B: 8B 85 FC 35 00 00    mov eax, dword ptr [ebp + 0x35fc]
00404711: B9 C4 09 00 00       mov ecx, 0x9c4
00404716: 03 F0                add esi, eax
00404718: 8D 7D 43             lea edi, [ebp + 0x43]
0040471B: F3 A5                rep movsd dword ptr es:[edi], dword ptr [esi]
0040471D: 8B 8C 24 74 05 00 00 mov ecx, dword ptr [esp + 0x574]
00404724: 5F                   pop edi
00404725: 5E                   pop esi
00404726: 5D                   pop ebp
00404727: 5B                   pop ebx
00404728: 64 89 0D 00 00 00 00 mov dword ptr fs:[0], ecx
0040472F: 81 C4 70 05 00 00    add esp, 0x570
00404735: C3                   ret 
00404736: 90                   nop 
00404737: 90                   nop 
00404738: 90                   nop 
00404739: 90                   nop 
0040473A: 90                   nop 
0040473B: 90                   nop 
0040473C: 90                   nop 
0040473D: 90                   nop 
0040473E: 90                   nop 
0040473F: 90                   nop 
00404740: 56                   push esi
00404741: 57                   push edi
00404742: B8 42 09 4F 00       mov eax, 0x4f0942
00404747: B9 BC 00 00 00       mov ecx, 0xbc
0040474C: 33 D2                xor edx, edx
0040474E: 8D 78 F0             lea edi, [eax - 0x10]
00404751: 83 CE FF             or esi, 0xffffffff
00404754: 89 37                mov dword ptr [edi], esi
00404756: 89 77 04             mov dword ptr [edi + 4], esi
00404759: 89 77 08             mov dword ptr [edi + 8], esi
0040475C: 89 77 0C             mov dword ptr [edi + 0xc], esi
0040475F: 8B F8                mov edi, eax
00404761: 33 F6                xor esi, esi
00404763: 83 C0 22             add eax, 0x22
00404766: 89 37                mov dword ptr [edi], esi
00404768: 49                   dec ecx
00404769: 89 77 04             mov dword ptr [edi + 4], esi
0040476C: 66 89 50 C8          mov word ptr [eax - 0x38], dx
00404770: 88 50 E6             mov byte ptr [eax - 0x1a], dl
00404773: C6 40 E8 FF          mov byte ptr [eax - 0x18], 0xff
00404777: C6 40 E9 01          mov byte ptr [eax - 0x17], 1
0040477B: 75 D1                jne 0x40474e
0040477D: 5F                   pop edi
0040477E: 5E                   pop esi
0040477F: C3                   ret 
00404780: 8B 51 04             mov edx, dword ptr [ecx + 4]
00404783: 85 D2                test edx, edx
00404785: 75 03                jne 0x40478a
00404787: 33 C0                xor eax, eax
00404789: C3                   ret 
0040478A: 8B 41 08             mov eax, dword ptr [ecx + 8]
0040478D: 2B C2                sub eax, edx
0040478F: C1 F8 02             sar eax, 2
00404792: C3                   ret 
00404793: 90                   nop 
00404794: 90                   nop 
00404795: 90                   nop 
00404796: 90                   nop 
00404797: 90                   nop 
00404798: 90                   nop 
00404799: 90                   nop 
0040479A: 90                   nop 
0040479B: 90                   nop 
0040479C: 90                   nop 
0040479D: 90                   nop 
0040479E: 90                   nop 
0040479F: 90                   nop 
004047A0: 8B 44 24 08          mov eax, dword ptr [esp + 8]
004047A4: 85 C0                test eax, eax
004047A6: 76 1A                jbe 0x4047c2
004047A8: 8B 54 24 0C          mov edx, dword ptr [esp + 0xc]
004047AC: 8B C8                mov ecx, eax
004047AE: 8B 44 24 04          mov eax, dword ptr [esp + 4]
004047B2: 56                   push esi
004047B3: 85 C0                test eax, eax
004047B5: 74 04                je 0x4047bb
004047B7: 8B 32                mov esi, dword ptr [edx]
004047B9: 89 30                mov dword ptr [eax], esi
004047BB: 83 C0 04             add eax, 4
004047BE: 49                   dec ecx
004047BF: 75 F2                jne 0x4047b3
004047C1: 5E                   pop esi
004047C2: C2 0C 00             ret 0xc
004047C5: 90                   nop 
004047C6: 90                   nop 
004047C7: 90                   nop 
004047C8: 90                   nop 
004047C9: 90                   nop 
004047CA: 90                   nop 
004047CB: 90                   nop 
004047CC: 90                   nop 
004047CD: 90                   nop 
004047CE: 90                   nop 
004047CF: 90                   nop 
004047D0: 8B 44 24 04          mov eax, dword ptr [esp + 4]
004047D4: 85 C0                test eax, eax
004047D6: 74 08                je 0x4047e0
004047D8: 8B 4C 24 08          mov ecx, dword ptr [esp + 8]
004047DC: 8B 11                mov edx, dword ptr [ecx]
004047DE: 89 10                mov dword ptr [eax], edx
004047E0: C3                   ret 
004047E1: 90                   nop 
004047E2: 90                   nop 
004047E3: 90                   nop 
004047E4: 90                   nop 
004047E5: 90                   nop 
004047E6: 90                   nop 
004047E7: 90                   nop 
004047E8: 90                   nop 
004047E9: 90                   nop 
004047EA: 90                   nop 
004047EB: 90                   nop 
004047EC: 90                   nop 
004047ED: 90                   nop 
004047EE: 90                   nop 
004047EF: 90                   nop 
004047F0: 83 EC 10             sub esp, 0x10
004047F3: 53                   push ebx
004047F4: 8B 5C 24 1C          mov ebx, dword ptr [esp + 0x1c]
004047F8: 55                   push ebp
004047F9: 8B 6C 24 1C          mov ebp, dword ptr [esp + 0x1c]
004047FD: 8B C3                mov eax, ebx
004047FF: 2B C5                sub eax, ebp
00404801: 8B C8                mov ecx, eax
00404803: 83 E1 FC             and ecx, 0xfffffffc
00404806: 83 F9 40             cmp ecx, 0x40
00404809: 0F 8E 70 01 00 00    jle 0x40497f
0040480F: 56                   push esi
00404810: 57                   push edi
00404811: 8B 55 00             mov edx, dword ptr [ebp]
00404814: 8B 4B FC             mov ecx, dword ptr [ebx - 4]
00404817: C1 F8 02             sar eax, 2
0040481A: 89 54 24 24          mov dword ptr [esp + 0x24], edx
0040481E: 89 4C 24 28          mov dword ptr [esp + 0x28], ecx
00404822: 99                   cdq 
00404823: 2B C2                sub eax, edx
00404825: 8A 54 24 2C          mov dl, byte ptr [esp + 0x2c]
00404829: D1 F8                sar eax, 1
0040482B: 8D 4C 24 24          lea ecx, [esp + 0x24]
0040482F: 88 54 24 10          mov byte ptr [esp + 0x10], dl
00404833: 8B 44 85 00          mov eax, dword ptr [ebp + eax*4]
00404837: 89 44 24 14          mov dword ptr [esp + 0x14], eax
0040483B: 8D 44 24 14          lea eax, [esp + 0x14]
0040483F: 50                   push eax
00404840: 51                   push ecx
00404841: 8D 4C 24 18          lea ecx, [esp + 0x18]
00404845: E8 C6 E1 FF FF       call 0x402a10
0040484A: 84 C0                test al, al
0040484C: 74 34                je 0x404882
0040484E: 8D 54 24 28          lea edx, [esp + 0x28]
00404852: 8D 44 24 14          lea eax, [esp + 0x14]
00404856: 52                   push edx
00404857: 50                   push eax
00404858: 8D 4C 24 18          lea ecx, [esp + 0x18]
0040485C: E8 AF E1 FF FF       call 0x402a10
00404861: 84 C0                test al, al
00404863: 75 55                jne 0x4048ba
00404865: 8D 4C 24 28          lea ecx, [esp + 0x28]
00404869: 8D 54 24 24          lea edx, [esp + 0x24]
0040486D: 51                   push ecx
0040486E: 52                   push edx
0040486F: 8D 4C 24 18          lea ecx, [esp + 0x18]
00404873: E8 98 E1 FF FF       call 0x402a10
00404878: 84 C0                test al, al
0040487A: 74 1D                je 0x404899
0040487C: 8B 44 24 28          mov eax, dword ptr [esp + 0x28]
00404880: EB 3C                jmp 0x4048be
00404882: 8D 44 24 28          lea eax, [esp + 0x28]
00404886: 8D 4C 24 24          lea ecx, [esp + 0x24]
0040488A: 50                   push eax
0040488B: 51                   push ecx
0040488C: 8D 4C 24 18          lea ecx, [esp + 0x18]
00404890: E8 7B E1 FF FF       call 0x402a10
00404895: 84 C0                test al, al
00404897: 74 06                je 0x40489f
00404899: 8B 44 24 24          mov eax, dword ptr [esp + 0x24]
0040489D: EB 1F                jmp 0x4048be
0040489F: 8D 54 24 28          lea edx, [esp + 0x28]
004048A3: 8D 44 24 14          lea eax, [esp + 0x14]
004048A7: 52                   push edx
004048A8: 50                   push eax
004048A9: 8D 4C 24 18          lea ecx, [esp + 0x18]
004048AD: E8 5E E1 FF FF       call 0x402a10
004048B2: 84 C0                test al, al
004048B4: 8B 44 24 28          mov eax, dword ptr [esp + 0x28]
004048B8: 75 04                jne 0x4048be
004048BA: 8B 44 24 14          mov eax, dword ptr [esp + 0x14]
004048BE: 8A 4C 24 2C          mov cl, byte ptr [esp + 0x2c]
004048C2: 89 44 24 18          mov dword ptr [esp + 0x18], eax
004048C6: 88 4C 24 1C          mov byte ptr [esp + 0x1c], cl
004048CA: 8B FB                mov edi, ebx
004048CC: 8B F5                mov esi, ebp
004048CE: 8D 54 24 18          lea edx, [esp + 0x18]
004048D2: 8D 4C 24 1C          lea ecx, [esp + 0x1c]
004048D6: 52                   push edx
004048D7: 56                   push esi
004048D8: E8 33 E1 FF FF       call 0x402a10
004048DD: 84 C0                test al, al
004048DF: 74 16                je 0x4048f7
004048E1: 8D 44 24 18          lea eax, [esp + 0x18]
004048E5: 83 C6 04             add esi, 4
004048E8: 50                   push eax
004048E9: 56                   push esi
004048EA: 8D 4C 24 24          lea ecx, [esp + 0x24]
004048EE: E8 1D E1 FF FF       call 0x402a10
004048F3: 84 C0                test al, al
004048F5: 75 EA                jne 0x4048e1
004048F7: 83 EF 04             sub edi, 4
004048FA: 8D 4C 24 18          lea ecx, [esp + 0x18]
004048FE: 57                   push edi
004048FF: 51                   push ecx
00404900: 8D 4C 24 24          lea ecx, [esp + 0x24]
00404904: E8 07 E1 FF FF       call 0x402a10
00404909: 84 C0                test al, al
0040490B: 74 16                je 0x404923
0040490D: 83 EF 04             sub edi, 4
00404910: 8D 54 24 18          lea edx, [esp + 0x18]
00404914: 57                   push edi
00404915: 52                   push edx
00404916: 8D 4C 24 24          lea ecx, [esp + 0x24]
0040491A: E8 F1 E0 FF FF       call 0x402a10
0040491F: 84 C0                test al, al
00404921: 75 EA                jne 0x40490d
00404923: 3B FE                cmp edi, esi
00404925: 76 0D                jbe 0x404934
00404927: 8B 0F                mov ecx, dword ptr [edi]
00404929: 8B 06                mov eax, dword ptr [esi]
0040492B: 89 0E                mov dword ptr [esi], ecx
0040492D: 89 07                mov dword ptr [edi], eax
0040492F: 83 C6 04             add esi, 4
00404932: EB 9A                jmp 0x4048ce
00404934: 8B D3                mov edx, ebx
00404936: 8B C6                mov eax, esi
00404938: 2B D6                sub edx, esi
0040493A: 2B C5                sub eax, ebp
0040493C: 83 E2 FC             and edx, 0xfffffffc
0040493F: 24 FC                and al, 0xfc
00404941: 3B D0                cmp edx, eax
00404943: 6A 00                push 0
00404945: 7F 13                jg 0x40495a
00404947: 8B 4C 24 30          mov ecx, dword ptr [esp + 0x30]
0040494B: 51                   push ecx
0040494C: 53                   push ebx
0040494D: 56                   push esi
0040494E: E8 9D FE FF FF       call 0x4047f0
00404953: 83 C4 10             add esp, 0x10
00404956: 8B DE                mov ebx, esi
00404958: EB 11                jmp 0x40496b
0040495A: 8B 54 24 30          mov edx, dword ptr [esp + 0x30]
0040495E: 52                   push edx
0040495F: 56                   push esi
00404960: 55                   push ebp
00404961: E8 8A FE FF FF       call 0x4047f0
00404966: 83 C4 10             add esp, 0x10
00404969: 8B EE                mov ebp, esi
0040496B: 8B C3                mov eax, ebx
0040496D: 2B C5                sub eax, ebp
0040496F: 8B C8                mov ecx, eax
00404971: 83 E1 FC             and ecx, 0xfffffffc
00404974: 83 F9 40             cmp ecx, 0x40
00404977: 0F 8F 94 FE FF FF    jg 0x404811
0040497D: 5F                   pop edi
0040497E: 5E                   pop esi
0040497F: 5D                   pop ebp
00404980: 5B                   pop ebx
00404981: 83 C4 10             add esp, 0x10
00404984: C3                   ret 
00404985: 90                   nop 
00404986: 90                   nop 
00404987: 90                   nop 
00404988: 90                   nop 
00404989: 90                   nop 
0040498A: 90                   nop 
0040498B: 90                   nop 
0040498C: 90                   nop 
0040498D: 90                   nop 
0040498E: 90                   nop 
0040498F: 90                   nop 
00404990: 56                   push esi
00404991: 57                   push edi
00404992: 8B 7C 24 0C          mov edi, dword ptr [esp + 0xc]
00404996: 8D 44 24 10          lea eax, [esp + 0x10]
0040499A: 8D 4C 24 14          lea ecx, [esp + 0x14]
0040499E: 8D 77 FC             lea esi, [edi - 4]
004049A1: 56                   push esi
004049A2: 50                   push eax
004049A3: E8 68 E0 FF FF       call 0x402a10
004049A8: 84 C0                test al, al
004049AA: 74 25                je 0x4049d1
004049AC: 8B 0E                mov ecx, dword ptr [esi]
004049AE: 8D 54 24 10          lea edx, [esp + 0x10]
004049B2: 89 0F                mov dword ptr [edi], ecx
004049B4: 8B FE                mov edi, esi
004049B6: 83 EE 04             sub esi, 4
004049B9: 8D 4C 24 14          lea ecx, [esp + 0x14]
004049BD: 56                   push esi
004049BE: 52                   push edx
004049BF: E8 4C E0 FF FF       call 0x402a10
004049C4: 84 C0                test al, al
004049C6: 75 E4                jne 0x4049ac
004049C8: 8B 44 24 10          mov eax, dword ptr [esp + 0x10]
004049CC: 89 07                mov dword ptr [edi], eax
004049CE: 5F                   pop edi
004049CF: 5E                   pop esi
004049D0: C3                   ret 
004049D1: 8B 4C 24 10          mov ecx, dword ptr [esp + 0x10]
004049D5: 89 0F                mov dword ptr [edi], ecx
004049D7: 5F                   pop edi
004049D8: 5E                   pop esi
004049D9: C3                   ret 
004049DA: 90                   nop 
004049DB: 90                   nop 
004049DC: 90                   nop 
004049DD: 90                   nop 
004049DE: 90                   nop 
004049DF: 90                   nop 
004049E0: 83 EC 0C             sub esp, 0xc
004049E3: 53                   push ebx
004049E4: 55                   push ebp
004049E5: 8B 6C 24 18          mov ebp, dword ptr [esp + 0x18]
004049E9: 56                   push esi
004049EA: 8B 74 24 20          mov esi, dword ptr [esp + 0x20]
004049EE: 3B EE                cmp ebp, esi
004049F0: 0F 84 B0 00 00 00    je 0x404aa6
004049F6: 8D 5D 04             lea ebx, [ebp + 4]
004049F9: 3B DE                cmp ebx, esi
004049FB: 0F 84 A5 00 00 00    je 0x404aa6
00404A01: 8D 43 FC             lea eax, [ebx - 4]
00404A04: 57                   push edi
00404A05: 89 44 24 20          mov dword ptr [esp + 0x20], eax
00404A09: 8B 0B                mov ecx, dword ptr [ebx]
00404A0B: 8D 54 24 14          lea edx, [esp + 0x14]
00404A0F: 89 4C 24 14          mov dword ptr [esp + 0x14], ecx
00404A13: 55                   push ebp
00404A14: 52                   push edx
00404A15: 8D 4C 24 30          lea ecx, [esp + 0x30]
00404A19: E8 F2 DF FF FF       call 0x402a10
00404A1E: 84 C0                test al, al
00404A20: 75 53                jne 0x404a75
00404A22: 8A 44 24 28          mov al, byte ptr [esp + 0x28]
00404A26: 8B 74 24 20          mov esi, dword ptr [esp + 0x20]
00404A2A: 8B 4C 24 14          mov ecx, dword ptr [esp + 0x14]
00404A2E: 88 44 24 18          mov byte ptr [esp + 0x18], al
00404A32: 8B D6                mov edx, esi
00404A34: 8D 44 24 10          lea eax, [esp + 0x10]
00404A38: 89 4C 24 10          mov dword ptr [esp + 0x10], ecx
00404A3C: 52                   push edx
00404A3D: 50                   push eax
00404A3E: 8D 4C 24 20          lea ecx, [esp + 0x20]
00404A42: 8B FB                mov edi, ebx
00404A44: E8 C7 DF FF FF       call 0x402a10
00404A49: 84 C0                test al, al
00404A4B: 74 1C                je 0x404a69
00404A4D: 8B 0E                mov ecx, dword ptr [esi]
00404A4F: 8D 54 24 10          lea edx, [esp + 0x10]
00404A53: 89 0F                mov dword ptr [edi], ecx
00404A55: 8B FE                mov edi, esi
00404A57: 83 EE 04             sub esi, 4
00404A5A: 8D 4C 24 18          lea ecx, [esp + 0x18]
00404A5E: 56                   push esi
00404A5F: 52                   push edx
00404A60: E8 AB DF FF FF       call 0x402a10
00404A65: 84 C0                test al, al
00404A67: 75 E4                jne 0x404a4d
00404A69: 8B 44 24 10          mov eax, dword ptr [esp + 0x10]
00404A6D: 8B 74 24 24          mov esi, dword ptr [esp + 0x24]
00404A71: 89 07                mov dword ptr [edi], eax
00404A73: EB 1A                jmp 0x404a8f
00404A75: 3B EB                cmp ebp, ebx
00404A77: 8B C3                mov eax, ebx
00404A79: 74 0D                je 0x404a88
00404A7B: 8B 48 FC             mov ecx, dword ptr [eax - 4]
00404A7E: 83 E8 04             sub eax, 4
00404A81: 3B C5                cmp eax, ebp
00404A83: 89 48 04             mov dword ptr [eax + 4], ecx
00404A86: 75 F3                jne 0x404a7b
00404A88: 8B 54 24 14          mov edx, dword ptr [esp + 0x14]
00404A8C: 89 55 00             mov dword ptr [ebp], edx
00404A8F: 8B 4C 24 20          mov ecx, dword ptr [esp + 0x20]
00404A93: 83 C3 04             add ebx, 4
00404A96: 83 C1 04             add ecx, 4
00404A99: 3B DE                cmp ebx, esi
00404A9B: 89 4C 24 20          mov dword ptr [esp + 0x20], ecx
00404A9F: 0F 85 64 FF FF FF    jne 0x404a09
00404AA5: 5F                   pop edi
00404AA6: 5E                   pop esi
00404AA7: 5D                   pop ebp
00404AA8: 5B                   pop ebx
00404AA9: 83 C4 0C             add esp, 0xc
00404AAC: C3                   ret 
00404AAD: 90                   nop 
00404AAE: 90                   nop 
00404AAF: 90                   nop 
00404AB0: 56                   push esi
00404AB1: 8B 74 24 08          mov esi, dword ptr [esp + 8]
00404AB5: 57                   push edi
00404AB6: 8B 7C 24 10          mov edi, dword ptr [esp + 0x10]
00404ABA: 8D 44 24 14          lea eax, [esp + 0x14]
00404ABE: 8D 4C 24 18          lea ecx, [esp + 0x18]
00404AC2: 50                   push eax
00404AC3: 56                   push esi
00404AC4: E8 47 DF FF FF       call 0x402a10
00404AC9: 84 C0                test al, al
00404ACB: 74 16                je 0x404ae3
00404ACD: 8D 4C 24 14          lea ecx, [esp + 0x14]
00404AD1: 83 C6 04             add esi, 4
00404AD4: 51                   push ecx
00404AD5: 56                   push esi
00404AD6: 8D 4C 24 20          lea ecx, [esp + 0x20]
00404ADA: E8 31 DF FF FF       call 0x402a10
00404ADF: 84 C0                test al, al
00404AE1: 75 EA                jne 0x404acd
00404AE3: 83 EF 04             sub edi, 4
00404AE6: 8D 54 24 14          lea edx, [esp + 0x14]
00404AEA: 57                   push edi
00404AEB: 52                   push edx
00404AEC: 8D 4C 24 20          lea ecx, [esp + 0x20]
00404AF0: E8 1B DF FF FF       call 0x402a10
00404AF5: 84 C0                test al, al
00404AF7: 74 16                je 0x404b0f
00404AF9: 83 EF 04             sub edi, 4
00404AFC: 8D 44 24 14          lea eax, [esp + 0x14]
00404B00: 57                   push edi
00404B01: 50                   push eax
00404B02: 8D 4C 24 20          lea ecx, [esp + 0x20]
00404B06: E8 05 DF FF FF       call 0x402a10
00404B0B: 84 C0                test al, al
00404B0D: 75 EA                jne 0x404af9
00404B0F: 3B FE                cmp edi, esi
00404B11: 76 0D                jbe 0x404b20
00404B13: 8B 0F                mov ecx, dword ptr [edi]
00404B15: 8B 06                mov eax, dword ptr [esi]
00404B17: 89 0E                mov dword ptr [esi], ecx
00404B19: 89 07                mov dword ptr [edi], eax
00404B1B: 83 C6 04             add esi, 4
00404B1E: EB 9A                jmp 0x404aba
00404B20: 8B C6                mov eax, esi
00404B22: 5F                   pop edi
00404B23: 5E                   pop esi
00404B24: C3                   ret 
00404B25: 90                   nop 
00404B26: 90                   nop 
00404B27: 90                   nop 
00404B28: 90                   nop 
00404B29: 90                   nop 
00404B2A: 90                   nop 
00404B2B: 90                   nop 
00404B2C: 90                   nop 
00404B2D: 90                   nop 
00404B2E: 90                   nop 
00404B2F: 90                   nop 
00404B30: C3                   ret 
00404B31: 90                   nop 
00404B32: 90                   nop 
00404B33: 90                   nop 
00404B34: 90                   nop 
00404B35: 90                   nop 
00404B36: 90                   nop 
00404B37: 90                   nop 
00404B38: 90                   nop 
00404B39: 90                   nop 
00404B3A: 90                   nop 
00404B3B: 90                   nop 
00404B3C: 90                   nop 
00404B3D: 90                   nop 
00404B3E: 90                   nop 
00404B3F: 90                   nop 
00404B40: 6A FF                push -1
00404B42: 68 FC 25 4A 00       push 0x4a25fc
00404B47: 64 A1 00 00 00 00    mov eax, dword ptr fs:[0]
00404B4D: 50                   push eax
00404B4E: 64 89 25 00 00 00 00 mov dword ptr fs:[0], esp
00404B55: 51                   push ecx
00404B56: 56                   push esi
00404B57: 8B F1                mov esi, ecx
00404B59: 89 74 24 04          mov dword ptr [esp + 4], esi
00404B5D: 8D 4E 04             lea ecx, [esi + 4]
00404B60: E8 6B C1 09 00       call 0x4a0cd0
00404B65: 8D 4E 44             lea ecx, [esi + 0x44]
00404B68: E8 63 C1 09 00       call 0x4a0cd0
00404B6D: 8D 8E 84 00 00 00    lea ecx, [esi + 0x84]
00404B73: E8 88 BE 09 00       call 0x4a0a00
00404B78: 8D 8E 90 00 00 00    lea ecx, [esi + 0x90]
00404B7E: C7 44 24 10 00 00 00 00 mov dword ptr [esp + 0x10], 0
00404B86: E8 75 BE 09 00       call 0x4a0a00
00404B8B: 8D 8E 9C 00 00 00    lea ecx, [esi + 0x9c]
00404B91: C6 44 24 10 01       mov byte ptr [esp + 0x10], 1
00404B96: E8 65 BE 09 00       call 0x4a0a00
00404B9B: 8B 4C 24 08          mov ecx, dword ptr [esp + 8]
00404B9F: C7 06 F0 73 4A 00    mov dword ptr [esi], 0x4a73f0
00404BA5: 8B C6                mov eax, esi
00404BA7: 5E                   pop esi
00404BA8: 64 89 0D 00 00 00 00 mov dword ptr fs:[0], ecx
00404BAF: 83 C4 10             add esp, 0x10
00404BB2: C3                   ret 
00404BB3: 90                   nop 
00404BB4: 90                   nop 
00404BB5: 90                   nop 
00404BB6: 90                   nop 
00404BB7: 90                   nop 
00404BB8: 90                   nop 
00404BB9: 90                   nop 
00404BBA: 90                   nop 
00404BBB: 90                   nop 
00404BBC: 90                   nop 
00404BBD: 90                   nop 
00404BBE: 90                   nop 
00404BBF: 90                   nop 
00404BC0: 56                   push esi
00404BC1: 8B F1                mov esi, ecx
00404BC3: E8 18 00 00 00       call 0x404be0
00404BC8: F6 44 24 08 01       test byte ptr [esp + 8], 1
00404BCD: 74 09                je 0x404bd8
00404BCF: 56                   push esi
00404BD0: E8 51 CE 09 00       call 0x4a1a26
00404BD5: 83 C4 04             add esp, 4
00404BD8: 8B C6                mov eax, esi
00404BDA: 5E                   pop esi
00404BDB: C2 04 00             ret 4
00404BDE: 90                   nop 
00404BDF: 90                   nop 
00404BE0: C7 01 F0 73 4A 00    mov dword ptr [ecx], 0x4a73f0
00404BE6: C3                   ret 
00404BE7: 90                   nop 
00404BE8: 90                   nop 
00404BE9: 90                   nop 
00404BEA: 90                   nop 
00404BEB: 90                   nop 
00404BEC: 90                   nop 
00404BED: 90                   nop 
00404BEE: 90                   nop 
00404BEF: 90                   nop 
00404BF0: 6A FF                push -1
00404BF2: 68 30 26 4A 00       push 0x4a2630
00404BF7: 64 A1 00 00 00 00    mov eax, dword ptr fs:[0]
00404BFD: 50                   push eax
00404BFE: 64 89 25 00 00 00 00 mov dword ptr fs:[0], esp
00404C05: 83 EC 0C             sub esp, 0xc
00404C08: 56                   push esi
00404C09: 8B F1                mov esi, ecx
00404C0B: 8D 44 24 20          lea eax, [esp + 0x20]
00404C0F: 8D 4C 24 04          lea ecx, [esp + 4]
00404C13: 50                   push eax
00404C14: 51                   push ecx
00404C15: 8D 4C 24 34          lea ecx, [esp + 0x34]
00404C19: C7 44 24 20 02 00 00 00 mov dword ptr [esp + 0x20], 2
00404C21: E8 7A BE 09 00       call 0x4a0aa0
00404C26: 8D 4C 24 04          lea ecx, [esp + 4]
00404C2A: C6 44 24 18 03       mov byte ptr [esp + 0x18], 3
00404C2F: E8 7C BF 09 00       call 0x4a0bb0
00404C34: D9 9E A8 00 00 00    fstp dword ptr [esi + 0xa8]
00404C3A: 8D 54 24 20          lea edx, [esp + 0x20]
00404C3E: 8D 8E 84 00 00 00    lea ecx, [esi + 0x84]
00404C44: 52                   push edx
00404C45: E8 E6 BD 09 00       call 0x4a0a30
00404C4A: 8D 44 24 2C          lea eax, [esp + 0x2c]
00404C4E: 8D 8E 90 00 00 00    lea ecx, [esi + 0x90]
00404C54: 50                   push eax
00404C55: E8 D6 BD 09 00       call 0x4a0a30
00404C5A: 8D 4C 24 38          lea ecx, [esp + 0x38]
00404C5E: 51                   push ecx
00404C5F: 8D 8E 9C 00 00 00    lea ecx, [esi + 0x9c]
00404C65: E8 C6 BD 09 00       call 0x4a0a30
00404C6A: 8D 54 24 38          lea edx, [esp + 0x38]
00404C6E: 8D 44 24 2C          lea eax, [esp + 0x2c]
00404C72: 52                   push edx
00404C73: 8D 4C 24 24          lea ecx, [esp + 0x24]
00404C77: 50                   push eax
00404C78: 51                   push ecx
00404C79: 8D 4E 04             lea ecx, [esi + 4]
00404C7C: E8 AF C1 09 00       call 0x4a0e30
00404C81: 8B 4C 24 10          mov ecx, dword ptr [esp + 0x10]
00404C85: 5E                   pop esi
00404C86: 64 89 0D 00 00 00 00 mov dword ptr fs:[0], ecx
00404C8D: 83 C4 18             add esp, 0x18
00404C90: C2 24 00             ret 0x24
00404C93: 90                   nop 
00404C94: 90                   nop 
00404C95: 90                   nop 
00404C96: 90                   nop 
00404C97: 90                   nop 
00404C98: 90                   nop 
00404C99: 90                   nop 
00404C9A: 90                   nop 
00404C9B: 90                   nop 
00404C9C: 90                   nop 
00404C9D: 90                   nop 
00404C9E: 90                   nop 
00404C9F: 90                   nop 
00404CA0: 8B 44 24 10          mov eax, dword ptr [esp + 0x10]
00404CA4: 8B 54 24 08          mov edx, dword ptr [esp + 8]
00404CA8: 56                   push esi
00404CA9: 8B F1                mov esi, ecx
00404CAB: 8B 4C 24 10          mov ecx, dword ptr [esp + 0x10]
00404CAF: 50                   push eax
00404CB0: 8B 44 24 0C          mov eax, dword ptr [esp + 0xc]
00404CB4: 51                   push ecx
00404CB5: 52                   push edx
00404CB6: 50                   push eax
00404CB7: 8D 4E 44             lea ecx, [esi + 0x44]
00404CBA: E8 21 C3 09 00       call 0x4a0fe0
00404CBF: 8B 4C 24 14          mov ecx, dword ptr [esp + 0x14]
00404CC3: 8B 54 24 10          mov edx, dword ptr [esp + 0x10]
00404CC7: 8B 44 24 08          mov eax, dword ptr [esp + 8]
00404CCB: 89 8E B0 00 00 00    mov dword ptr [esi + 0xb0], ecx
00404CD1: 89 96 AC 00 00 00    mov dword ptr [esi + 0xac], edx
00404CD7: 89 86 B4 00 00 00    mov dword ptr [esi + 0xb4], eax
00404CDD: 5E                   pop esi
00404CDE: C2 10 00             ret 0x10
00404CE1: 90                   nop 
00404CE2: 90                   nop 
00404CE3: 90                   nop 
00404CE4: 90                   nop 
00404CE5: 90                   nop 
00404CE6: 90                   nop 
00404CE7: 90                   nop 
00404CE8: 90                   nop 
00404CE9: 90                   nop 
00404CEA: 90                   nop 
00404CEB: 90                   nop 
00404CEC: 90                   nop 
00404CED: 90                   nop 
00404CEE: 90                   nop 
00404CEF: 90                   nop 
00404CF0: 6A FF                push -1
00404CF2: 68 48 26 4A 00       push 0x4a2648
00404CF7: 64 A1 00 00 00 00    mov eax, dword ptr fs:[0]
00404CFD: 50                   push eax
00404CFE: 64 89 25 00 00 00 00 mov dword ptr fs:[0], esp
00404D05: 51                   push ecx
00404D06: 33 C0                xor eax, eax
00404D08: 56                   push esi
00404D09: 89 44 24 04          mov dword ptr [esp + 4], eax
00404D0D: 89 44 24 10          mov dword ptr [esp + 0x10], eax
00404D11: 8D 41 04             lea eax, [ecx + 4]
00404D14: 50                   push eax
00404D15: 8B 81 B0 00 00 00    mov eax, dword ptr [ecx + 0xb0]
00404D1B: 8D 51 44             lea edx, [ecx + 0x44]
00404D1E: 8B 89 AC 00 00 00    mov ecx, dword ptr [ecx + 0xac]
00404D24: 52                   push edx
00404D25: 50                   push eax
00404D26: 51                   push ecx
00404D27: 68 00 00 F0 43       push 0x43f00000
00404D2C: 68 00 00 20 44       push 0x44200000
00404D31: 8D 54 24 34          lea edx, [esp + 0x34]
00404D35: 83 EC 0C             sub esp, 0xc
00404D38: 8B CC                mov ecx, esp
00404D3A: 89 64 24 28          mov dword ptr [esp + 0x28], esp
00404D3E: 52                   push edx
00404D3F: E8 EC BC 09 00       call 0x4a0a30
00404D44: 8B 74 24 3C          mov esi, dword ptr [esp + 0x3c]
00404D48: 56                   push esi
00404D49: E8 92 C7 09 00       call 0x4a14e0
00404D4E: 8B 4C 24 30          mov ecx, dword ptr [esp + 0x30]
00404D52: 83 C4 28             add esp, 0x28
00404D55: 8B C6                mov eax, esi
00404D57: 64 89 0D 00 00 00 00 mov dword ptr fs:[0], ecx
00404D5E: 5E                   pop esi
00404D5F: 83 C4 10             add esp, 0x10
00404D62: C2 10 00             ret 0x10
00404D65: 90                   nop 
00404D66: 90                   nop 
00404D67: 90                   nop 
00404D68: 90                   nop 
00404D69: 90                   nop 
00404D6A: 90                   nop 
00404D6B: 90                   nop 
00404D6C: 90                   nop 
00404D6D: 90                   nop 
00404D6E: 90                   nop 
00404D6F: 90                   nop 
00404D70: 6A FF                push -1
00404D72: 68 68 26 4A 00       push 0x4a2668
00404D77: 64 A1 00 00 00 00    mov eax, dword ptr fs:[0]
00404D7D: 50                   push eax
00404D7E: 64 89 25 00 00 00 00 mov dword ptr fs:[0], esp
00404D85: 51                   push ecx
00404D86: 33 C0                xor eax, eax
00404D88: 56                   push esi
00404D89: 89 44 24 04          mov dword ptr [esp + 4], eax
00404D8D: 89 44 24 10          mov dword ptr [esp + 0x10], eax
00404D91: 8D 41 04             lea eax, [ecx + 4]
00404D94: 50                   push eax
00404D95: 8B 81 B0 00 00 00    mov eax, dword ptr [ecx + 0xb0]
00404D9B: 8D 51 44             lea edx, [ecx + 0x44]
00404D9E: 8B 89 AC 00 00 00    mov ecx, dword ptr [ecx + 0xac]
00404DA4: 52                   push edx
00404DA5: 50                   push eax
00404DA6: 51                   push ecx
00404DA7: 68 00 00 F0 43       push 0x43f00000
00404DAC: 68 00 00 20 44       push 0x44200000
00404DB1: 8D 54 24 34          lea edx, [esp + 0x34]
00404DB5: 83 EC 0C             sub esp, 0xc
00404DB8: 8B CC                mov ecx, esp
00404DBA: 89 64 24 28          mov dword ptr [esp + 0x28], esp
00404DBE: 52                   push edx
00404DBF: E8 6C BC 09 00       call 0x4a0a30
00404DC4: 8B 74 24 3C          mov esi, dword ptr [esp + 0x3c]
00404DC8: 56                   push esi
00404DC9: E8 12 C8 09 00       call 0x4a15e0
00404DCE: 8B 4C 24 30          mov ecx, dword ptr [esp + 0x30]
00404DD2: 83 C4 28             add esp, 0x28
00404DD5: 8B C6                mov eax, esi
00404DD7: 64 89 0D 00 00 00 00 mov dword ptr fs:[0], ecx
00404DDE: 5E                   pop esi
00404DDF: 83 C4 10             add esp, 0x10
00404DE2: C2 10 00             ret 0x10
00404DE5: 90                   nop 
00404DE6: 90                   nop 
00404DE7: 90                   nop 
00404DE8: 90                   nop 
00404DE9: 90                   nop 
00404DEA: 90                   nop 
00404DEB: 90                   nop 
00404DEC: 90                   nop 
00404DED: 90                   nop 
00404DEE: 90                   nop 
00404DEF: 90                   nop 
00404DF0: 6A FF                push -1
00404DF2: 68 C0 26 4A 00       push 0x4a26c0
00404DF7: 64 A1 00 00 00 00    mov eax, dword ptr fs:[0]
00404DFD: 50                   push eax
00404DFE: 64 89 25 00 00 00 00 mov dword ptr fs:[0], esp
00404E05: 83 EC 3C             sub esp, 0x3c
00404E08: 56                   push esi
00404E09: 8B F1                mov esi, ecx
00404E0B: 6A 00                push 0
00404E0D: 6A 00                push 0
00404E0F: 68 00 00 80 3F       push 0x3f800000
00404E14: 8D 4C 24 28          lea ecx, [esp + 0x28]
00404E18: C7 44 24 54 01 00 00 00 mov dword ptr [esp + 0x54], 1
00404E20: E8 EB BB 09 00       call 0x4a0a10
00404E25: 8D 4C 24 28          lea ecx, [esp + 0x28]
00404E29: C6 44 24 48 02       mov byte ptr [esp + 0x48], 2
00404E2E: E8 CD BB 09 00       call 0x4a0a00
00404E33: 8D 44 24 50          lea eax, [esp + 0x50]
00404E37: 8D 4C 24 10          lea ecx, [esp + 0x10]
00404E3B: 50                   push eax
00404E3C: 51                   push ecx
00404E3D: 8D 4C 24 64          lea ecx, [esp + 0x64]
00404E41: C6 44 24 50 03       mov byte ptr [esp + 0x50], 3
00404E46: E8 55 BC 09 00       call 0x4a0aa0
00404E4B: 8D 4C 24 10          lea ecx, [esp + 0x10]
00404E4F: C6 44 24 48 04       mov byte ptr [esp + 0x48], 4
00404E54: E8 87 BD 09 00       call 0x4a0be0
00404E59: D9 44 24 20          fld dword ptr [esp + 0x20]
00404E5D: D8 4C 24 10          fmul dword ptr [esp + 0x10]
00404E61: D9 44 24 1C          fld dword ptr [esp + 0x1c]
00404E65: D8 4C 24 14          fmul dword ptr [esp + 0x14]
00404E69: 51                   push ecx
00404E6A: DE E9                fsubp st(1)
00404E6C: D9 1C 24             fstp dword ptr [esp]
00404E6F: D9 44 24 1C          fld dword ptr [esp + 0x1c]
00404E73: D8 4C 24 20          fmul dword ptr [esp + 0x20]
00404E77: D9 44 24 28          fld dword ptr [esp + 0x28]
00404E7B: D8 4C 24 14          fmul dword ptr [esp + 0x14]
00404E7F: 51                   push ecx
00404E80: DE E9                fsubp st(1)
00404E82: D9 1C 24             fstp dword ptr [esp]
00404E85: D9 44 24 2C          fld dword ptr [esp + 0x2c]
00404E89: D8 4C 24 1C          fmul dword ptr [esp + 0x1c]
00404E8D: D9 44 24 20          fld dword ptr [esp + 0x20]
00404E91: D8 4C 24 28          fmul dword ptr [esp + 0x28]
00404E95: 51                   push ecx
00404E96: 8D 4C 24 40          lea ecx, [esp + 0x40]
00404E9A: DE E9                fsubp st(1)
00404E9C: D9 1C 24             fstp dword ptr [esp]
00404E9F: E8 6C BB 09 00       call 0x4a0a10
00404EA4: 50                   push eax
00404EA5: 8D 4C 24 2C          lea ecx, [esp + 0x2c]
00404EA9: C6 44 24 4C 05       mov byte ptr [esp + 0x4c], 5
00404EAE: E8 7D BB 09 00       call 0x4a0a30
00404EB3: 83 EC 0C             sub esp, 0xc
00404EB6: C6 44 24 54 04       mov byte ptr [esp + 0x54], 4
00404EBB: 8B CC                mov ecx, esp
00404EBD: 89 64 24 10          mov dword ptr [esp + 0x10], esp
00404EC1: 68 00 00 80 BF       push 0xbf800000
00404EC6: 6A 00                push 0
00404EC8: 6A 00                push 0
00404ECA: E8 41 BB 09 00       call 0x4a0a10
00404ECF: 83 EC 0C             sub esp, 0xc
00404ED2: 8D 54 24 74          lea edx, [esp + 0x74]
00404ED6: 8B CC                mov ecx, esp
00404ED8: 89 64 24 20          mov dword ptr [esp + 0x20], esp
00404EDC: 52                   push edx
00404EDD: C6 44 24 64 06       mov byte ptr [esp + 0x64], 6
00404EE2: E8 49 BB 09 00       call 0x4a0a30
00404EE7: 83 EC 0C             sub esp, 0xc
00404EEA: 8D 44 24 74          lea eax, [esp + 0x74]
00404EEE: 8B CC                mov ecx, esp
00404EF0: 89 64 24 30          mov dword ptr [esp + 0x30], esp
00404EF4: 50                   push eax
00404EF5: C6 44 24 70 07       mov byte ptr [esp + 0x70], 7
00404EFA: E8 31 BB 09 00       call 0x4a0a30
00404EFF: 8B CE                mov ecx, esi
00404F01: C6 44 24 6C 04       mov byte ptr [esp + 0x6c], 4
00404F06: E8 E5 FC FF FF       call 0x404bf0
00404F0B: 8B 4C 24 40          mov ecx, dword ptr [esp + 0x40]
00404F0F: 5E                   pop esi
00404F10: 64 89 0D 00 00 00 00 mov dword ptr fs:[0], ecx
00404F17: 83 C4 48             add esp, 0x48
00404F1A: C2 18 00             ret 0x18
00404F1D: 90                   nop 
00404F1E: 90                   nop 
00404F1F: 90                   nop 
00404F20: 83 EC 1C             sub esp, 0x1c
00404F23: 56                   push esi
00404F24: 8B F1                mov esi, ecx
00404F26: 57                   push edi
00404F27: D9 86 84 00 00 00    fld dword ptr [esi + 0x84]
00404F2D: D8 0D F8 73 4A 00    fmul dword ptr [0x4a73f8]
00404F33: E8 64 CF 09 00       call 0x4a1e9c
00404F38: D9 86 8C 00 00 00    fld dword ptr [esi + 0x8c]
00404F3E: 0F BF C0             movsx eax, ax
00404F41: D8 0D F8 73 4A 00    fmul dword ptr [0x4a73f8]
00404F47: 89 44 24 08          mov dword ptr [esp + 8], eax
00404F4B: E8 4C CF 09 00       call 0x4a1e9c
00404F50: D9 86 88 00 00 00    fld dword ptr [esi + 0x88]
00404F56: 0F BF C8             movsx ecx, ax
00404F59: D8 0D F8 73 4A 00    fmul dword ptr [0x4a73f8]
00404F5F: 89 4C 24 0C          mov dword ptr [esp + 0xc], ecx
00404F63: E8 34 CF 09 00       call 0x4a1e9c
00404F68: D9 86 90 00 00 00    fld dword ptr [esi + 0x90]
00404F6E: 0F BF D0             movsx edx, ax
00404F71: D8 0D F8 73 4A 00    fmul dword ptr [0x4a73f8]
00404F77: 89 54 24 10          mov dword ptr [esp + 0x10], edx
00404F7B: E8 1C CF 09 00       call 0x4a1e9c
00404F80: D9 86 98 00 00 00    fld dword ptr [esi + 0x98]
00404F86: 0F BF C0             movsx eax, ax
00404F89: D8 0D F8 73 4A 00    fmul dword ptr [0x4a73f8]
00404F8F: 89 44 24 14          mov dword ptr [esp + 0x14], eax
00404F93: E8 04 CF 09 00       call 0x4a1e9c
00404F98: D9 86 94 00 00 00    fld dword ptr [esi + 0x94]
00404F9E: 0F BF C8             movsx ecx, ax
00404FA1: D8 0D F8 73 4A 00    fmul dword ptr [0x4a73f8]
00404FA7: 89 4C 24 18          mov dword ptr [esp + 0x18], ecx
00404FAB: E8 EC CE 09 00       call 0x4a1e9c
00404FB0: 0F BF D0             movsx edx, ax
00404FB3: 8B 44 24 28          mov eax, dword ptr [esp + 0x28]
00404FB7: B9 07 00 00 00       mov ecx, 7
00404FBC: 8D 74 24 08          lea esi, [esp + 8]
00404FC0: 8B F8                mov edi, eax
00404FC2: 89 54 24 1C          mov dword ptr [esp + 0x1c], edx
00404FC6: F3 A5                rep movsd dword ptr es:[edi], dword ptr [esi]
00404FC8: 5F                   pop edi
00404FC9: 5E                   pop esi
00404FCA: 83 C4 1C             add esp, 0x1c
00404FCD: C2 04 00             ret 4
00404FD0: 6A FF                push -1
00404FD2: 68 F8 26 4A 00       push 0x4a26f8
00404FD7: 64 A1 00 00 00 00    mov eax, dword ptr fs:[0]
00404FDD: 50                   push eax
00404FDE: 64 89 25 00 00 00 00 mov dword ptr fs:[0], esp
00404FE5: 83 EC 28             sub esp, 0x28
00404FE8: 53                   push ebx
00404FE9: 56                   push esi
00404FEA: 8B F1                mov esi, ecx
00404FEC: 8D 4C 24 18          lea ecx, [esp + 0x18]
00404FF0: E8 0B BA 09 00       call 0x4a0a00
00404FF5: 8D 4C 24 0C          lea ecx, [esp + 0xc]
00404FF9: C7 44 24 38 00 00 00 00 mov dword ptr [esp + 0x38], 0
00405001: E8 FA B9 09 00       call 0x4a0a00
00405006: 8B 44 24 48          mov eax, dword ptr [esp + 0x48]
0040500A: 8B 4C 24 44          mov ecx, dword ptr [esp + 0x44]
0040500E: 8B 54 24 40          mov edx, dword ptr [esp + 0x40]
00405012: 50                   push eax
00405013: 51                   push ecx
00405014: 8D 44 24 2C          lea eax, [esp + 0x2c]
00405018: B3 01                mov bl, 1
0040501A: 52                   push edx
0040501B: 50                   push eax
0040501C: 88 5C 24 48          mov byte ptr [esp + 0x48], bl
00405020: E8 4B 52 01 00       call 0x41a270
00405025: 83 C4 10             add esp, 0x10
00405028: 50                   push eax
00405029: 8D 4C 24 1C          lea ecx, [esp + 0x1c]
0040502D: C6 44 24 3C 02       mov byte ptr [esp + 0x3c], 2
00405032: E8 F9 B9 09 00       call 0x4a0a30
00405037: 8B 4C 24 54          mov ecx, dword ptr [esp + 0x54]
0040503B: 8B 54 24 50          mov edx, dword ptr [esp + 0x50]
0040503F: 8B 44 24 4C          mov eax, dword ptr [esp + 0x4c]
00405043: 51                   push ecx
00405044: 52                   push edx
00405045: 8D 4C 24 48          lea ecx, [esp + 0x48]
00405049: 50                   push eax
0040504A: 51                   push ecx
0040504B: 88 5C 24 48          mov byte ptr [esp + 0x48], bl
0040504F: E8 1C 52 01 00       call 0x41a270
00405054: 83 C4 10             add esp, 0x10
00405057: 50                   push eax
00405058: 8D 4C 24 10          lea ecx, [esp + 0x10]
0040505C: C6 44 24 3C 03       mov byte ptr [esp + 0x3c], 3
00405061: E8 CA B9 09 00       call 0x4a0a30
00405066: 83 EC 0C             sub esp, 0xc
00405069: 8D 54 24 18          lea edx, [esp + 0x18]
0040506D: 8B CC                mov ecx, esp
0040506F: 89 64 24 4C          mov dword ptr [esp + 0x4c], esp
00405073: 52                   push edx
00405074: 88 5C 24 48          mov byte ptr [esp + 0x48], bl
00405078: E8 B3 B9 09 00       call 0x4a0a30
0040507D: 83 EC 0C             sub esp, 0xc
00405080: 8D 44 24 30          lea eax, [esp + 0x30]
00405084: 8B CC                mov ecx, esp
00405086: 89 64 24 20          mov dword ptr [esp + 0x20], esp
0040508A: 50                   push eax
0040508B: C6 44 24 54 04       mov byte ptr [esp + 0x54], 4
00405090: E8 9B B9 09 00       call 0x4a0a30
00405095: 8B CE                mov ecx, esi
00405097: 88 5C 24 50          mov byte ptr [esp + 0x50], bl
0040509B: E8 50 FD FF FF       call 0x404df0
004050A0: 8B 4C 24 30          mov ecx, dword ptr [esp + 0x30]
004050A4: 5E                   pop esi
004050A5: 64 89 0D 00 00 00 00 mov dword ptr fs:[0], ecx
004050AC: 5B                   pop ebx
004050AD: 83 C4 34             add esp, 0x34
004050B0: C2 1C 00             ret 0x1c
004050B3: 90                   nop 
004050B4: 90                   nop 
004050B5: 90                   nop 
004050B6: 90                   nop 
004050B7: 90                   nop 
004050B8: 90                   nop 
004050B9: 90                   nop 
004050BA: 90                   nop 
004050BB: 90                   nop 
004050BC: 90                   nop 
004050BD: 90                   nop 
004050BE: 90                   nop 
004050BF: 90                   nop 
004050C0: DB 44 24 04          fild dword ptr [esp + 4]
004050C4: 68 00 00 20 41       push 0x41200000
004050C9: 68 CD CC CC 3D       push 0x3dcccccd
004050CE: 68 00 00 40 3F       push 0x3f400000
004050D3: 51                   push ecx
004050D4: D8 3D C4 73 4A 00    fdivr dword ptr [0x4a73c4]
004050DA: D9 E8                fld1 
004050DC: D9 F3                fpatan 
004050DE: DC C0                fadd st(0), st(0)
004050E0: D9 1C 24             fstp dword ptr [esp]
004050E3: E8 B8 FB FF FF       call 0x404ca0
004050E8: C2 04 00             ret 4
004050EB: 90                   nop 
004050EC: 90                   nop 
004050ED: 90                   nop 
004050EE: 90                   nop 
004050EF: 90                   nop 
004050F0: 83 EC 08             sub esp, 8
004050F3: 55                   push ebp
004050F4: 8B E9                mov ebp, ecx
004050F6: C7 44 24 08 00 00 00 00 mov dword ptr [esp + 8], 0
004050FE: 0F BF 45 46          movsx eax, word ptr [ebp + 0x46]
00405102: 83 F8 06             cmp eax, 6
00405105: 0F 87 D8 01 00 00    ja 0x4052e3
0040510B: FF 24 85 E8 52 40 00 jmp dword ptr [eax*4 + 0x4052e8]
00405112: 6A 25                push 0x25
00405114: 8B CD                mov ecx, ebp
00405116: E8 55 95 02 00       call 0x42e670
0040511B: 85 C0                test eax, eax
0040511D: 74 09                je 0x405128
0040511F: C6 45 36 00          mov byte ptr [ebp + 0x36], 0
00405123: 5D                   pop ebp
00405124: 83 C4 08             add esp, 8
00405127: C3                   ret 
00405128: 56                   push esi
00405129: 57                   push edi
0040512A: 6A 1E                push 0x1e
0040512C: E8 0D C9 09 00       call 0x4a1a3e
00405131: 8B F8                mov edi, eax
00405133: B9 07 00 00 00       mov ecx, 7
00405138: 83 C8 FF             or eax, 0xffffffff
0040513B: 89 3D C4 93 4C 00    mov dword ptr [0x4c93c4], edi
00405141: F3 AB                rep stosd dword ptr es:[edi], eax
00405143: 83 C4 04             add esp, 4
00405146: 8B CD                mov ecx, ebp
00405148: 66 AB                stosw word ptr es:[edi], ax
0040514A: 68 FF 00 00 00       push 0xff
0040514F: 6A 03                push 3
00405151: E8 FA 94 02 00       call 0x42e650
00405156: E8 B5 01 00 00       call 0x405310
0040515B: 8B 35 C4 93 4C 00    mov esi, dword ptr [0x4c93c4]
00405161: B9 07 00 00 00       mov ecx, 7
00405166: BF A4 93 4C 00       mov edi, 0x4c93a4
0040516B: 6A 00                push 0
0040516D: F3 A5                rep movsd dword ptr es:[edi], dword ptr [esi]
0040516F: 8B CD                mov ecx, ebp
00405171: 66 A5                movsw word ptr es:[edi], word ptr [esi]
00405173: E8 68 AB 02 00       call 0x42fce0
00405178: E8 73 02 00 00       call 0x4053f0
0040517D: E8 FE 03 00 00       call 0x405580
00405182: 5F                   pop edi
00405183: 66 C7 45 46 02 00    mov word ptr [ebp + 0x46], 2
00405189: 5E                   pop esi
0040518A: 5D                   pop ebp
0040518B: 83 C4 08             add esp, 8
0040518E: C3                   ret 
0040518F: A1 C4 93 4C 00       mov eax, dword ptr [0x4c93c4]
00405194: 50                   push eax
00405195: E8 8C C8 09 00       call 0x4a1a26
0040519A: 83 C4 04             add esp, 4
0040519D: C6 45 36 00          mov byte ptr [ebp + 0x36], 0
004051A1: 5D                   pop ebp
004051A2: 83 C4 08             add esp, 8
004051A5: C3                   ret 
004051A6: 6A 02                push 2
004051A8: 8B CD                mov ecx, ebp
004051AA: E8 31 AB 02 00       call 0x42fce0
004051AF: 6A 01                push 1
004051B1: 8B CD                mov ecx, ebp
004051B3: E8 28 AB 02 00       call 0x42fce0
004051B8: 6A 03                push 3
004051BA: 8B CD                mov ecx, ebp
004051BC: E8 6F 94 02 00       call 0x42e630
004051C1: 3C FF                cmp al, 0xff
004051C3: 88 44 24 04          mov byte ptr [esp + 4], al
004051C7: 0F 84 10 01 00 00    je 0x4052dd
004051CD: 6A 01                push 1
004051CF: E8 4C 06 00 00       call 0x405820
004051D4: 8B 4C 24 08          mov ecx, dword ptr [esp + 8]
004051D8: 51                   push ecx
004051D9: E8 52 08 00 00       call 0x405a30
004051DE: 83 C4 08             add esp, 8
004051E1: 8B CD                mov ecx, ebp
004051E3: 85 C0                test eax, eax
004051E5: 68 D8 04 00 00       push 0x4d8
004051EA: 6A 00                push 0
004051EC: 68 FE 00 00 00       push 0xfe
004051F1: 74 1B                je 0x40520e
004051F3: E8 38 94 02 00       call 0x42e630
004051F8: 50                   push eax
004051F9: 6A 03                push 3
004051FB: E8 70 79 00 00       call 0x40cb70
00405200: 83 C4 10             add esp, 0x10
00405203: 8B CD                mov ecx, ebp
00405205: 6A 28                push 0x28
00405207: E8 94 94 02 00       call 0x42e6a0
0040520C: EB 19                jmp 0x405227
0040520E: E8 1D 94 02 00       call 0x42e630
00405213: 50                   push eax
00405214: 6A 02                push 2
00405216: E8 55 79 00 00       call 0x40cb70
0040521B: 83 C4 10             add esp, 0x10
0040521E: 8B CD                mov ecx, ebp
00405220: 6A 28                push 0x28
00405222: E8 A9 94 02 00       call 0x42e6d0
00405227: 66 C7 45 46 02 00    mov word ptr [ebp + 0x46], 2
0040522D: 66 C7 45 48 04 00    mov word ptr [ebp + 0x48], 4
00405233: C6 45 39 01          mov byte ptr [ebp + 0x39], 1
00405237: 5D                   pop ebp
00405238: 83 C4 08             add esp, 8
0040523B: C3                   ret 
0040523C: 8D 54 24 08          lea edx, [esp + 8]
00405240: 68 D8 04 00 00       push 0x4d8
00405245: 52                   push edx
00405246: 6A 02                push 2
00405248: 68 FD 00 00 00       push 0xfd
0040524D: 6A 04                push 4
0040524F: E8 BC 7A 00 00       call 0x40cd10
00405254: 83 C4 14             add esp, 0x14
00405257: 66 C7 45 46 02 00    mov word ptr [ebp + 0x46], 2
0040525D: 66 C7 45 48 05 00    mov word ptr [ebp + 0x48], 5
00405263: C6 45 39 02          mov byte ptr [ebp + 0x39], 2
00405267: 5D                   pop ebp
00405268: 83 C4 08             add esp, 8
0040526B: C3                   ret 
0040526C: 6A 03                push 3
0040526E: 8B CD                mov ecx, ebp
00405270: E8 6B AA 02 00       call 0x42fce0
00405275: 6A 25                push 0x25
00405277: 8B CD                mov ecx, ebp
00405279: E8 22 94 02 00       call 0x42e6a0
0040527E: 6A 26                push 0x26
00405280: 8B CD                mov ecx, ebp
00405282: E8 19 94 02 00       call 0x42e6a0
00405287: 6A 27                push 0x27
00405289: 8B CD                mov ecx, ebp
0040528B: E8 10 94 02 00       call 0x42e6a0
00405290: 8A 0D C3 93 4C 00    mov cl, byte ptr [0x4c93c3]
00405296: A0 90 3F 4F 00       mov al, byte ptr [0x4f3f90]
0040529B: 84 C9                test cl, cl
0040529D: 88 44 24 04          mov byte ptr [esp + 4], al
004052A1: 74 08                je 0x4052ab
004052A3: FE C0                inc al
004052A5: 0C 80                or al, 0x80
004052A7: 88 44 24 04          mov byte ptr [esp + 4], al
004052AB: 8B 44 24 04          mov eax, dword ptr [esp + 4]
004052AF: 8B CD                mov ecx, ebp
004052B1: 50                   push eax
004052B2: 6A 02                push 2
004052B4: E8 97 93 02 00       call 0x42e650
004052B9: 8A 0D 0C 89 4E 00    mov cl, byte ptr [0x4e890c]
004052BF: 51                   push ecx
004052C0: 6A 04                push 4
004052C2: 8B CD                mov ecx, ebp
004052C4: E8 87 93 02 00       call 0x42e650
004052C9: 66 C7 45 46 01 00    mov word ptr [ebp + 0x46], 1
004052CF: 5D                   pop ebp
004052D0: 83 C4 08             add esp, 8
004052D3: C3                   ret 
004052D4: 6A 03                push 3
004052D6: 8B CD                mov ecx, ebp
004052D8: E8 03 AA 02 00       call 0x42fce0
004052DD: 66 C7 45 46 01 00    mov word ptr [ebp + 0x46], 1
004052E3: 5D                   pop ebp
004052E4: 83 C4 08             add esp, 8
004052E7: C3                   ret 
004052E8: 12 51 40             adc dl, byte ptr [ecx + 0x40]
004052EB: 00 8F 51 40 00 E3    add byte ptr [edi - 0x1cffbfaf], cl
004052F1: 52                   push edx
004052F2: 40                   inc eax
004052F3: 00 A6 51 40 00 3C    add byte ptr [esi + 0x3c004051], ah
004052F9: 52                   push edx
004052FA: 40                   inc eax
004052FB: 00 6C 52 40          add byte ptr [edx + edx*2 + 0x40], ch
004052FF: 00 D4                add ah, dl
00405301: 52                   push edx
00405302: 40                   inc eax
00405303: 00 90 90 90 90 90    add byte ptr [eax - 0x6f6f6f70], dl
00405309: 90                   nop 
0040530A: 90                   nop 
0040530B: 90                   nop 
0040530C: 90                   nop 
0040530D: 90                   nop 
0040530E: 90                   nop 
0040530F: 90                   nop 
00405310: 83 EC 0C             sub esp, 0xc
00405313: 0F BF 05 90 3F 4F 00 movsx eax, word ptr [0x4f3f90]
0040531A: 53                   push ebx
0040531B: 55                   push ebp
0040531C: 33 ED                xor ebp, ebp
0040531E: 56                   push esi
0040531F: 57                   push edi
00405320: 89 44 24 18          mov dword ptr [esp + 0x18], eax
00405324: 89 6C 24 14          mov dword ptr [esp + 0x14], ebp
00405328: 99                   cdq 
00405329: B9 1E 00 00 00       mov ecx, 0x1e
0040532E: F7 F9                idiv ecx
00405330: A1 C4 93 4C 00       mov eax, dword ptr [0x4c93c4]
00405335: 03 E8                add ebp, eax
00405337: 33 FF                xor edi, edi
00405339: 8D 14 52             lea edx, [edx + edx*2]
0040533C: 8D 34 55 D4 3E 4B 00 lea esi, [edx*2 + 0x4b3ed4]
00405343: 8A 1E                mov bl, byte ptr [esi]
00405345: 46                   inc esi
00405346: 80 FB FF             cmp bl, 0xff
00405349: 88 5C 24 10          mov byte ptr [esp + 0x10], bl
0040534D: 74 1B                je 0x40536a
0040534F: 8B 4C 24 10          mov ecx, dword ptr [esp + 0x10]
00405353: 51                   push ecx
00405354: E8 C7 0B 00 00       call 0x405f20
00405359: 83 C4 04             add esp, 4
0040535C: 85 C0                test eax, eax
0040535E: 74 04                je 0x405364
00405360: 88 5D 00             mov byte ptr [ebp], bl
00405363: 45                   inc ebp
00405364: 47                   inc edi
00405365: 83 FF 06             cmp edi, 6
00405368: 7C D9                jl 0x405343
0040536A: 8B 6C 24 14          mov ebp, dword ptr [esp + 0x14]
0040536E: 8B 44 24 18          mov eax, dword ptr [esp + 0x18]
00405372: 83 C5 06             add ebp, 6
00405375: 40                   inc eax
00405376: 83 FD 1E             cmp ebp, 0x1e
00405379: 89 6C 24 14          mov dword ptr [esp + 0x14], ebp
0040537D: 89 44 24 18          mov dword ptr [esp + 0x18], eax
00405381: 7C A5                jl 0x405328
00405383: E8 78 0B 00 00       call 0x405f00
00405388: BA 58 02 00 00       mov edx, 0x258
0040538D: 3B D0                cmp edx, eax
0040538F: 1B C0                sbb eax, eax
00405391: F7 D8                neg eax
00405393: 8D 2C 40             lea ebp, [eax + eax*2]
00405396: D1 E5                shl ebp, 1
00405398: A1 C4 93 4C 00       mov eax, dword ptr [0x4c93c4]
0040539D: 33 FF                xor edi, edi
0040539F: 8D 34 28             lea esi, [eax + ebp]
004053A2: 8A 06                mov al, byte ptr [esi]
004053A4: 3C FF                cmp al, 0xff
004053A6: 88 44 24 10          mov byte ptr [esp + 0x10], al
004053AA: 74 2B                je 0x4053d7
004053AC: 8B 5C 24 10          mov ebx, dword ptr [esp + 0x10]
004053B0: 53                   push ebx
004053B1: E8 0A 0B 00 00       call 0x405ec0
004053B6: 83 C4 04             add esp, 4
004053B9: 85 C0                test eax, eax
004053BB: 74 03                je 0x4053c0
004053BD: 80 0E 80             or byte ptr [esi], 0x80
004053C0: 53                   push ebx
004053C1: E8 6A 06 00 00       call 0x405a30
004053C6: 83 C4 04             add esp, 4
004053C9: 85 C0                test eax, eax
004053CB: 74 03                je 0x4053d0
004053CD: 80 0E 40             or byte ptr [esi], 0x40
004053D0: 47                   inc edi
004053D1: 46                   inc esi
004053D2: 83 FF 06             cmp edi, 6
004053D5: 7C CB                jl 0x4053a2
004053D7: 83 C5 06             add ebp, 6
004053DA: 83 FD 0C             cmp ebp, 0xc
004053DD: 7C B9                jl 0x405398
004053DF: 5F                   pop edi
004053E0: 5E                   pop esi
004053E1: 5D                   pop ebp
004053E2: 5B                   pop ebx
004053E3: 83 C4 0C             add esp, 0xc
004053E6: C3                   ret 
004053E7: 90                   nop 
004053E8: 90                   nop 
004053E9: 90                   nop 
004053EA: 90                   nop 
004053EB: 90                   nop 
004053EC: 90                   nop 
004053ED: 90                   nop 
004053EE: 90                   nop 
004053EF: 90                   nop 
004053F0: 83 EC 24             sub esp, 0x24
004053F3: 8B 0D B0 10 4E 00    mov ecx, dword ptr [0x4e10b0]
004053F9: 56                   push esi
004053FA: 8D 44 24 18          lea eax, [esp + 0x18]
004053FE: 57                   push edi
004053FF: 50                   push eax
00405400: 68 FE 00 00 00       push 0xfe
00405405: E8 26 92 02 00       call 0x42e630
0040540A: 8B 0D B0 10 4E 00    mov ecx, dword ptr [0x4e10b0]
00405410: 50                   push eax
00405411: E8 7A A5 02 00       call 0x42f990
00405416: B9 36 00 00 00       mov ecx, 0x36
0040541B: BA 9E FF FF FF       mov edx, 0xffffff9e
00405420: 89 4C 24 14          mov dword ptr [esp + 0x14], ecx
00405424: 89 54 24 10          mov dword ptr [esp + 0x10], edx
00405428: 68 00 55 40 00       push 0x405500
0040542D: 8D 4C 24 20          lea ecx, [esp + 0x20]
00405431: 6A 00                push 0
00405433: 8D 54 24 14          lea edx, [esp + 0x14]
00405437: 51                   push ecx
00405438: 8B 0D B0 10 4E 00    mov ecx, dword ptr [0x4e10b0]
0040543E: 52                   push edx
0040543F: B8 CA FF FF FF       mov eax, 0xffffffca
00405444: BE B2 FF FF FF       mov esi, 0xffffffb2
00405449: 68 E1 00 00 00       push 0xe1
0040544E: 6A 01                push 1
00405450: 89 44 24 24          mov dword ptr [esp + 0x24], eax
00405454: 89 74 24 30          mov dword ptr [esp + 0x30], esi
00405458: E8 63 A6 02 00       call 0x42fac0
0040545D: 8B 0D B0 10 4E 00    mov ecx, dword ptr [0x4e10b0]
00405463: 6A 00                push 0
00405465: 6A 00                push 0
00405467: 6A 02                push 2
00405469: 6A 08                push 8
0040546B: 6A 01                push 1
0040546D: E8 9E A7 02 00       call 0x42fc10
00405472: 68 D8 04 00 00       push 0x4d8
00405477: 6A 01                push 1
00405479: 68 FF 00 00 00       push 0xff
0040547E: 6A 01                push 1
00405480: E8 EB 76 00 00       call 0x40cb70
00405485: A1 B0 10 4E 00       mov eax, dword ptr [0x4e10b0]
0040548A: 83 C4 10             add esp, 0x10
0040548D: BE 05 00 00 00       mov esi, 5
00405492: C6 80 68 07 00 00 0D mov byte ptr [eax + 0x768], 0xd
00405499: 8B 0D B0 10 4E 00    mov ecx, dword ptr [0x4e10b0]
0040549F: 81 C1 98 07 00 00    add ecx, 0x798
004054A5: C6 01 01             mov byte ptr [ecx], 1
004054A8: 41                   inc ecx
004054A9: C6 01 01             mov byte ptr [ecx], 1
004054AC: 66 8B 15 90 3F 4F 00 mov dx, word ptr [0x4f3f90]
004054B3: 41                   inc ecx
004054B4: 66 89 54 24 08       mov word ptr [esp + 8], dx
004054B9: 0F BF 44 24 08       movsx eax, word ptr [esp + 8]
004054BE: 99                   cdq 
004054BF: BF 1E 00 00 00       mov edi, 0x1e
004054C4: 6A 00                push 0
004054C6: F7 FF                idiv edi
004054C8: 6A 02                push 2
004054CA: 42                   inc edx
004054CB: 52                   push edx
004054CC: 51                   push ecx
004054CD: 8B 0D B0 10 4E 00    mov ecx, dword ptr [0x4e10b0]
004054D3: E8 58 BA 02 00       call 0x430f30
004054D8: 8B 54 24 08          mov edx, dword ptr [esp + 8]
004054DC: 8B C8                mov ecx, eax
004054DE: C6 01 C0             mov byte ptr [ecx], 0xc0
004054E1: 41                   inc ecx
004054E2: C6 01 CF             mov byte ptr [ecx], 0xcf
004054E5: 41                   inc ecx
004054E6: 42                   inc edx
004054E7: 4E                   dec esi
004054E8: 89 54 24 08          mov dword ptr [esp + 8], edx
004054EC: 75 CB                jne 0x4054b9
004054EE: 6A 01                push 1
004054F0: 51                   push ecx
004054F1: E8 BA 80 00 00       call 0x40d5b0
004054F6: 83 C4 08             add esp, 8
004054F9: 5F                   pop edi
004054FA: 5E                   pop esi
004054FB: 83 C4 24             add esp, 0x24
004054FE: C3                   ret 
004054FF: 90                   nop 
00405500: 6A FF                push -1
00405502: 68 18 27 4A 00       push 0x4a2718
00405507: 64 A1 00 00 00 00    mov eax, dword ptr fs:[0]
0040550D: 50                   push eax
0040550E: 64 89 25 00 00 00 00 mov dword ptr fs:[0], esp
00405515: 51                   push ecx
00405516: 8B 0D C4 28 4F 00    mov ecx, dword ptr [0x4f28c4]
0040551C: A1 C0 28 4F 00       mov eax, dword ptr [0x4f28c0]
00405521: 56                   push esi
00405522: 57                   push edi
00405523: 8D 79 03             lea edi, [ecx + 3]
00405526: 8D 4C 24 08          lea ecx, [esp + 8]
0040552A: 8D 70 06             lea esi, [eax + 6]
0040552D: E8 06 C5 09 00       call 0x4a1a38
00405532: 8D 54 24 08          lea edx, [esp + 8]
00405536: 68 80 40 4B 00       push 0x4b4080
0040553B: 52                   push edx
0040553C: C7 44 24 1C 00 00 00 00 mov dword ptr [esp + 0x1c], 0
00405544: E8 E9 C4 09 00       call 0x4a1a32
00405549: 8B 44 24 10          mov eax, dword ptr [esp + 0x10]
0040554D: 6A 01                push 1
0040554F: 50                   push eax
00405550: 57                   push edi
00405551: 56                   push esi
00405552: 6A 00                push 0
00405554: E8 87 36 02 00       call 0x428be0
00405559: 83 C4 1C             add esp, 0x1c
0040555C: 8D 4C 24 08          lea ecx, [esp + 8]
00405560: C7 44 24 14 FF FF FF FF mov dword ptr [esp + 0x14], 0xffffffff
00405568: E8 BF C4 09 00       call 0x4a1a2c
0040556D: 8B 4C 24 0C          mov ecx, dword ptr [esp + 0xc]
00405571: 5F                   pop edi
00405572: 5E                   pop esi
00405573: 64 89 0D 00 00 00 00 mov dword ptr fs:[0], ecx
0040557A: 83 C4 10             add esp, 0x10
0040557D: C3                   ret 
0040557E: 90                   nop 
0040557F: 90                   nop 
00405580: 83 EC 2C             sub esp, 0x2c
00405583: 8B 0D B0 10 4E 00    mov ecx, dword ptr [0x4e10b0]
00405589: 53                   push ebx
0040558A: 55                   push ebp
0040558B: 56                   push esi
0040558C: 8D 44 24 28          lea eax, [esp + 0x28]
00405590: 57                   push edi
00405591: 50                   push eax
00405592: 68 FE 00 00 00       push 0xfe
00405597: C6 05 C2 93 4C 00 00 mov byte ptr [0x4c93c2], 0
0040559E: C6 05 C3 93 4C 00 00 mov byte ptr [0x4c93c3], 0
004055A5: E8 86 90 02 00       call 0x42e630
004055AA: 8B 0D B0 10 4E 00    mov ecx, dword ptr [0x4e10b0]
004055B0: 50                   push eax
004055B1: E8 DA A3 02 00       call 0x42f990
004055B6: B9 82 00 00 00       mov ecx, 0x82
004055BB: BA C2 FF FF FF       mov edx, 0xffffffc2
004055C0: 89 4C 24 24          mov dword ptr [esp + 0x24], ecx
004055C4: 89 54 24 20          mov dword ptr [esp + 0x20], edx
004055C8: 68 80 5C 40 00       push 0x405c80
004055CD: 8D 4C 24 30          lea ecx, [esp + 0x30]
004055D1: 68 70 5A 40 00       push 0x405a70
004055D6: 8D 54 24 24          lea edx, [esp + 0x24]
004055DA: 51                   push ecx
004055DB: 8B 0D B0 10 4E 00    mov ecx, dword ptr [0x4e10b0]
004055E1: 52                   push edx
004055E2: B8 7E FF FF FF       mov eax, 0xffffff7e
004055E7: BE 3E 00 00 00       mov esi, 0x3e
004055EC: 68 E1 00 00 00       push 0xe1
004055F1: 6A 02                push 2
004055F3: 89 44 24 34          mov dword ptr [esp + 0x34], eax
004055F7: 89 74 24 40          mov dword ptr [esp + 0x40], esi
004055FB: E8 C0 A4 02 00       call 0x42fac0
00405600: 8B 0D B0 10 4E 00    mov ecx, dword ptr [0x4e10b0]
00405606: 6A 01                push 1
00405608: 6A 00                push 0
0040560A: 6A 06                push 6
0040560C: 6A 0A                push 0xa
0040560E: 6A 02                push 2
00405610: E8 FB A5 02 00       call 0x42fc10
00405615: A1 B0 10 4E 00       mov eax, dword ptr [0x4e10b0]
0040561A: 33 F6                xor esi, esi
0040561C: 89 74 24 14          mov dword ptr [esp + 0x14], esi
00405620: 8D 90 D8 07 00 00    lea edx, [eax + 0x7d8]
00405626: 8B 0D C4 93 4C 00    mov ecx, dword ptr [0x4c93c4]
0040562C: 89 54 24 18          mov dword ptr [esp + 0x18], edx
00405630: C7 44 24 10 05 00 00 00 mov dword ptr [esp + 0x10], 5
00405638: 8D 1C 31             lea ebx, [ecx + esi]
0040563B: C6 02 01             mov byte ptr [edx], 1
0040563E: 8A 03                mov al, byte ptr [ebx]
00405640: 42                   inc edx
00405641: 3C FF                cmp al, 0xff
00405643: 0F 84 86 00 00 00    je 0x4056cf
00405649: A8 C0                test al, 0xc0
0040564B: 75 05                jne 0x405652
0040564D: C6 02 03             mov byte ptr [edx], 3
00405650: EB 0C                jmp 0x40565e
00405652: A8 40                test al, 0x40
00405654: 74 05                je 0x40565b
00405656: C6 02 07             mov byte ptr [edx], 7
00405659: EB 03                jmp 0x40565e
0040565B: C6 02 01             mov byte ptr [edx], 1
0040565E: 83 E0 3F             and eax, 0x3f
00405661: 83 C9 FF             or ecx, 0xffffffff
00405664: 42                   inc edx
00405665: 8B 34 85 88 3F 4B 00 mov esi, dword ptr [eax*4 + 0x4b3f88]
0040566C: 33 C0                xor eax, eax
0040566E: 8B FE                mov edi, esi
00405670: F2 AE                repne scasb al, byte ptr es:[edi]
00405672: F7 D1                not ecx
00405674: 49                   dec ecx
00405675: 8B E9                mov ebp, ecx
00405677: 83 FD 02             cmp ebp, 2
0040567A: 75 30                jne 0x4056ac
0040567C: C6 02 0F             mov byte ptr [edx], 0xf
0040567F: 42                   inc edx
00405680: 8B FE                mov edi, esi
00405682: 83 C9 FF             or ecx, 0xffffffff
00405685: 88 02                mov byte ptr [edx], al
00405687: 42                   inc edx
00405688: F2 AE                repne scasb al, byte ptr es:[edi]
0040568A: F7 D1                not ecx
0040568C: 2B F9                sub edi, ecx
0040568E: 8B C1                mov eax, ecx
00405690: 8B F7                mov esi, edi
00405692: 8B FA                mov edi, edx
00405694: 03 D5                add edx, ebp
00405696: C1 E9 02             shr ecx, 2
00405699: F3 A5                rep movsd dword ptr es:[edi], dword ptr [esi]
0040569B: 8B C8                mov ecx, eax
0040569D: 83 E1 03             and ecx, 3
004056A0: 42                   inc edx
004056A1: F3 A4                rep movsb byte ptr es:[edi], byte ptr [esi]
004056A3: C6 42 FF 0F          mov byte ptr [edx - 1], 0xf
004056A7: C6 02 00             mov byte ptr [edx], 0
004056AA: EB 36                jmp 0x4056e2
004056AC: 8B FE                mov edi, esi
004056AE: 83 C9 FF             or ecx, 0xffffffff
004056B1: 33 C0                xor eax, eax
004056B3: F2 AE                repne scasb al, byte ptr es:[edi]
004056B5: F7 D1                not ecx
004056B7: 2B F9                sub edi, ecx
004056B9: 8B C1                mov eax, ecx
004056BB: 8B F7                mov esi, edi
004056BD: 8B FA                mov edi, edx
004056BF: C1 E9 02             shr ecx, 2
004056C2: F3 A5                rep movsd dword ptr es:[edi], dword ptr [esi]
004056C4: 8B C8                mov ecx, eax
004056C6: 83 E1 03             and ecx, 3
004056C9: 03 D5                add edx, ebp
004056CB: F3 A4                rep movsb byte ptr es:[edi], byte ptr [esi]
004056CD: EB 14                jmp 0x4056e3
004056CF: C6 02 01             mov byte ptr [edx], 1
004056D2: 42                   inc edx
004056D3: C6 02 00             mov byte ptr [edx], 0
004056D6: 42                   inc edx
004056D7: C6 02 20             mov byte ptr [edx], 0x20
004056DA: 42                   inc edx
004056DB: C6 02 00             mov byte ptr [edx], 0
004056DE: 42                   inc edx
004056DF: C6 02 20             mov byte ptr [edx], 0x20
004056E2: 42                   inc edx
004056E3: 8B 44 24 10          mov eax, dword ptr [esp + 0x10]
004056E7: 83 C3 06             add ebx, 6
004056EA: 48                   dec eax
004056EB: 89 44 24 10          mov dword ptr [esp + 0x10], eax
004056EF: 0F 85 46 FF FF FF    jne 0x40563b
004056F5: 8B 74 24 14          mov esi, dword ptr [esp + 0x14]
004056F9: 83 FE 05             cmp esi, 5
004056FC: 74 04                je 0x405702
004056FE: 6A 00                push 0
00405700: EB 02                jmp 0x405704
00405702: 6A 01                push 1
00405704: 52                   push edx
00405705: E8 A6 7E 00 00       call 0x40d5b0
0040570A: 8B 4C 24 20          mov ecx, dword ptr [esp + 0x20]
0040570E: 83 C4 08             add esp, 8
00405711: 46                   inc esi
00405712: 83 FE 06             cmp esi, 6
00405715: 8D 51 40             lea edx, [ecx + 0x40]
00405718: 89 74 24 14          mov dword ptr [esp + 0x14], esi
0040571C: 0F 8C 04 FF FF FF    jl 0x405626
00405722: 8B 15 B0 10 4E 00    mov edx, dword ptr [0x4e10b0]
00405728: 5F                   pop edi
00405729: 5E                   pop esi
0040572A: 5D                   pop ebp
0040572B: 8A 8A F1 04 00 00    mov cl, byte ptr [edx + 0x4f1]
00405731: 8D 82 D0 04 00 00    lea eax, [edx + 0x4d0]
00405737: FE C1                inc cl
00405739: 5B                   pop ebx
0040573A: C6 40 25 01          mov byte ptr [eax + 0x25], 1
0040573E: 88 48 21             mov byte ptr [eax + 0x21], cl
00405741: 83 C4 2C             add esp, 0x2c
00405744: C3                   ret 
00405745: 90                   nop 
00405746: 90                   nop 
00405747: 90                   nop 
00405748: 90                   nop 
00405749: 90                   nop 
0040574A: 90                   nop 
0040574B: 90                   nop 
0040574C: 90                   nop 
0040574D: 90                   nop 
0040574E: 90                   nop 
0040574F: 90                   nop 
00405750: 8B 0D B0 10 4E 00    mov ecx, dword ptr [0x4e10b0]
00405756: 56                   push esi
00405757: 66 8B 81 6A 01 00 00 mov ax, word ptr [ecx + 0x16a]
0040575E: 50                   push eax
0040575F: E8 0C 9F 02 00       call 0x42f670
00405764: 8B 54 24 0C          mov edx, dword ptr [esp + 0xc]
00405768: 8B 74 24 08          mov esi, dword ptr [esp + 8]
0040576C: 8B C8                mov ecx, eax
0040576E: 81 E2 FF 00 00 00    and edx, 0xff
00405774: 33 C0                xor eax, eax
00405776: 66 8B 44 96 02       mov ax, word ptr [esi + edx*4 + 2]
0040577B: 5E                   pop esi
0040577C: 03 C1                add eax, ecx
0040577E: C3                   ret 
0040577F: 90                   nop 
00405780: 8B 0D B0 10 4E 00    mov ecx, dword ptr [0x4e10b0]
00405786: 66 8B 81 6A 01 00 00 mov ax, word ptr [ecx + 0x16a]
0040578D: 50                   push eax
0040578E: E8 DD 9E 02 00       call 0x42f670
00405793: 66 0F B6 4C 24 04    movzx cx, byte ptr [esp + 4]
00405799: 51                   push ecx
0040579A: 8B 0D B0 10 4E 00    mov ecx, dword ptr [0x4e10b0]
004057A0: 50                   push eax
004057A1: E8 1A 3F 02 00       call 0x4296c0
004057A6: 8B 54 24 08          mov edx, dword ptr [esp + 8]
004057AA: 52                   push edx
004057AB: 50                   push eax
004057AC: E8 9F FF FF FF       call 0x405750
004057B1: 83 C4 08             add esp, 8
004057B4: C3                   ret 
004057B5: 90                   nop 
004057B6: 90                   nop 
004057B7: 90                   nop 
004057B8: 90                   nop 
004057B9: 90                   nop 
004057BA: 90                   nop 
004057BB: 90                   nop 
004057BC: 90                   nop 
004057BD: 90                   nop 
004057BE: 90                   nop 
004057BF: 90                   nop 
004057C0: E8 0B 00 00 00       call 0x4057d0
004057C5: E9 26 00 00 00       jmp 0x4057f0
004057CA: 90                   nop 
004057CB: 90                   nop 
004057CC: 90                   nop 
004057CD: 90                   nop 
004057CE: 90                   nop 
004057CF: 90                   nop 
004057D0: 68 2C 1A 4A 00       push 0x4a1a2c
004057D5: 68 38 1A 4A 00       push 0x4a1a38
004057DA: 6A 07                push 7
004057DC: 6A 04                push 4
004057DE: 68 84 93 4C 00       push 0x4c9384
004057E3: E8 32 C6 09 00       call 0x4a1e1a
004057E8: C3                   ret 
004057E9: 90                   nop 
004057EA: 90                   nop 
004057EB: 90                   nop 
004057EC: 90                   nop 
004057ED: 90                   nop 
004057EE: 90                   nop 
004057EF: 90                   nop 
004057F0: 68 00 58 40 00       push 0x405800
004057F5: E8 D4 C6 09 00       call 0x4a1ece
004057FA: 59                   pop ecx
004057FB: C3                   ret 
004057FC: 90                   nop 
004057FD: 90                   nop 
004057FE: 90                   nop 
004057FF: 90                   nop 
00405800: 68 2C 1A 4A 00       push 0x4a1a2c
00405805: 6A 07                push 7
00405807: 6A 04                push 4
00405809: 68 84 93 4C 00       push 0x4c9384
0040580E: E8 13 C5 09 00       call 0x4a1d26
00405813: C3                   ret 
00405814: 90                   nop 
00405815: 90                   nop 
00405816: 90                   nop 
00405817: 90                   nop 
00405818: 90                   nop 
00405819: 90                   nop 
0040581A: 90                   nop 
0040581B: 90                   nop 
0040581C: 90                   nop 
0040581D: 90                   nop 
0040581E: 90                   nop 
0040581F: 90                   nop 
00405820: 8B 44 24 04          mov eax, dword ptr [esp + 4]
00405824: 83 EC 24             sub esp, 0x24
00405827: 85 C0                test eax, eax
00405829: 56                   push esi
0040582A: 57                   push edi
0040582B: A3 A0 93 4C 00       mov dword ptr [0x4c93a0], eax
00405830: 74 32                je 0x405864
00405832: 8B 0D B0 10 4E 00    mov ecx, dword ptr [0x4e10b0]
00405838: 8D 44 24 0C          lea eax, [esp + 0xc]
0040583C: 50                   push eax
0040583D: 68 FE 00 00 00       push 0xfe
00405842: C6 44 24 38 E1       mov byte ptr [esp + 0x38], 0xe1
00405847: E8 E4 8D 02 00       call 0x42e630
0040584C: 8B 0D B0 10 4E 00    mov ecx, dword ptr [0x4e10b0]
00405852: 50                   push eax
00405853: E8 38 A1 02 00       call 0x42f990
00405858: B8 B1 FF FF FF       mov eax, 0xffffffb1
0040585D: C6 44 24 08 08       mov byte ptr [esp + 8], 8
00405862: EB 5C                jmp 0x4058c0
00405864: 66 0F B6 0D C3 93 4C 00 movzx cx, byte ptr [0x4c93c3]
0040586C: 8B C1                mov eax, ecx
0040586E: C6 44 24 30 C1       mov byte ptr [esp + 0x30], 0xc1
00405873: C1 E0 04             shl eax, 4
00405876: 03 C1                add eax, ecx
00405878: 8B 0D 30 2D 4F 00    mov ecx, dword ptr [0x4f2d30]
0040587E: C6 44 24 08 00       mov byte ptr [esp + 8], 0
00405883: 8D 14 41             lea edx, [ecx + eax*2]
00405886: 66 0F B6 0D C2 93 4C 00 movzx cx, byte ptr [0x4c93c2]
0040588E: 8D 44 10 07          lea eax, [eax + edx + 7]
00405892: 8B 15 34 2D 4F 00    mov edx, dword ptr [0x4f2d34]
00405898: C1 E1 04             shl ecx, 4
0040589B: 0F BF C0             movsx eax, ax
0040589E: 8D 4C 11 19          lea ecx, [ecx + edx + 0x19]
004058A2: 89 44 24 0C          mov dword ptr [esp + 0xc], eax
004058A6: 0F BF C9             movsx ecx, cx
004058A9: 8D 50 2A             lea edx, [eax + 0x2a]
004058AC: 89 4C 24 10          mov dword ptr [esp + 0x10], ecx
004058B0: 8D 71 0D             lea esi, [ecx + 0xd]
004058B3: 89 54 24 14          mov dword ptr [esp + 0x14], edx
004058B7: 89 74 24 18          mov dword ptr [esp + 0x18], esi
004058BB: B8 CF FF FF FF       mov eax, 0xffffffcf
004058C0: 0F BF C0             movsx eax, ax
004058C3: BA 7E 00 00 00       mov edx, 0x7e
004058C8: B9 82 FF FF FF       mov ecx, 0xffffff82
004058CD: 89 54 24 24          mov dword ptr [esp + 0x24], edx
004058D1: 8D 70 63             lea esi, [eax + 0x63]
004058D4: 89 44 24 20          mov dword ptr [esp + 0x20], eax
004058D8: 68 70 5E 40 00       push 0x405e70
004058DD: 8D 54 24 10          lea edx, [esp + 0x10]
004058E1: 89 4C 24 20          mov dword ptr [esp + 0x20], ecx
004058E5: 8B 4C 24 34          mov ecx, dword ptr [esp + 0x34]
004058E9: 68 10 5E 40 00       push 0x405e10
004058EE: 8D 44 24 24          lea eax, [esp + 0x24]
004058F2: 52                   push edx
004058F3: 50                   push eax
004058F4: 51                   push ecx
004058F5: 8B 0D B0 10 4E 00    mov ecx, dword ptr [0x4e10b0]
004058FB: 6A 03                push 3
004058FD: 89 74 24 40          mov dword ptr [esp + 0x40], esi
00405901: E8 BA A1 02 00       call 0x42fac0
00405906: 8B 54 24 08          mov edx, dword ptr [esp + 8]
0040590A: 8B 0D B0 10 4E 00    mov ecx, dword ptr [0x4e10b0]
00405910: 6A 00                push 0
00405912: 6A 00                push 0
00405914: 81 E2 FF 00 00 00    and edx, 0xff
0040591A: 6A 07                push 7
0040591C: 52                   push edx
0040591D: 6A 03                push 3
0040591F: E8 EC A2 02 00       call 0x42fc10
00405924: 8B 15 C4 93 4C 00    mov edx, dword ptr [0x4c93c4]
0040592A: 33 C0                xor eax, eax
0040592C: A0 C3 93 4C 00       mov al, byte ptr [0x4c93c3]
00405931: 33 C9                xor ecx, ecx
00405933: 8A 0D C2 93 4C 00    mov cl, byte ptr [0x4c93c2]
00405939: 8D 04 40             lea eax, [eax + eax*2]
0040593C: 03 D1                add edx, ecx
0040593E: 8B 0D B0 10 4E 00    mov ecx, dword ptr [0x4e10b0]
00405944: 8A 04 42             mov al, byte ptr [edx + eax*2]
00405947: 24 3F                and al, 0x3f
00405949: 8B 71 2C             mov esi, dword ptr [ecx + 0x2c]
0040594C: 88 44 24 30          mov byte ptr [esp + 0x30], al
00405950: 8B 54 24 30          mov edx, dword ptr [esp + 0x30]
00405954: 52                   push edx
00405955: 6A 0A                push 0xa
00405957: E8 24 FE FF FF       call 0x405780
0040595C: 6A 00                push 0
0040595E: 50                   push eax
0040595F: E8 EC FD FF FF       call 0x405750
00405964: 8B 0D B0 10 4E 00    mov ecx, dword ptr [0x4e10b0]
0040596A: 83 C4 10             add esp, 0x10
0040596D: 83 C0 02             add eax, 2
00405970: 89 41 2C             mov dword ptr [ecx + 0x2c], eax
00405973: 8B 0D B0 10 4E 00    mov ecx, dword ptr [0x4e10b0]
00405979: 68 FF 00 00 00       push 0xff
0040597E: 6A 03                push 3
00405980: E8 EB C0 02 00       call 0x431a70
00405985: 8B 15 B0 10 4E 00    mov edx, dword ptr [0x4e10b0]
0040598B: C6 42 36 64          mov byte ptr [edx + 0x36], 0x64
0040598F: A1 B0 10 4E 00       mov eax, dword ptr [0x4e10b0]
00405994: 89 70 2C             mov dword ptr [eax + 0x2c], esi
00405997: A1 B0 10 4E 00       mov eax, dword ptr [0x4e10b0]
0040599C: 8B 88 48 05 00 00    mov ecx, dword ptr [eax + 0x548]
004059A2: 8B 90 4C 05 00 00    mov edx, dword ptr [eax + 0x54c]
004059A8: 8D B0 4C 05 00 00    lea esi, [eax + 0x54c]
004059AE: 8D B8 48 05 00 00    lea edi, [eax + 0x548]
004059B4: 3B CA                cmp ecx, edx
004059B6: 74 16                je 0x4059ce
004059B8: 6A 03                push 3
004059BA: 8B C8                mov ecx, eax
004059BC: E8 6F A6 02 00       call 0x430030
004059C1: 8B 17                mov edx, dword ptr [edi]
004059C3: 8B 06                mov eax, dword ptr [esi]
004059C5: 3B D0                cmp edx, eax
004059C7: A1 B0 10 4E 00       mov eax, dword ptr [0x4e10b0]
004059CC: 75 EA                jne 0x4059b8
004059CE: C7 05 C8 93 4C 00 00 00 00 00 mov dword ptr [0x4c93c8], 0
004059D8: 8B 88 B0 0A 00 00    mov ecx, dword ptr [eax + 0xab0]
004059DE: 33 FF                xor edi, edi
004059E0: 85 C9                test ecx, ecx
004059E2: 7E 3C                jle 0x405a20
004059E4: 33 F6                xor esi, esi
004059E6: 81 FE F8 01 00 00    cmp esi, 0x1f8
004059EC: 7D 32                jge 0x405a20
004059EE: 8B 15 C8 93 4C 00    mov edx, dword ptr [0x4c93c8]
004059F4: 8D 84 06 D0 0A 00 00 lea eax, [esi + eax + 0xad0]
004059FB: 50                   push eax
004059FC: 8D 0C 95 84 93 4C 00 lea ecx, [edx*4 + 0x4c9384]
00405A03: 42                   inc edx
00405A04: 89 15 C8 93 4C 00    mov dword ptr [0x4c93c8], edx
00405A0A: E8 35 C0 09 00       call 0x4a1a44
00405A0F: A1 B0 10 4E 00       mov eax, dword ptr [0x4e10b0]
00405A14: 47                   inc edi
00405A15: 83 C6 48             add esi, 0x48
00405A18: 3B B8 B0 0A 00 00    cmp edi, dword ptr [eax + 0xab0]
00405A1E: 7C C6                jl 0x4059e6
00405A20: 5F                   pop edi
00405A21: 5E                   pop esi
00405A22: 83 C4 24             add esp, 0x24
00405A25: C3                   ret 
00405A26: 90                   nop 
00405A27: 90                   nop 
00405A28: 90                   nop 
00405A29: 90                   nop 
00405A2A: 90                   nop 
00405A2B: 90                   nop 
00405A2C: 90                   nop 
00405A2D: 90                   nop 
00405A2E: 90                   nop 
00405A2F: 90                   nop 
00405A30: 8B 44 24 04          mov eax, dword ptr [esp + 4]
00405A34: 50                   push eax
00405A35: 6A 0A                push 0xa
00405A37: E8 44 FD FF FF       call 0x405780
00405A3C: 6A 02                push 2
00405A3E: 50                   push eax
00405A3F: E8 0C FD FF FF       call 0x405750
00405A44: 8A 48 02             mov cl, byte ptr [eax + 2]
00405A47: 8A 15 0C 89 4E 00    mov dl, byte ptr [0x4e890c]
00405A4D: 83 C0 02             add eax, 2
00405A50: 83 C4 10             add esp, 0x10
00405A53: 40                   inc eax
00405A54: 80 F9 FE             cmp cl, 0xfe
00405A57: 73 0C                jae 0x405a65
00405A59: 3A CA                cmp cl, dl
00405A5B: 74 0B                je 0x405a68
00405A5D: 8A 08                mov cl, byte ptr [eax]
00405A5F: 40                   inc eax
00405A60: 80 F9 FE             cmp cl, 0xfe
00405A63: 72 F4                jb 0x405a59
00405A65: 33 C0                xor eax, eax
00405A67: C3                   ret 
00405A68: B8 01 00 00 00       mov eax, 1
00405A6D: C3                   ret 
00405A6E: 90                   nop 
00405A6F: 90                   nop 
00405A70: 66 83 3D B2 31 4F 00 00 cmp word ptr [0x4f31b2], 0
00405A78: 0F 85 F8 01 00 00    jne 0x405c76
00405A7E: 66 83 3D 42 2D 4F 00 01 cmp word ptr [0x4f2d42], 1
00405A86: 0F 85 EA 01 00 00    jne 0x405c76
00405A8C: A1 34 3F 4F 00       mov eax, dword ptr [0x4f3f34]
00405A91: 85 C0                test eax, eax
00405A93: 74 1B                je 0x405ab0
00405A95: A1 B0 10 4E 00       mov eax, dword ptr [0x4e10b0]
00405A9A: 6A 04                push 4
00405A9C: 6A 00                push 0
00405A9E: 66 C7 40 46 03 00    mov word ptr [eax + 0x46], 3
00405AA4: 8B 0D 98 D0 4C 00    mov ecx, dword ptr [0x4cd098]
00405AAA: E8 F1 4F 01 00       call 0x41aaa0
00405AAF: C3                   ret 
00405AB0: A1 30 3F 4F 00       mov eax, dword ptr [0x4f3f30]
00405AB5: 85 C0                test eax, eax
00405AB7: 74 58                je 0x405b11
00405AB9: 33 C0                xor eax, eax
00405ABB: 33 D2                xor edx, edx
00405ABD: A0 C3 93 4C 00       mov al, byte ptr [0x4c93c3]
00405AC2: 8A 15 C2 93 4C 00    mov dl, byte ptr [0x4c93c2]
00405AC8: 8D 0C 40             lea ecx, [eax + eax*2]
00405ACB: A1 C4 93 4C 00       mov eax, dword ptr [0x4c93c4]
00405AD0: 03 C2                add eax, edx
00405AD2: 8A 04 48             mov al, byte ptr [eax + ecx*2]
00405AD5: 3C FF                cmp al, 0xff
00405AD7: 0F 84 8A 01 00 00    je 0x405c67
00405ADD: A8 C0                test al, 0xc0
00405ADF: 0F 84 82 01 00 00    je 0x405c67
00405AE5: 8B 0D B0 10 4E 00    mov ecx, dword ptr [0x4e10b0]
00405AEB: 24 3F                and al, 0x3f
00405AED: 50                   push eax
00405AEE: 6A 03                push 3
00405AF0: E8 5B 8B 02 00       call 0x42e650
00405AF5: 8B 0D B0 10 4E 00    mov ecx, dword ptr [0x4e10b0]
00405AFB: 6A 03                push 3
00405AFD: 6A 00                push 0
00405AFF: 66 C7 41 46 03 00    mov word ptr [ecx + 0x46], 3
00405B05: 8B 0D 98 D0 4C 00    mov ecx, dword ptr [0x4cd098]
00405B0B: E8 90 4F 01 00       call 0x41aaa0
00405B10: C3                   ret 
00405B11: A1 20 3F 4F 00       mov eax, dword ptr [0x4f3f20]
00405B16: 85 C0                test eax, eax
00405B18: 74 3C                je 0x405b56
00405B1A: A0 C3 93 4C 00       mov al, byte ptr [0x4c93c3]
00405B1F: 84 C0                test al, al
00405B21: 75 17                jne 0x405b3a
00405B23: 8B 0D 98 D0 4C 00    mov ecx, dword ptr [0x4cd098]
00405B29: 6A 02                push 2
00405B2B: 6A 00                push 0
00405B2D: C6 05 C3 93 4C 00 04 mov byte ptr [0x4c93c3], 4
00405B34: E8 67 4F 01 00       call 0x41aaa0
00405B39: C3                   ret 
00405B3A: A0 C3 93 4C 00       mov al, byte ptr [0x4c93c3]
00405B3F: 8B 0D 98 D0 4C 00    mov ecx, dword ptr [0x4cd098]
00405B45: FE C8                dec al
00405B47: 6A 02                push 2
00405B49: 6A 00                push 0
00405B4B: A2 C3 93 4C 00       mov byte ptr [0x4c93c3], al
00405B50: E8 4B 4F 01 00       call 0x41aaa0
00405B55: C3                   ret 
00405B56: A1 24 3F 4F 00       mov eax, dword ptr [0x4f3f24]
00405B5B: 85 C0                test eax, eax
00405B5D: 74 3C                je 0x405b9b
00405B5F: 80 3D C3 93 4C 00 04 cmp byte ptr [0x4c93c3], 4
00405B66: 75 17                jne 0x405b7f
00405B68: 8B 0D 98 D0 4C 00    mov ecx, dword ptr [0x4cd098]
00405B6E: 6A 02                push 2
00405B70: 6A 00                push 0
00405B72: C6 05 C3 93 4C 00 00 mov byte ptr [0x4c93c3], 0
00405B79: E8 22 4F 01 00       call 0x41aaa0
00405B7E: C3                   ret 
00405B7F: A0 C3 93 4C 00       mov al, byte ptr [0x4c93c3]
00405B84: 8B 0D 98 D0 4C 00    mov ecx, dword ptr [0x4cd098]
00405B8A: FE C0                inc al
00405B8C: 6A 02                push 2
00405B8E: 6A 00                push 0
00405B90: A2 C3 93 4C 00       mov byte ptr [0x4c93c3], al
00405B95: E8 06 4F 01 00       call 0x41aaa0
00405B9A: C3                   ret 
00405B9B: A1 28 3F 4F 00       mov eax, dword ptr [0x4f3f28]
00405BA0: 85 C0                test eax, eax
00405BA2: 74 3C                je 0x405be0
00405BA4: A0 C2 93 4C 00       mov al, byte ptr [0x4c93c2]
00405BA9: 84 C0                test al, al
00405BAB: 75 17                jne 0x405bc4
00405BAD: 8B 0D 98 D0 4C 00    mov ecx, dword ptr [0x4cd098]
00405BB3: 6A 02                push 2
00405BB5: 6A 00                push 0
00405BB7: C6 05 C2 93 4C 00 05 mov byte ptr [0x4c93c2], 5
00405BBE: E8 DD 4E 01 00       call 0x41aaa0
00405BC3: C3                   ret 
00405BC4: A0 C2 93 4C 00       mov al, byte ptr [0x4c93c2]
00405BC9: 8B 0D 98 D0 4C 00    mov ecx, dword ptr [0x4cd098]
00405BCF: FE C8                dec al
00405BD1: 6A 02                push 2
00405BD3: 6A 00                push 0
00405BD5: A2 C2 93 4C 00       mov byte ptr [0x4c93c2], al
00405BDA: E8 C1 4E 01 00       call 0x41aaa0
00405BDF: C3                   ret 
00405BE0: A1 2C 3F 4F 00       mov eax, dword ptr [0x4f3f2c]
00405BE5: 85 C0                test eax, eax
00405BE7: 74 3C                je 0x405c25
00405BE9: 80 3D C2 93 4C 00 05 cmp byte ptr [0x4c93c2], 5
00405BF0: 75 17                jne 0x405c09
00405BF2: 8B 0D 98 D0 4C 00    mov ecx, dword ptr [0x4cd098]
00405BF8: 6A 02                push 2
00405BFA: 6A 00                push 0
00405BFC: C6 05 C2 93 4C 00 00 mov byte ptr [0x4c93c2], 0
00405C03: E8 98 4E 01 00       call 0x41aaa0
00405C08: C3                   ret 
00405C09: A0 C2 93 4C 00       mov al, byte ptr [0x4c93c2]
00405C0E: 8B 0D 98 D0 4C 00    mov ecx, dword ptr [0x4cd098]
00405C14: FE C0                inc al
00405C16: 6A 02                push 2
00405C18: 6A 00                push 0
00405C1A: A2 C2 93 4C 00       mov byte ptr [0x4c93c2], al
00405C1F: E8 7C 4E 01 00       call 0x41aaa0
00405C24: C3                   ret 
00405C25: A1 1C 3F 4F 00       mov eax, dword ptr [0x4f3f1c]
00405C2A: 85 C0                test eax, eax
00405C2C: 74 48                je 0x405c76
00405C2E: 33 C0                xor eax, eax
00405C30: 8B 0D C4 93 4C 00    mov ecx, dword ptr [0x4c93c4]
00405C36: A0 C3 93 4C 00       mov al, byte ptr [0x4c93c3]
00405C3B: 8D 14 40             lea edx, [eax + eax*2]
00405C3E: 33 C0                xor eax, eax
00405C40: A0 C2 93 4C 00       mov al, byte ptr [0x4c93c2]
00405C45: 03 C8                add ecx, eax
00405C47: 80 3C 51 FF          cmp byte ptr [ecx + edx*2], 0xff
00405C4B: 74 1A                je 0x405c67
00405C4D: 6A 00                push 0
00405C4F: E8 CC FB FF FF       call 0x405820
00405C54: 8B 0D 98 D0 4C 00    mov ecx, dword ptr [0x4cd098]
00405C5A: 83 C4 04             add esp, 4
00405C5D: 6A 03                push 3
00405C5F: 6A 00                push 0
00405C61: E8 3A 4E 01 00       call 0x41aaa0
00405C66: C3                   ret 
00405C67: 8B 0D 98 D0 4C 00    mov ecx, dword ptr [0x4cd098]
00405C6D: 6A 0B                push 0xb
00405C6F: 6A 00                push 0
00405C71: E8 2A 4E 01 00       call 0x41aaa0
00405C76: C3                   ret 
00405C77: 90                   nop 
00405C78: 90                   nop 
00405C79: 90                   nop 
00405C7A: 90                   nop 
00405C7B: 90                   nop 
00405C7C: 90                   nop 
00405C7D: 90                   nop 
00405C7E: 90                   nop 
00405C7F: 90                   nop 
00405C80: 6A FF                push -1
00405C82: 68 38 27 4A 00       push 0x4a2738
00405C87: 64 A1 00 00 00 00    mov eax, dword ptr fs:[0]
00405C8D: 50                   push eax
00405C8E: 64 89 25 00 00 00 00 mov dword ptr fs:[0], esp
00405C95: 83 EC 08             sub esp, 8
00405C98: 8B 0D 34 2D 4F 00    mov ecx, dword ptr [0x4f2d34]
00405C9E: A1 30 2D 4F 00       mov eax, dword ptr [0x4f2d30]
00405CA3: 53                   push ebx
00405CA4: 55                   push ebp
00405CA5: 56                   push esi
00405CA6: 8D 69 03             lea ebp, [ecx + 3]
00405CA9: 57                   push edi
00405CAA: 8D 58 04             lea ebx, [eax + 4]
00405CAD: 89 6C 24 14          mov dword ptr [esp + 0x14], ebp
00405CB1: BE 34 00 00 00       mov esi, 0x34
00405CB6: BF 05 00 00 00       mov edi, 5
00405CBB: 6A 13                push 0x13
00405CBD: 6A 02                push 2
00405CBF: 56                   push esi
00405CC0: 6A 02                push 2
00405CC2: E8 79 C9 02 00       call 0x432640
00405CC7: 6A 64                push 0x64
00405CC9: 6A 16                push 0x16
00405CCB: 56                   push esi
00405CCC: 6A 02                push 2
00405CCE: E8 6D C9 02 00       call 0x432640
00405CD3: 83 C4 20             add esp, 0x20
00405CD6: 83 C6 33             add esi, 0x33
00405CD9: 4F                   dec edi
00405CDA: 75 DF                jne 0x405cbb
00405CDC: 68 FE 00 00 00       push 0xfe
00405CE1: 6A 14                push 0x14
00405CE3: 6A 03                push 3
00405CE5: 6A 02                push 2
00405CE7: E8 D4 C8 02 00       call 0x4325c0
00405CEC: 66 0F B6 15 C2 93 4C 00 movzx dx, byte ptr [0x4c93c2]
00405CF4: 66 0F B6 0D C3 93 4C 00 movzx cx, byte ptr [0x4c93c3]
00405CFC: C1 E2 04             shl edx, 4
00405CFF: 6A 04                push 4
00405D01: 6A 0D                push 0xd
00405D03: 8D 44 2A 16          lea eax, [edx + ebp + 0x16]
00405D07: 6A 2A                push 0x2a
00405D09: 50                   push eax
00405D0A: 8B C1                mov eax, ecx
00405D0C: C1 E0 04             shl eax, 4
00405D0F: 03 C1                add eax, ecx
00405D11: 8D 0C 43             lea ecx, [ebx + eax*2]
00405D14: 8D 54 08 03          lea edx, [eax + ecx + 3]
00405D18: 52                   push edx
00405D19: E8 B2 45 06 00       call 0x46a2d0
00405D1E: 83 C4 24             add esp, 0x24
00405D21: 83 C5 02             add ebp, 2
00405D24: 8D 7B 06             lea edi, [ebx + 6]
00405D27: 33 F6                xor esi, esi
00405D29: 8D 4C 24 10          lea ecx, [esp + 0x10]
00405D2D: E8 06 BD 09 00       call 0x4a1a38
00405D32: 0F BF 05 90 3F 4F 00 movsx eax, word ptr [0x4f3f90]
00405D39: 99                   cdq 
00405D3A: B9 1E 00 00 00       mov ecx, 0x1e
00405D3F: C7 44 24 20 00 00 00 00 mov dword ptr [esp + 0x20], 0
00405D47: F7 F9                idiv ecx
00405D49: 8D 44 24 10          lea eax, [esp + 0x10]
00405D4D: 8D 54 32 01          lea edx, [edx + esi + 1]
00405D51: 52                   push edx
00405D52: 68 8C 40 4B 00       push 0x4b408c
00405D57: 50                   push eax
00405D58: E8 D5 BC 09 00       call 0x4a1a32
00405D5D: 8B 4C 24 1C          mov ecx, dword ptr [esp + 0x1c]
00405D61: 6A 01                push 1
00405D63: 51                   push ecx
00405D64: 55                   push ebp
00405D65: 57                   push edi
00405D66: 6A 00                push 0
00405D68: E8 73 2E 02 00       call 0x428be0
00405D6D: 83 C4 20             add esp, 0x20
00405D70: 8D 4C 24 10          lea ecx, [esp + 0x10]
00405D74: C7 44 24 20 FF FF FF FF mov dword ptr [esp + 0x20], 0xffffffff
00405D7C: E8 AB BC 09 00       call 0x4a1a2c
00405D81: 46                   inc esi
00405D82: 83 C7 33             add edi, 0x33
00405D85: 83 FE 05             cmp esi, 5
00405D88: 7C 9F                jl 0x405d29
00405D8A: 8B 54 24 14          mov edx, dword ptr [esp + 0x14]
00405D8E: 83 C3 0C             add ebx, 0xc
00405D91: 89 5C 24 14          mov dword ptr [esp + 0x14], ebx
00405D95: BB A4 93 4C 00       mov ebx, 0x4c93a4
00405D9A: 8D 6A 16             lea ebp, [edx + 0x16]
00405D9D: 8B 74 24 14          mov esi, dword ptr [esp + 0x14]
00405DA1: 33 FF                xor edi, edi
00405DA3: 8A 04 3B             mov al, byte ptr [ebx + edi]
00405DA6: 3C FF                cmp al, 0xff
00405DA8: 74 32                je 0x405ddc
00405DAA: A8 C0                test al, 0xc0
00405DAC: 75 07                jne 0x405db5
00405DAE: B9 00 00 FF FF       mov ecx, 0xffff0000
00405DB3: EB 0D                jmp 0x405dc2
00405DB5: 8A C8                mov cl, al
00405DB7: 80 E1 40             and cl, 0x40
00405DBA: F6 D9                neg cl
00405DBC: 1B C9                sbb ecx, ecx
00405DBE: 80 E1 01             and cl, 1
00405DC1: 49                   dec ecx
00405DC2: 83 E0 3F             and eax, 0x3f
00405DC5: 51                   push ecx
00405DC6: 6A 01                push 1
00405DC8: 8B 14 85 88 3F 4B 00 mov edx, dword ptr [eax*4 + 0x4b3f88]
00405DCF: 52                   push edx
00405DD0: 55                   push ebp
00405DD1: 56                   push esi
00405DD2: 6A 00                push 0
00405DD4: E8 17 2F 02 00       call 0x428cf0
00405DD9: 83 C4 18             add esp, 0x18
00405DDC: 47                   inc edi
00405DDD: 83 C6 33             add esi, 0x33
00405DE0: 83 FF 05             cmp edi, 5
00405DE3: 7C BE                jl 0x405da3
00405DE5: 83 C3 05             add ebx, 5
00405DE8: 83 C5 10             add ebp, 0x10
00405DEB: 81 FB C2 93 4C 00    cmp ebx, 0x4c93c2
00405DF1: 7C AA                jl 0x405d9d
00405DF3: 8B 4C 24 18          mov ecx, dword ptr [esp + 0x18]
00405DF7: 5F                   pop edi
00405DF8: 5E                   pop esi
00405DF9: 5D                   pop ebp
00405DFA: 5B                   pop ebx
00405DFB: 64 89 0D 00 00 00 00 mov dword ptr fs:[0], ecx
00405E02: 83 C4 14             add esp, 0x14
00405E05: C3                   ret 
00405E06: 90                   nop 
00405E07: 90                   nop 
00405E08: 90                   nop 
00405E09: 90                   nop 
00405E0A: 90                   nop 
00405E0B: 90                   nop 
00405E0C: 90                   nop 
00405E0D: 90                   nop 
00405E0E: 90                   nop 
00405E0F: 90                   nop 
00405E10: A1 A0 93 4C 00       mov eax, dword ptr [0x4c93a0]
00405E15: 85 C0                test eax, eax
00405E17: 75 4A                jne 0x405e63
00405E19: 66 83 3D B2 31 4F 00 01 cmp word ptr [0x4f31b2], 1
00405E21: 75 40                jne 0x405e63
00405E23: A1 1C 3F 4F 00       mov eax, dword ptr [0x4f3f1c]
00405E28: 85 C0                test eax, eax
00405E2A: 75 12                jne 0x405e3e
00405E2C: A1 34 3F 4F 00       mov eax, dword ptr [0x4f3f34]
00405E31: 85 C0                test eax, eax
00405E33: 75 09                jne 0x405e3e
00405E35: A1 30 3F 4F 00       mov eax, dword ptr [0x4f3f30]
00405E3A: 85 C0                test eax, eax
00405E3C: 74 25                je 0x405e63
00405E3E: 8B 0D B0 10 4E 00    mov ecx, dword ptr [0x4e10b0]
00405E44: 6A 03                push 3
00405E46: E8 95 9E 02 00       call 0x42fce0
00405E4B: A1 A0 93 4C 00       mov eax, dword ptr [0x4c93a0]
00405E50: 85 C0                test eax, eax
00405E52: 75 0F                jne 0x405e63
00405E54: 8B 0D 98 D0 4C 00    mov ecx, dword ptr [0x4cd098]
00405E5A: 6A 03                push 3
00405E5C: 6A 00                push 0
00405E5E: E8 3D 4C 01 00       call 0x41aaa0
00405E63: C3                   ret 
00405E64: 90                   nop 
00405E65: 90                   nop 
00405E66: 90                   nop 
00405E67: 90                   nop 
00405E68: 90                   nop 
00405E69: 90                   nop 
00405E6A: 90                   nop 
00405E6B: 90                   nop 
00405E6C: 90                   nop 
00405E6D: 90                   nop 
00405E6E: 90                   nop 
00405E6F: 90                   nop 
00405E70: A1 A0 31 4F 00       mov eax, dword ptr [0x4f31a0]
00405E75: 8B 0D A4 31 4F 00    mov ecx, dword ptr [0x4f31a4]
00405E7B: 55                   push ebp
00405E7C: 56                   push esi
00405E7D: 8D 68 06             lea ebp, [eax + 6]
00405E80: A1 C8 93 4C 00       mov eax, dword ptr [0x4c93c8]
00405E85: 33 F6                xor esi, esi
00405E87: 57                   push edi
00405E88: 85 C0                test eax, eax
00405E8A: 8D 79 03             lea edi, [ecx + 3]
00405E8D: 7E 28                jle 0x405eb7
00405E8F: 53                   push ebx
00405E90: BB 84 93 4C 00       mov ebx, 0x4c9384
00405E95: 8B 13                mov edx, dword ptr [ebx]
00405E97: 6A 01                push 1
00405E99: 52                   push edx
00405E9A: 57                   push edi
00405E9B: 55                   push ebp
00405E9C: 6A 00                push 0
00405E9E: E8 3D 2D 02 00       call 0x428be0
00405EA3: A1 C8 93 4C 00       mov eax, dword ptr [0x4c93c8]
00405EA8: 83 C4 14             add esp, 0x14
00405EAB: 46                   inc esi
00405EAC: 83 C3 04             add ebx, 4
00405EAF: 83 C7 0D             add edi, 0xd
00405EB2: 3B F0                cmp esi, eax
00405EB4: 7C DF                jl 0x405e95
00405EB6: 5B                   pop ebx
00405EB7: 5F                   pop edi
00405EB8: 5E                   pop esi
00405EB9: 5D                   pop ebp
00405EBA: C3                   ret 
00405EBB: 90                   nop 
00405EBC: 90                   nop 
00405EBD: 90                   nop 
00405EBE: 90                   nop 
00405EBF: 90                   nop 
00405EC0: 8B 44 24 04          mov eax, dword ptr [esp + 4]
00405EC4: 50                   push eax
00405EC5: 6A 0A                push 0xa
00405EC7: E8 B4 F8 FF FF       call 0x405780
00405ECC: 6A 03                push 3
00405ECE: 50                   push eax
00405ECF: E8 7C F8 FF FF       call 0x405750
00405ED4: 8A 48 02             mov cl, byte ptr [eax + 2]
00405ED7: 8A 15 0C 89 4E 00    mov dl, byte ptr [0x4e890c]
00405EDD: 83 C0 02             add eax, 2
00405EE0: 83 C4 10             add esp, 0x10
00405EE3: 40                   inc eax
00405EE4: 80 F9 FE             cmp cl, 0xfe
00405EE7: 73 0C                jae 0x405ef5
00405EE9: 3A CA                cmp cl, dl
00405EEB: 74 0B                je 0x405ef8
00405EED: 8A 08                mov cl, byte ptr [eax]
00405EEF: 40                   inc eax
00405EF0: 80 F9 FE             cmp cl, 0xfe
00405EF3: 72 F4                jb 0x405ee9
00405EF5: 33 C0                xor eax, eax
00405EF7: C3                   ret 
00405EF8: B8 01 00 00 00       mov eax, 1
00405EFD: C3                   ret 
00405EFE: 90                   nop 
00405EFF: 90                   nop 
00405F00: 0F BF 05 94 3F 4F 00 movsx eax, word ptr [0x4f3f94]
00405F07: 0F BF 0D 92 3F 4F 00 movsx ecx, word ptr [0x4f3f92]
00405F0E: 8D 04 40             lea eax, [eax + eax*2]
00405F11: 8D 04 80             lea eax, [eax + eax*4]
00405F14: 8D 04 81             lea eax, [ecx + eax*4]
00405F17: C3                   ret 
00405F18: 90                   nop 
00405F19: 90                   nop 
00405F1A: 90                   nop 
00405F1B: 90                   nop 
00405F1C: 90                   nop 
00405F1D: 90                   nop 
00405F1E: 90                   nop 
00405F1F: 90                   nop 
00405F20: 83 EC 08             sub esp, 8
00405F23: 8B 44 24 0C          mov eax, dword ptr [esp + 0xc]
00405F27: 53                   push ebx
00405F28: 55                   push ebp
00405F29: 56                   push esi
00405F2A: 57                   push edi
00405F2B: 50                   push eax
00405F2C: 6A 0A                push 0xa
00405F2E: E8 4D F8 FF FF       call 0x405780
00405F33: 8B E8                mov ebp, eax
00405F35: 6A 01                push 1
00405F37: 55                   push ebp
00405F38: E8 13 F8 FF FF       call 0x405750
00405F3D: 8B F0                mov esi, eax
00405F3F: 6A 04                push 4
00405F41: 55                   push ebp
00405F42: 83 C6 02             add esi, 2
00405F45: E8 06 F8 FF FF       call 0x405750
00405F4A: 8A 1E                mov bl, byte ptr [esi]
00405F4C: 8A 4E 01             mov cl, byte ptr [esi + 1]
00405F4F: 8A 56 02             mov dl, byte ptr [esi + 2]
00405F52: 8B F8                mov edi, eax
00405F54: 83 C4 18             add esp, 0x18
00405F57: 83 C7 02             add edi, 2
00405F5A: 84 DB                test bl, bl
00405F5C: 88 4C 24 13          mov byte ptr [esp + 0x13], cl
00405F60: 88 54 24 14          mov byte ptr [esp + 0x14], dl
00405F64: 0F 84 C8 00 00 00    je 0x406032
00405F6A: 8A 07                mov al, byte ptr [edi]
00405F6C: C6 44 24 1C 00       mov byte ptr [esp + 0x1c], 0
00405F71: 3C FE                cmp al, 0xfe
00405F73: 73 27                jae 0x405f9c
00405F75: 47                   inc edi
00405F76: 8B 0D B0 10 4E 00    mov ecx, dword ptr [0x4e10b0]
00405F7C: 66 0F B6 C0          movzx ax, al
00405F80: 05 C8 00 00 00       add eax, 0xc8
00405F85: 50                   push eax
00405F86: E8 E5 86 02 00       call 0x42e670
00405F8B: 85 C0                test eax, eax
00405F8D: 74 04                je 0x405f93
00405F8F: FE 44 24 1C          inc byte ptr [esp + 0x1c]
00405F93: 8A 07                mov al, byte ptr [edi]
00405F95: 47                   inc edi
00405F96: 3C FE                cmp al, 0xfe
00405F98: 72 DC                jb 0x405f76
00405F9A: EB 22                jmp 0x405fbe
00405F9C: BE C8 00 00 00       mov esi, 0xc8
00405FA1: 8B 0D B0 10 4E 00    mov ecx, dword ptr [0x4e10b0]
00405FA7: 56                   push esi
00405FA8: E8 C3 86 02 00       call 0x42e670
00405FAD: 85 C0                test eax, eax
00405FAF: 74 04                je 0x405fb5
00405FB1: FE 44 24 1C          inc byte ptr [esp + 0x1c]
00405FB5: 46                   inc esi
00405FB6: 81 FE 38 01 00 00    cmp esi, 0x138
00405FBC: 7C E3                jl 0x405fa1
00405FBE: 38 5C 24 1C          cmp byte ptr [esp + 0x1c], bl
00405FC2: 73 0A                jae 0x405fce
00405FC4: 5F                   pop edi
00405FC5: 5E                   pop esi
00405FC6: 5D                   pop ebp
00405FC7: 33 C0                xor eax, eax
00405FC9: 5B                   pop ebx
00405FCA: 83 C4 08             add esp, 8
00405FCD: C3                   ret 
00405FCE: 8B 44 24 14          mov eax, dword ptr [esp + 0x14]
00405FD2: 25 FF 00 00 00       and eax, 0xff
00405FD7: 83 E8 00             sub eax, 0
00405FDA: 74 56                je 0x406032
00405FDC: 48                   dec eax
00405FDD: 0F 84 BE 00 00 00    je 0x4060a1
00405FE3: 48                   dec eax
00405FE4: 74 59                je 0x40603f
00405FE6: 6A 04                push 4
00405FE8: 55                   push ebp
00405FE9: E8 62 F7 FF FF       call 0x405750
00405FEE: 8A 4C 24 1C          mov cl, byte ptr [esp + 0x1c]
00405FF2: 8B F0                mov esi, eax
00405FF4: 8A 46 02             mov al, byte ptr [esi + 2]
00405FF7: 83 C6 02             add esi, 2
00405FFA: 83 C4 08             add esp, 8
00405FFD: 32 DB                xor bl, bl
00405FFF: 46                   inc esi
00406000: 3A C1                cmp al, cl
00406002: 77 28                ja 0x40602c
00406004: 66 33 C9             xor cx, cx
00406007: 8A C8                mov cl, al
00406009: 81 C1 C8 00 00 00    add ecx, 0xc8
0040600F: 51                   push ecx
00406010: 8B 0D B0 10 4E 00    mov ecx, dword ptr [0x4e10b0]
00406016: E8 55 86 02 00       call 0x42e670
0040601B: 85 C0                test eax, eax
0040601D: 74 02                je 0x406021
0040601F: FE C3                inc bl
00406021: 8A 06                mov al, byte ptr [esi]
00406023: 8A 4C 24 14          mov cl, byte ptr [esp + 0x14]
00406027: 46                   inc esi
00406028: 3A C1                cmp al, cl
0040602A: 76 D8                jbe 0x406004
0040602C: 3A 5C 24 13          cmp bl, byte ptr [esp + 0x13]
00406030: 72 65                jb 0x406097
00406032: 5F                   pop edi
00406033: 5E                   pop esi
00406034: 5D                   pop ebp
00406035: B8 01 00 00 00       mov eax, 1
0040603A: 5B                   pop ebx
0040603B: 83 C4 08             add esp, 8
0040603E: C3                   ret 
0040603F: 8B 0D B0 10 4E 00    mov ecx, dword ptr [0x4e10b0]
00406045: 66 8B 91 6A 01 00 00 mov dx, word ptr [ecx + 0x16a]
0040604C: 52                   push edx
0040604D: E8 1E 96 02 00       call 0x42f670
00406052: 8B 0D B0 10 4E 00    mov ecx, dword ptr [0x4e10b0]
00406058: 6A 0B                push 0xb
0040605A: 50                   push eax
0040605B: E8 60 36 02 00       call 0x4296c0
00406060: 8B F0                mov esi, eax
00406062: 8A 46 02             mov al, byte ptr [esi + 2]
00406065: 83 C6 02             add esi, 2
00406068: 32 DB                xor bl, bl
0040606A: 46                   inc esi
0040606B: 3C FE                cmp al, 0xfe
0040606D: 73 22                jae 0x406091
0040606F: 8B 0D B0 10 4E 00    mov ecx, dword ptr [0x4e10b0]
00406075: 66 0F B6 C0          movzx ax, al
00406079: 05 C8 00 00 00       add eax, 0xc8
0040607E: 50                   push eax
0040607F: E8 EC 85 02 00       call 0x42e670
00406084: 85 C0                test eax, eax
00406086: 74 02                je 0x40608a
00406088: FE C3                inc bl
0040608A: 8A 06                mov al, byte ptr [esi]
0040608C: 46                   inc esi
0040608D: 3C FE                cmp al, 0xfe
0040608F: 72 DE                jb 0x40606f
00406091: 3A 5C 24 13          cmp bl, byte ptr [esp + 0x13]
00406095: 73 9B                jae 0x406032
00406097: 5F                   pop edi
00406098: 5E                   pop esi
00406099: 5D                   pop ebp
0040609A: 33 C0                xor eax, eax
0040609C: 5B                   pop ebx
0040609D: 83 C4 08             add esp, 8
004060A0: C3                   ret 
004060A1: 8B 0D B0 10 4E 00    mov ecx, dword ptr [0x4e10b0]
004060A7: 6A 12                push 0x12
004060A9: E8 C2 85 02 00       call 0x42e670
004060AE: 5F                   pop edi
004060AF: 5E                   pop esi
004060B0: 5D                   pop ebp
004060B1: 5B                   pop ebx
004060B2: 83 C4 08             add esp, 8
004060B5: C3                   ret 
004060B6: 90                   nop 
004060B7: 90                   nop 
004060B8: 90                   nop 
004060B9: 90                   nop 
004060BA: 90                   nop 
004060BB: 90                   nop 
004060BC: 90                   nop 
004060BD: 90                   nop 
004060BE: 90                   nop 
004060BF: 90                   nop 
004060C0: 56                   push esi
004060C1: 8B F1                mov esi, ecx
004060C3: 33 C0                xor eax, eax
004060C5: 50                   push eax
004060C6: 89 46 04             mov dword ptr [esi + 4], eax
004060C9: 89 46 08             mov dword ptr [esi + 8], eax
004060CC: FF 15 A4 73 4A 00    call dword ptr [0x4a73a4]
004060D2: 33 C9                xor ecx, ecx
004060D4: 85 C0                test eax, eax
004060D6: 0F 9D C1             setge cl
004060D9: 89 0E                mov dword ptr [esi], ecx
004060DB: 8B C6                mov eax, esi
004060DD: 5E                   pop esi
004060DE: C3                   ret 
004060DF: 90                   nop 
004060E0: 56                   push esi
004060E1: 8B F1                mov esi, ecx
004060E3: 8B 46 04             mov eax, dword ptr [esi + 4]
004060E6: 85 C0                test eax, eax
004060E8: 74 0D                je 0x4060f7
004060EA: 8B 08                mov ecx, dword ptr [eax]
004060EC: 50                   push eax
004060ED: FF 51 08             call dword ptr [ecx + 8]
004060F0: C7 46 04 00 00 00 00 mov dword ptr [esi + 4], 0
004060F7: 8B 46 08             mov eax, dword ptr [esi + 8]
004060FA: 85 C0                test eax, eax
004060FC: 74 2E                je 0x40612c
004060FE: 8B 10                mov edx, dword ptr [eax]
00406100: 6A 00                push 0
00406102: 6A 00                push 0
00406104: 6A 00                push 0
00406106: 6A 00                push 0
00406108: 50                   push eax
00406109: FF 52 14             call dword ptr [edx + 0x14]
0040610C: 8B 46 08             mov eax, dword ptr [esi + 8]
0040610F: 50                   push eax
00406110: 8B 08                mov ecx, dword ptr [eax]
00406112: FF 91 98 00 00 00    call dword ptr [ecx + 0x98]
00406118: 8B 46 08             mov eax, dword ptr [esi + 8]
0040611B: 85 C0                test eax, eax
0040611D: 74 0D                je 0x40612c
0040611F: 8B 10                mov edx, dword ptr [eax]
00406121: 50                   push eax
00406122: FF 52 08             call dword ptr [edx + 8]
00406125: C7 46 08 00 00 00 00 mov dword ptr [esi + 8], 0
0040612C: 8B 06                mov eax, dword ptr [esi]
0040612E: 5E                   pop esi
0040612F: 85 C0                test eax, eax
00406131: 74 06                je 0x406139
00406133: FF 25 A0 73 4A 00    jmp dword ptr [0x4a73a0]
00406139: C3                   ret 
0040613A: 90                   nop 
0040613B: 90                   nop 
0040613C: 90                   nop 
0040613D: 90                   nop 
0040613E: 90                   nop 
0040613F: 90                   nop 
00406140: 56                   push esi
00406141: 8B F1                mov esi, ecx
00406143: 57                   push edi
00406144: 8B 3D 9C 73 4A 00    mov edi, dword ptr [0x4a739c]
0040614A: 8D 46 04             lea eax, [esi + 4]
0040614D: 50                   push eax
0040614E: 68 A8 A7 4A 00       push 0x4aa7a8
00406153: 6A 03                push 3
00406155: 6A 00                push 0
00406157: 68 D8 A7 4A 00       push 0x4aa7d8
0040615C: FF D7                call edi
0040615E: 85 C0                test eax, eax
00406160: 7C 4C                jl 0x4061ae
00406162: 83 C6 08             add esi, 8
00406165: 56                   push esi
00406166: 68 98 A7 4A 00       push 0x4aa798
0040616B: 6A 03                push 3
0040616D: 6A 00                push 0
0040616F: 68 F8 A7 4A 00       push 0x4aa7f8
00406174: FF D7                call edi
00406176: 85 C0                test eax, eax
00406178: 7C 34                jl 0x4061ae
0040617A: 8B 54 24 10          mov edx, dword ptr [esp + 0x10]
0040617E: 8B 44 24 14          mov eax, dword ptr [esp + 0x14]
00406182: 8B 36                mov esi, dword ptr [esi]
00406184: 6A 00                push 0
00406186: 6A 3F                push 0x3f
00406188: 52                   push edx
00406189: 8B 54 24 18          mov edx, dword ptr [esp + 0x18]
0040618D: 8B 0E                mov ecx, dword ptr [esi]
0040618F: 50                   push eax
00406190: 52                   push edx
00406191: 6A 00                push 0
00406193: 6A 00                push 0
00406195: 56                   push esi
00406196: FF 91 B0 00 00 00    call dword ptr [ecx + 0xb0]
0040619C: 85 C0                test eax, eax
0040619E: 7D 0C                jge 0x4061ac
004061A0: 3D 78 00 78 88       cmp eax, 0x88780078
004061A5: 75 07                jne 0x4061ae
004061A7: 5F                   pop edi
004061A8: 5E                   pop esi
004061A9: C2 0C 00             ret 0xc
004061AC: 33 C0                xor eax, eax
004061AE: 5F                   pop edi
004061AF: 5E                   pop esi
004061B0: C2 0C 00             ret 0xc
004061B3: 90                   nop 
004061B4: 90                   nop 
004061B5: 90                   nop 
004061B6: 90                   nop 
004061B7: 90                   nop 
004061B8: 90                   nop 
004061B9: 90                   nop 
004061BA: 90                   nop 
004061BB: 90                   nop 
004061BC: 90                   nop 
004061BD: 90                   nop 
004061BE: 90                   nop 
004061BF: 90                   nop 
004061C0: 81 EC 08 02 00 00    sub esp, 0x208
004061C6: 56                   push esi
004061C7: 8B F1                mov esi, ecx
004061C9: 8B 46 04             mov eax, dword ptr [esi + 4]
004061CC: 85 C0                test eax, eax
004061CE: 75 0F                jne 0x4061df
004061D0: B8 FF FF 00 80       mov eax, 0x8000ffff
004061D5: 5E                   pop esi
004061D6: 81 C4 08 02 00 00    add esp, 0x208
004061DC: C2 04 00             ret 4
004061DF: 8B 84 24 10 02 00 00 mov eax, dword ptr [esp + 0x210]
004061E6: 6A FF                push -1
004061E8: 8D 4C 24 08          lea ecx, [esp + 8]
004061EC: 50                   push eax
004061ED: 51                   push ecx
004061EE: E8 0D 8D 00 00       call 0x40ef00
004061F3: 8B 46 04             mov eax, dword ptr [esi + 4]
004061F6: 83 C4 0C             add esp, 0xc
004061F9: 8D 4C 24 04          lea ecx, [esp + 4]
004061FD: 8B 10                mov edx, dword ptr [eax]
004061FF: 6A 00                push 0
00406201: 51                   push ecx
00406202: 68 C8 A7 4A 00       push 0x4aa7c8
00406207: 50                   push eax
00406208: FF 52 14             call dword ptr [edx + 0x14]
0040620B: 5E                   pop esi
0040620C: 81 C4 08 02 00 00    add esp, 0x208
00406212: C2 04 00             ret 4
00406215: 90                   nop 
00406216: 90                   nop 
00406217: 90                   nop 
00406218: 90                   nop 
00406219: 90                   nop 
0040621A: 90                   nop 
0040621B: 90                   nop 
0040621C: 90                   nop 
0040621D: 90                   nop 
0040621E: 90                   nop 
0040621F: 90                   nop 
00406220: 8B 41 04             mov eax, dword ptr [ecx + 4]
00406223: 85 C0                test eax, eax
00406225: 74 06                je 0x40622d
00406227: 8B 08                mov ecx, dword ptr [eax]
00406229: 50                   push eax
0040622A: FF 51 30             call dword ptr [ecx + 0x30]
0040622D: C3                   ret 
0040622E: 90                   nop 
0040622F: 90                   nop 
00406230: 6A FF                push -1
00406232: 68 5E 27 4A 00       push 0x4a275e
00406237: 64 A1 00 00 00 00    mov eax, dword ptr fs:[0]
0040623D: 50                   push eax
0040623E: 64 89 25 00 00 00 00 mov dword ptr fs:[0], esp
00406245: 81 EC 10 02 00 00    sub esp, 0x210
0040624B: 8B 84 24 24 02 00 00 mov eax, dword ptr [esp + 0x224]
00406252: 56                   push esi
00406253: 8B F1                mov esi, ecx
00406255: 6A FF                push -1
00406257: 8D 4C 24 10          lea ecx, [esp + 0x10]
0040625B: 50                   push eax
0040625C: 51                   push ecx
0040625D: C7 44 24 10 00 00 00 00 mov dword ptr [esp + 0x10], 0
00406265: E8 96 8C 00 00       call 0x40ef00
0040626A: 8B 46 04             mov eax, dword ptr [esi + 4]
0040626D: 83 C4 0C             add esp, 0xc
00406270: 8D 4C 24 04          lea ecx, [esp + 4]
00406274: 8B 10                mov edx, dword ptr [eax]
00406276: 51                   push ecx
00406277: 8D 4C 24 10          lea ecx, [esp + 0x10]
0040627B: 51                   push ecx
0040627C: 68 88 A7 4A 00       push 0x4aa788
00406281: 68 E8 A7 4A 00       push 0x4aa7e8
00406286: 50                   push eax
00406287: FF 52 38             call dword ptr [edx + 0x38]
0040628A: 85 C0                test eax, eax
0040628C: 7D 10                jge 0x40629e
0040628E: 3D 82 11 78 88       cmp eax, 0x88781182
00406293: 0F 85 99 00 00 00    jne 0x406332
00406299: E9 94 00 00 00       jmp 0x406332
0040629E: 6A 18                push 0x18
004062A0: E8 99 B7 09 00       call 0x4a1a3e
004062A5: 83 C4 04             add esp, 4
004062A8: 89 44 24 08          mov dword ptr [esp + 8], eax
004062AC: 85 C0                test eax, eax
004062AE: C7 84 24 1C 02 00 00 00 00 00 00 mov dword ptr [esp + 0x21c], 0
004062B9: 74 16                je 0x4062d1
004062BB: 8B 54 24 04          mov edx, dword ptr [esp + 4]
004062BF: 8B 4E 04             mov ecx, dword ptr [esi + 4]
004062C2: 52                   push edx
004062C3: 8B 56 08             mov edx, dword ptr [esi + 8]
004062C6: 51                   push ecx
004062C7: 52                   push edx
004062C8: 8B C8                mov ecx, eax
004062CA: E8 81 00 00 00       call 0x406350
004062CF: EB 02                jmp 0x4062d3
004062D1: 33 C0                xor eax, eax
004062D3: 8B B4 24 24 02 00 00 mov esi, dword ptr [esp + 0x224]
004062DA: C7 84 24 1C 02 00 00 FF FF FF FF mov dword ptr [esp + 0x21c], 0xffffffff
004062E5: 85 C0                test eax, eax
004062E7: 89 06                mov dword ptr [esi], eax
004062E9: 75 07                jne 0x4062f2
004062EB: B8 0E 00 07 80       mov eax, 0x8007000e
004062F0: EB 40                jmp 0x406332
004062F2: 8B 84 24 30 02 00 00 mov eax, dword ptr [esp + 0x230]
004062F9: 85 C0                test eax, eax
004062FB: 74 1B                je 0x406318
004062FD: 8B 44 24 04          mov eax, dword ptr [esp + 4]
00406301: 6A 00                push 0
00406303: 6A 00                push 0
00406305: 6A 00                push 0
00406307: 8B 08                mov ecx, dword ptr [eax]
00406309: 6A FF                push -1
0040630B: 68 B8 A7 4A 00       push 0x4aa7b8
00406310: 50                   push eax
00406311: FF 51 4C             call dword ptr [ecx + 0x4c]
00406314: 85 C0                test eax, eax
00406316: 7C 1A                jl 0x406332
00406318: 8B 84 24 2C 02 00 00 mov eax, dword ptr [esp + 0x22c]
0040631F: 85 C0                test eax, eax
00406321: 74 0D                je 0x406330
00406323: 8B 0E                mov ecx, dword ptr [esi]
00406325: 6A 00                push 0
00406327: E8 84 01 00 00       call 0x4064b0
0040632C: 85 C0                test eax, eax
0040632E: 7C 02                jl 0x406332
00406330: 33 C0                xor eax, eax
00406332: 8B 8C 24 14 02 00 00 mov ecx, dword ptr [esp + 0x214]
00406339: 5E                   pop esi
0040633A: 64 89 0D 00 00 00 00 mov dword ptr fs:[0], ecx
00406341: 81 C4 1C 02 00 00    add esp, 0x21c
00406347: C2 10 00             ret 0x10
0040634A: 90                   nop 
0040634B: 90                   nop 
0040634C: 90                   nop 
0040634D: 90                   nop 
0040634E: 90                   nop 
0040634F: 90                   nop 
00406350: 8B 44 24 04          mov eax, dword ptr [esp + 4]
00406354: 56                   push esi
00406355: 8B F1                mov esi, ecx
00406357: 57                   push edi
00406358: 8B 4C 24 10          mov ecx, dword ptr [esp + 0x10]
0040635C: C7 44 24 0C 00 00 00 00 mov dword ptr [esp + 0xc], 0
00406364: 89 46 0C             mov dword ptr [esi + 0xc], eax
00406367: 8B 44 24 14          mov eax, dword ptr [esp + 0x14]
0040636B: 8D 7E 10             lea edi, [esi + 0x10]
0040636E: 89 4E 08             mov dword ptr [esi + 8], ecx
00406371: 8D 4C 24 0C          lea ecx, [esp + 0xc]
00406375: C7 06 FC 73 4A 00    mov dword ptr [esi], 0x4a73fc
0040637B: 89 46 04             mov dword ptr [esi + 4], eax
0040637E: C7 07 00 00 00 00    mov dword ptr [edi], 0
00406384: C7 46 14 00 00 00 00 mov dword ptr [esi + 0x14], 0
0040638B: 8B 10                mov edx, dword ptr [eax]
0040638D: 51                   push ecx
0040638E: 50                   push eax
0040638F: FF 52 6C             call dword ptr [edx + 0x6c]
00406392: 85 C0                test eax, eax
00406394: 7C 22                jl 0x4063b8
00406396: 8B 46 0C             mov eax, dword ptr [esi + 0xc]
00406399: 8B 4C 24 0C          mov ecx, dword ptr [esp + 0xc]
0040639D: 57                   push edi
0040639E: 6A 01                push 1
004063A0: 8B 10                mov edx, dword ptr [eax]
004063A2: 51                   push ecx
004063A3: 50                   push eax
004063A4: FF 92 C0 00 00 00    call dword ptr [edx + 0xc0]
004063AA: 8B 44 24 0C          mov eax, dword ptr [esp + 0xc]
004063AE: 85 C0                test eax, eax
004063B0: 74 06                je 0x4063b8
004063B2: 8B 10                mov edx, dword ptr [eax]
004063B4: 50                   push eax
004063B5: FF 52 08             call dword ptr [edx + 8]
004063B8: 8B C6                mov eax, esi
004063BA: 5F                   pop edi
004063BB: 5E                   pop esi
004063BC: C2 0C 00             ret 0xc
004063BF: 90                   nop 
004063C0: 56                   push esi
004063C1: 8B F1                mov esi, ecx
004063C3: E8 18 00 00 00       call 0x4063e0
004063C8: F6 44 24 08 01       test byte ptr [esp + 8], 1
004063CD: 74 09                je 0x4063d8
004063CF: 56                   push esi
004063D0: E8 51 B6 09 00       call 0x4a1a26
004063D5: 83 C4 04             add esp, 4
004063D8: 8B C6                mov eax, esi
004063DA: 5E                   pop esi
004063DB: C2 04 00             ret 4
004063DE: 90                   nop 
004063DF: 90                   nop 
004063E0: 56                   push esi
004063E1: 8B F1                mov esi, ecx
004063E3: 57                   push edi
004063E4: 33 FF                xor edi, edi
004063E6: 8B 4E 04             mov ecx, dword ptr [esi + 4]
004063E9: C7 06 FC 73 4A 00    mov dword ptr [esi], 0x4a73fc
004063EF: 3B CF                cmp ecx, edi
004063F1: 74 50                je 0x406443
004063F3: 8B 46 08             mov eax, dword ptr [esi + 8]
004063F6: 3B C7                cmp eax, edi
004063F8: 74 07                je 0x406401
004063FA: 8B 10                mov edx, dword ptr [eax]
004063FC: 51                   push ecx
004063FD: 50                   push eax
004063FE: FF 52 34             call dword ptr [edx + 0x34]
00406401: 39 7E 14             cmp dword ptr [esi + 0x14], edi
00406404: 74 1D                je 0x406423
00406406: 8B 4E 10             mov ecx, dword ptr [esi + 0x10]
00406409: 8B 46 04             mov eax, dword ptr [esi + 4]
0040640C: 3B CF                cmp ecx, edi
0040640E: 74 09                je 0x406419
00406410: 8B 10                mov edx, dword ptr [eax]
00406412: 51                   push ecx
00406413: 50                   push eax
00406414: FF 52 78             call dword ptr [edx + 0x78]
00406417: EB 0A                jmp 0x406423
00406419: 8B 56 0C             mov edx, dword ptr [esi + 0xc]
0040641C: 8B 08                mov ecx, dword ptr [eax]
0040641E: 52                   push edx
0040641F: 50                   push eax
00406420: FF 51 78             call dword ptr [ecx + 0x78]
00406423: 8B 46 10             mov eax, dword ptr [esi + 0x10]
00406426: 3B C7                cmp eax, edi
00406428: 74 09                je 0x406433
0040642A: 8B 08                mov ecx, dword ptr [eax]
0040642C: 50                   push eax
0040642D: FF 51 08             call dword ptr [ecx + 8]
00406430: 89 7E 10             mov dword ptr [esi + 0x10], edi
00406433: 8B 46 04             mov eax, dword ptr [esi + 4]
00406436: 3B C7                cmp eax, edi
00406438: 74 09                je 0x406443
0040643A: 8B 10                mov edx, dword ptr [eax]
0040643C: 50                   push eax
0040643D: FF 52 08             call dword ptr [edx + 8]
00406440: 89 7E 04             mov dword ptr [esi + 4], edi
00406443: 89 7E 0C             mov dword ptr [esi + 0xc], edi
00406446: 5F                   pop edi
00406447: 5E                   pop esi
00406448: C3                   ret 
00406449: 90                   nop 
0040644A: 90                   nop 
0040644B: 90                   nop 
0040644C: 90                   nop 
0040644D: 90                   nop 
0040644E: 90                   nop 
0040644F: 90                   nop 
00406450: 56                   push esi
00406451: 8B 71 04             mov esi, dword ptr [ecx + 4]
00406454: 85 F6                test esi, esi
00406456: 74 48                je 0x4064a0
00406458: 8B 41 0C             mov eax, dword ptr [ecx + 0xc]
0040645B: 85 C0                test eax, eax
0040645D: 74 41                je 0x4064a0
0040645F: 8B 51 14             mov edx, dword ptr [ecx + 0x14]
00406462: 85 D2                test edx, edx
00406464: 75 09                jne 0x40646f
00406466: B8 05 40 00 80       mov eax, 0x80004005
0040646B: 5E                   pop esi
0040646C: C2 08 00             ret 8
0040646F: 8B 54 24 0C          mov edx, dword ptr [esp + 0xc]
00406473: 85 D2                test edx, edx
00406475: 75 09                jne 0x406480
00406477: 8B 49 10             mov ecx, dword ptr [ecx + 0x10]
0040647A: 85 C9                test ecx, ecx
0040647C: 74 02                je 0x406480
0040647E: 8B D1                mov edx, ecx
00406480: 8B 08                mov ecx, dword ptr [eax]
00406482: 52                   push edx
00406483: 8B 54 24 0C          mov edx, dword ptr [esp + 0xc]
00406487: 6A 00                push 0
00406489: 6A 00                push 0
0040648B: 6A 00                push 0
0040648D: 6A 00                push 0
0040648F: 52                   push edx
00406490: 6A 00                push 0
00406492: 6A 00                push 0
00406494: 56                   push esi
00406495: 50                   push eax
00406496: FF 91 B4 00 00 00    call dword ptr [ecx + 0xb4]
0040649C: 5E                   pop esi
0040649D: C2 08 00             ret 8
004064A0: B8 F0 01 04 80       mov eax, 0x800401f0
004064A5: 5E                   pop esi
004064A6: C2 08 00             ret 8
004064A9: 90                   nop 
004064AA: 90                   nop 
004064AB: 90                   nop 
004064AC: 90                   nop 
004064AD: 90                   nop 
004064AE: 90                   nop 
004064AF: 90                   nop 
004064B0: 56                   push esi
004064B1: 8B F1                mov esi, ecx
004064B3: 8B 46 04             mov eax, dword ptr [esi + 4]
004064B6: 85 C0                test eax, eax
004064B8: 75 09                jne 0x4064c3
004064BA: B8 F0 01 04 80       mov eax, 0x800401f0
004064BF: 5E                   pop esi
004064C0: C2 04 00             ret 4
004064C3: 8B 4C 24 08          mov ecx, dword ptr [esp + 8]
004064C7: 85 C9                test ecx, ecx
004064C9: 75 13                jne 0x4064de
004064CB: 8B 4E 10             mov ecx, dword ptr [esi + 0x10]
004064CE: 85 C9                test ecx, ecx
004064D0: 75 0C                jne 0x4064de
004064D2: 8B 56 0C             mov edx, dword ptr [esi + 0xc]
004064D5: 8B 08                mov ecx, dword ptr [eax]
004064D7: 52                   push edx
004064D8: 50                   push eax
004064D9: FF 51 74             call dword ptr [ecx + 0x74]
004064DC: EB 07                jmp 0x4064e5
004064DE: 8B 10                mov edx, dword ptr [eax]
004064E0: 51                   push ecx
004064E1: 50                   push eax
004064E2: FF 52 74             call dword ptr [edx + 0x74]
004064E5: 85 C0                test eax, eax
004064E7: 7C 07                jl 0x4064f0
004064E9: C7 46 14 01 00 00 00 mov dword ptr [esi + 0x14], 1
004064F0: 5E                   pop esi
004064F1: C2 04 00             ret 4
004064F4: 90                   nop 
004064F5: 90                   nop 
004064F6: 90                   nop 
004064F7: 90                   nop 
004064F8: 90                   nop 
004064F9: 90                   nop 
004064FA: 90                   nop 
004064FB: 90                   nop 
004064FC: 90                   nop 
004064FD: 90                   nop 
004064FE: 90                   nop 
004064FF: 90                   nop 
00406500: 8B 51 04             mov edx, dword ptr [ecx + 4]
00406503: 85 D2                test edx, edx
00406505: 74 1C                je 0x406523
00406507: 8B 41 0C             mov eax, dword ptr [ecx + 0xc]
0040650A: 85 C0                test eax, eax
0040650C: 74 15                je 0x406523
0040650E: 8B 08                mov ecx, dword ptr [eax]
00406510: 56                   push esi
00406511: 8B 74 24 08          mov esi, dword ptr [esp + 8]
00406515: 56                   push esi
00406516: 6A 00                push 0
00406518: 6A 00                push 0
0040651A: 52                   push edx
0040651B: 50                   push eax
0040651C: FF 51 14             call dword ptr [ecx + 0x14]
0040651F: 5E                   pop esi
00406520: C2 04 00             ret 4
00406523: B8 F0 01 04 80       mov eax, 0x800401f0
00406528: C2 04 00             ret 4
0040652B: 90                   nop 
0040652C: 90                   nop 
0040652D: 90                   nop 
0040652E: 90                   nop 
0040652F: 90                   nop 
00406530: 8B 41 04             mov eax, dword ptr [ecx + 4]
00406533: 85 C0                test eax, eax
00406535: 75 08                jne 0x40653f
00406537: B8 F0 01 04 80       mov eax, 0x800401f0
0040653C: C2 04 00             ret 4
0040653F: 8B 54 24 04          mov edx, dword ptr [esp + 4]
00406543: 8B 08                mov ecx, dword ptr [eax]
00406545: 52                   push edx
00406546: 50                   push eax
00406547: FF 51 18             call dword ptr [ecx + 0x18]
0040654A: C2 04 00             ret 4
0040654D: 90                   nop 
0040654E: 90                   nop 
0040654F: 90                   nop 
00406550: A1 6C 72 4A 00       mov eax, dword ptr [0x4a726c]
00406555: C3                   ret 
00406556: 90                   nop 
00406557: 90                   nop 
00406558: 90                   nop 
00406559: 90                   nop 
0040655A: 90                   nop 
0040655B: 90                   nop 
0040655C: 90                   nop 
0040655D: 90                   nop 
0040655E: 90                   nop 
0040655F: 90                   nop 
00406560: B8 00 74 4A 00       mov eax, 0x4a7400
00406565: C3                   ret 
00406566: 90                   nop 
00406567: 90                   nop 
00406568: 90                   nop 
00406569: 90                   nop 
0040656A: 90                   nop 
0040656B: 90                   nop 
0040656C: 90                   nop 
0040656D: 90                   nop 
0040656E: 90                   nop 
0040656F: 90                   nop 
00406570: 56                   push esi
00406571: 8B F1                mov esi, ecx
00406573: 6A 00                push 0
00406575: E8 96 B5 09 00       call 0x4a1b10
0040657A: C7 06 20 74 4A 00    mov dword ptr [esi], 0x4a7420
00406580: 8B C6                mov eax, esi
00406582: 5E                   pop esi
00406583: C3                   ret 
00406584: 90                   nop 
00406585: 90                   nop 
00406586: 90                   nop 
00406587: 90                   nop 
00406588: 90                   nop 
00406589: 90                   nop 
0040658A: 90                   nop 
0040658B: 90                   nop 
0040658C: 90                   nop 
0040658D: 90                   nop 
0040658E: 90                   nop 
0040658F: 90                   nop 
00406590: 56                   push esi
00406591: 8B F1                mov esi, ecx
00406593: E8 18 00 00 00       call 0x4065b0
00406598: F6 44 24 08 01       test byte ptr [esp + 8], 1
0040659D: 74 09                je 0x4065a8
0040659F: 56                   push esi
004065A0: E8 81 B4 09 00       call 0x4a1a26
004065A5: 83 C4 04             add esp, 4
004065A8: 8B C6                mov eax, esi
004065AA: 5E                   pop esi
004065AB: C2 04 00             ret 4
004065AE: 90                   nop 
004065AF: 90                   nop 
004065B0: E9 61 B5 09 00       jmp 0x4a1b16
004065B5: 90                   nop 
004065B6: 90                   nop 
004065B7: 90                   nop 
004065B8: 90                   nop 
004065B9: 90                   nop 
004065BA: 90                   nop 
004065BB: 90                   nop 
004065BC: 90                   nop 
004065BD: 90                   nop 
004065BE: 90                   nop 
004065BF: 90                   nop 
004065C0: E8 0B 00 00 00       call 0x4065d0
004065C5: E9 16 00 00 00       jmp 0x4065e0
004065CA: 90                   nop 
004065CB: 90                   nop 
004065CC: 90                   nop 
004065CD: 90                   nop 
004065CE: 90                   nop 
004065CF: 90                   nop 
004065D0: B9 D0 93 4C 00       mov ecx, 0x4c93d0
004065D5: E9 96 FF FF FF       jmp 0x406570
004065DA: 90                   nop 
004065DB: 90                   nop 
004065DC: 90                   nop 
004065DD: 90                   nop 
004065DE: 90                   nop 
004065DF: 90                   nop 
004065E0: 68 F0 65 40 00       push 0x4065f0
004065E5: E8 E4 B8 09 00       call 0x4a1ece
004065EA: 59                   pop ecx
004065EB: C3                   ret 
004065EC: 90                   nop 
004065ED: 90                   nop 
004065EE: 90                   nop 
004065EF: 90                   nop 
004065F0: B9 D0 93 4C 00       mov ecx, 0x4c93d0
004065F5: E9 B6 FF FF FF       jmp 0x4065b0
004065FA: 90                   nop 
004065FB: 90                   nop 
004065FC: 90                   nop 
004065FD: 90                   nop 
004065FE: 90                   nop 
004065FF: 90                   nop 
00406600: 6A FF                push -1
00406602: 68 7A 27 4A 00       push 0x4a277a
00406607: 64 A1 00 00 00 00    mov eax, dword ptr fs:[0]
0040660D: 50                   push eax
0040660E: 64 89 25 00 00 00 00 mov dword ptr fs:[0], esp
00406615: 51                   push ecx
00406616: 56                   push esi
00406617: 57                   push edi
00406618: 8B F9                mov edi, ecx
0040661A: 68 B4 40 4B 00       push 0x4b40b4
0040661F: E8 FE B4 09 00       call 0x4a1b22
00406624: 68 3C D6 00 00       push 0xd63c
00406629: E8 10 B4 09 00       call 0x4a1a3e
0040662E: 83 C4 04             add esp, 4
00406631: 89 44 24 08          mov dword ptr [esp + 8], eax
00406635: 85 C0                test eax, eax
00406637: C7 44 24 14 00 00 00 00 mov dword ptr [esp + 0x14], 0
0040663F: 74 0B                je 0x40664c
00406641: 8B C8                mov ecx, eax
00406643: E8 08 83 00 00       call 0x40e950
00406648: 8B F0                mov esi, eax
0040664A: EB 02                jmp 0x40664e
0040664C: 33 F6                xor esi, esi
0040664E: 6A 00                push 0
00406650: 89 77 20             mov dword ptr [edi + 0x20], esi
00406653: 8B 06                mov eax, dword ptr [esi]
00406655: 6A 00                push 0
00406657: 68 00 00 C8 10       push 0x10c80000
0040665C: 68 80 00 00 00       push 0x80
00406661: 8B CE                mov ecx, esi
00406663: C7 44 24 24 FF FF FF FF mov dword ptr [esp + 0x24], 0xffffffff
0040666B: FF 90 C0 00 00 00    call dword ptr [eax + 0xc0]
00406671: 85 C0                test eax, eax
00406673: 75 2D                jne 0x4066a2
00406675: A1 F8 94 4C 00       mov eax, dword ptr [0x4c94f8]
0040667A: 85 C0                test eax, eax
0040667C: 74 11                je 0x40668f
0040667E: 6A 00                push 0
00406680: 6A 00                push 0
00406682: 68 94 40 4B 00       push 0x4b4094
00406687: 6A 00                push 0
00406689: FF 15 7C 73 4A 00    call dword ptr [0x4a737c]
0040668F: 5F                   pop edi
00406690: 33 C0                xor eax, eax
00406692: 5E                   pop esi
00406693: 8B 4C 24 04          mov ecx, dword ptr [esp + 4]
00406697: 64 89 0D 00 00 00 00 mov dword ptr fs:[0], ecx
0040669E: 83 C4 10             add esp, 0x10
004066A1: C3                   ret 
004066A2: 6A 05                push 5
004066A4: 8B CE                mov ecx, esi
004066A6: E8 71 B4 09 00       call 0x4a1b1c
004066AB: 8B 4E 20             mov ecx, dword ptr [esi + 0x20]
004066AE: 51                   push ecx
004066AF: FF 15 80 73 4A 00    call dword ptr [0x4a7380]
004066B5: 8B 4C 24 0C          mov ecx, dword ptr [esp + 0xc]
004066B9: 5F                   pop edi
004066BA: B8 01 00 00 00       mov eax, 1
004066BF: 5E                   pop esi
004066C0: 64 89 0D 00 00 00 00 mov dword ptr fs:[0], ecx
004066C7: 83 C4 10             add esp, 0x10
004066CA: C3                   ret 
004066CB: 90                   nop 
004066CC: 90                   nop 
004066CD: 90                   nop 
004066CE: 90                   nop 
004066CF: 90                   nop 
004066D0: 83 EC 1C             sub esp, 0x1c
004066D3: 53                   push ebx
004066D4: 56                   push esi
004066D5: 57                   push edi
004066D6: 8B 3D 78 73 4A 00    mov edi, dword ptr [0x4a7378]
004066DC: 8B D9                mov ebx, ecx
004066DE: 8B 73 20             mov esi, dword ptr [ebx + 0x20]
004066E1: 6A 00                push 0
004066E3: 6A 00                push 0
004066E5: 6A 00                push 0
004066E7: 8D 44 24 18          lea eax, [esp + 0x18]
004066EB: 6A 00                push 0
004066ED: 50                   push eax
004066EE: FF D7                call edi
004066F0: 85 C0                test eax, eax
004066F2: 74 1E                je 0x406712
004066F4: 8B 13                mov edx, dword ptr [ebx]
004066F6: 8B CB                mov ecx, ebx
004066F8: FF 52 64             call dword ptr [edx + 0x64]
004066FB: 85 C0                test eax, eax
004066FD: 74 27                je 0x406726
004066FF: 6A 00                push 0
00406701: 6A 00                push 0
00406703: 6A 00                push 0
00406705: 8D 44 24 18          lea eax, [esp + 0x18]
00406709: 6A 00                push 0
0040670B: 50                   push eax
0040670C: FF D7                call edi
0040670E: 85 C0                test eax, eax
00406710: 75 E2                jne 0x4066f4
00406712: 85 F6                test esi, esi
00406714: 74 C8                je 0x4066de
00406716: 8B 46 20             mov eax, dword ptr [esi + 0x20]
00406719: 85 C0                test eax, eax
0040671B: 74 C1                je 0x4066de
0040671D: 8B CE                mov ecx, esi
0040671F: E8 4C 85 00 00       call 0x40ec70
00406724: EB B8                jmp 0x4066de
00406726: 8B CB                mov ecx, ebx
00406728: E8 13 00 00 00       call 0x406740
0040672D: 5F                   pop edi
0040672E: 5E                   pop esi
0040672F: 5B                   pop ebx
00406730: 83 C4 1C             add esp, 0x1c
00406733: C3                   ret 
00406734: 90                   nop 
00406735: 90                   nop 
00406736: 90                   nop 
00406737: 90                   nop 
00406738: 90                   nop 
00406739: 90                   nop 
0040673A: 90                   nop 
0040673B: 90                   nop 
0040673C: 90                   nop 
0040673D: 90                   nop 
0040673E: 90                   nop 
0040673F: 90                   nop 
00406740: A1 F8 94 4C 00       mov eax, dword ptr [0x4c94f8]
00406745: 56                   push esi
00406746: 85 C0                test eax, eax
00406748: 8B F1                mov esi, ecx
0040674A: 74 14                je 0x406760
0040674C: 6A 00                push 0
0040674E: 68 DC 40 4B 00       push 0x4b40dc
00406753: 68 94 40 4B 00       push 0x4b4094
00406758: 6A 00                push 0
0040675A: FF 15 7C 73 4A 00    call dword ptr [0x4a737c]
00406760: 8B CE                mov ecx, esi
00406762: E8 C1 B3 09 00       call 0x4a1b28
00406767: 5E                   pop esi
00406768: C3                   ret 
00406769: 90                   nop 
0040676A: 90                   nop 
0040676B: 90                   nop 
0040676C: 90                   nop 
0040676D: 90                   nop 
0040676E: 90                   nop 
0040676F: 90                   nop 
00406770: 8B 44 24 04          mov eax, dword ptr [esp + 4]
00406774: 50                   push eax
00406775: E8 AC B2 09 00       call 0x4a1a26
0040677A: 59                   pop ecx
0040677B: C2 04 00             ret 4
0040677E: 90                   nop 
0040677F: 90                   nop 
00406780: E8 0B 00 00 00       call 0x406790
00406785: E9 26 00 00 00       jmp 0x4067b0
0040678A: 90                   nop 
0040678B: 90                   nop 
0040678C: 90                   nop 
0040678D: 90                   nop 
0040678E: 90                   nop 
0040678F: 90                   nop 
00406790: 51                   push ecx
00406791: 8A 44 24 03          mov al, byte ptr [esp + 3]
00406795: A2 E0 94 4C 00       mov byte ptr [0x4c94e0], al
0040679A: 33 C0                xor eax, eax
0040679C: A3 E4 94 4C 00       mov dword ptr [0x4c94e4], eax
004067A1: A3 E8 94 4C 00       mov dword ptr [0x4c94e8], eax
004067A6: A3 EC 94 4C 00       mov dword ptr [0x4c94ec], eax
004067AB: 59                   pop ecx
004067AC: C3                   ret 
004067AD: 90                   nop 
004067AE: 90                   nop 
004067AF: 90                   nop 
004067B0: 68 C0 67 40 00       push 0x4067c0
004067B5: E8 14 B7 09 00       call 0x4a1ece
004067BA: 59                   pop ecx
004067BB: C3                   ret 
004067BC: 90                   nop 
004067BD: 90                   nop 
004067BE: 90                   nop 
004067BF: 90                   nop 
004067C0: 51                   push ecx
004067C1: A1 E4 94 4C 00       mov eax, dword ptr [0x4c94e4]
004067C6: 50                   push eax
004067C7: 89 44 24 04          mov dword ptr [esp + 4], eax
004067CB: E8 56 B2 09 00       call 0x4a1a26
004067D0: 33 C0                xor eax, eax
004067D2: A3 E4 94 4C 00       mov dword ptr [0x4c94e4], eax
004067D7: A3 E8 94 4C 00       mov dword ptr [0x4c94e8], eax
004067DC: A3 EC 94 4C 00       mov dword ptr [0x4c94ec], eax
004067E1: 83 C4 08             add esp, 8
004067E4: C3                   ret 
004067E5: 90                   nop 
004067E6: 90                   nop 
004067E7: 90                   nop 
004067E8: 90                   nop 
004067E9: 90                   nop 
004067EA: 90                   nop 
004067EB: 90                   nop 
004067EC: 90                   nop 
004067ED: 90                   nop 
004067EE: 90                   nop 
004067EF: 90                   nop 
004067F0: A1 F0 94 4C 00       mov eax, dword ptr [0x4c94f0]
004067F5: 8D 48 18             lea ecx, [eax + 0x18]
004067F8: E9 E3 A3 00 00       jmp 0x410be0
004067FD: 90                   nop 
004067FE: 90                   nop 
004067FF: 90                   nop 
00406800: 8B 0D 5C 52 4E 00    mov ecx, dword ptr [0x4e525c]
00406806: 56                   push esi
00406807: 8B 74 24 08          mov esi, dword ptr [esp + 8]
0040680B: 57                   push edi
0040680C: 8B 3D 60 52 4E 00    mov edi, dword ptr [0x4e5260]
00406812: 33 D2                xor edx, edx
00406814: 85 C9                test ecx, ecx
00406816: 74 16                je 0x40682e
00406818: 8B C7                mov eax, edi
0040681A: 2B C1                sub eax, ecx
0040681C: C1 F8 02             sar eax, 2
0040681F: 3B D0                cmp edx, eax
00406821: 73 0B                jae 0x40682e
00406823: 8B 04 91             mov eax, dword ptr [ecx + edx*4]
00406826: 39 70 6C             cmp dword ptr [eax + 0x6c], esi
00406829: 74 05                je 0x406830
0040682B: 42                   inc edx
0040682C: EB E6                jmp 0x406814
0040682E: 33 C0                xor eax, eax
00406830: 5F                   pop edi
00406831: 5E                   pop esi
00406832: C2 04 00             ret 4
00406835: 90                   nop 
00406836: 90                   nop 
00406837: 90                   nop 
00406838: 90                   nop 
00406839: 90                   nop 
0040683A: 90                   nop 
0040683B: 90                   nop 
0040683C: 90                   nop 
0040683D: 90                   nop 
0040683E: 90                   nop 
0040683F: 90                   nop 
00406840: 8B 0D 6C 52 4E 00    mov ecx, dword ptr [0x4e526c]
00406846: 56                   push esi
00406847: 8B 74 24 08          mov esi, dword ptr [esp + 8]
0040684B: 57                   push edi
0040684C: 8B 3D 70 52 4E 00    mov edi, dword ptr [0x4e5270]
00406852: 33 D2                xor edx, edx
00406854: 85 C9                test ecx, ecx
00406856: 74 16                je 0x40686e
00406858: 8B C7                mov eax, edi
0040685A: 2B C1                sub eax, ecx
0040685C: C1 F8 02             sar eax, 2
0040685F: 3B D0                cmp edx, eax
00406861: 73 0B                jae 0x40686e
00406863: 8B 04 91             mov eax, dword ptr [ecx + edx*4]
00406866: 39 70 40             cmp dword ptr [eax + 0x40], esi
00406869: 74 05                je 0x406870
0040686B: 42                   inc edx
0040686C: EB E6                jmp 0x406854
0040686E: 33 C0                xor eax, eax
00406870: 5F                   pop edi
00406871: 5E                   pop esi
00406872: C2 04 00             ret 4
00406875: 90                   nop 
00406876: 90                   nop 
00406877: 90                   nop 
00406878: 90                   nop 
00406879: 90                   nop 
0040687A: 90                   nop 
0040687B: 90                   nop 
0040687C: 90                   nop 
0040687D: 90                   nop 
0040687E: 90                   nop 
0040687F: 90                   nop 
00406880: 6A FF                push -1
00406882: 68 48 28 4A 00       push 0x4a2848
00406887: 64 A1 00 00 00 00    mov eax, dword ptr fs:[0]
0040688D: 50                   push eax
0040688E: 64 89 25 00 00 00 00 mov dword ptr fs:[0], esp
00406895: 83 EC 14             sub esp, 0x14
00406898: 53                   push ebx
00406899: 55                   push ebp
0040689A: 56                   push esi
0040689B: 8B F1                mov esi, ecx
0040689D: 57                   push edi
0040689E: 89 74 24 20          mov dword ptr [esp + 0x20], esi
004068A2: 8D 4E 18             lea ecx, [esi + 0x18]
004068A5: E8 D6 A2 00 00       call 0x410b80
004068AA: 33 ED                xor ebp, ebp
004068AC: 8D 4E 34             lea ecx, [esi + 0x34]
004068AF: 89 6C 24 2C          mov dword ptr [esp + 0x2c], ebp
004068B3: E8 B8 AA 03 00       call 0x441370
004068B8: 8D 8E B0 00 00 00    lea ecx, [esi + 0xb0]
004068BE: C6 44 24 2C 01       mov byte ptr [esp + 0x2c], 1
004068C3: E8 F8 2A 02 00       call 0x4293c0
004068C8: 8D 8E D8 9A 00 00    lea ecx, [esi + 0x9ad8]
004068CE: C6 44 24 2C 02       mov byte ptr [esp + 0x2c], 2
004068D3: E8 C8 A7 FF FF       call 0x4010a0
004068D8: 8D 8E DC D0 00 00    lea ecx, [esi + 0xd0dc]
004068DE: C6 44 24 2C 03       mov byte ptr [esp + 0x2c], 3
004068E3: E8 A8 3C 01 00       call 0x41a590
004068E8: 8D 8E F0 D0 00 00    lea ecx, [esi + 0xd0f0]
004068EE: C6 44 24 2C 04       mov byte ptr [esp + 0x2c], 4
004068F3: E8 D8 24 02 00       call 0x428dd0
004068F8: 8A 44 24 13          mov al, byte ptr [esp + 0x13]
004068FC: 89 AE 3C D1 00 00    mov dword ptr [esi + 0xd13c], ebp
00406902: 88 86 38 D1 00 00    mov byte ptr [esi + 0xd138], al
00406908: 89 AE 40 D1 00 00    mov dword ptr [esi + 0xd140], ebp
0040690E: 89 AE 44 D1 00 00    mov dword ptr [esi + 0xd144], ebp
00406914: 68 2C 1A 4A 00       push 0x4a1a2c
00406919: 68 38 1A 4A 00       push 0x4a1a38
0040691E: 6A 06                push 6
00406920: 8D 8E 70 D1 00 00    lea ecx, [esi + 0xd170]
00406926: 6A 04                push 4
00406928: 51                   push ecx
00406929: C6 44 24 40 06       mov byte ptr [esp + 0x40], 6
0040692E: E8 E7 B4 09 00       call 0x4a1e1a
00406933: 8D BE 8C D1 00 00    lea edi, [esi + 0xd18c]
00406939: C6 44 24 2C 07       mov byte ptr [esp + 0x2c], 7
0040693E: 8B CF                mov ecx, edi
00406940: E8 F3 B0 09 00       call 0x4a1a38
00406945: 8D 8E A4 D1 00 00    lea ecx, [esi + 0xd1a4]
0040694B: C6 44 24 2C 08       mov byte ptr [esp + 0x2c], 8
00406950: E8 CB A8 00 00       call 0x411220
00406955: 68 60 8E 42 00       push 0x428e60
0040695A: 68 D0 8D 42 00       push 0x428dd0
0040695F: 6A 0A                push 0xa
00406961: 8D 96 44 D2 00 00    lea edx, [esi + 0xd244]
00406967: 6A 48                push 0x48
00406969: 52                   push edx
0040696A: C6 44 24 40 09       mov byte ptr [esp + 0x40], 9
0040696F: E8 A6 B4 09 00       call 0x4a1e1a
00406974: 55                   push ebp
00406975: C6 44 24 30 0A       mov byte ptr [esp + 0x30], 0xa
0040697A: C7 06 FC 74 4A 00    mov dword ptr [esi], 0x4a74fc
00406980: FF 15 A4 73 4A 00    call dword ptr [0x4a73a4]
00406986: 8B 1D 10 73 4A 00    mov ebx, dword ptr [0x4a7310]
0040698C: 83 C8 FF             or eax, 0xffffffff
0040698F: 89 35 F0 94 4C 00    mov dword ptr [0x4c94f0], esi
00406995: 89 AE 50 D1 00 00    mov dword ptr [esi + 0xd150], ebp
0040699B: 89 AE 54 D1 00 00    mov dword ptr [esi + 0xd154], ebp
004069A1: 89 AE 14 D5 00 00    mov dword ptr [esi + 0xd514], ebp
004069A7: 89 AE 18 D5 00 00    mov dword ptr [esi + 0xd518], ebp
004069AD: 89 86 1C D5 00 00    mov dword ptr [esi + 0xd51c], eax
004069B3: 89 86 20 D5 00 00    mov dword ptr [esi + 0xd520], eax
004069B9: C6 44 24 1C 64       mov byte ptr [esp + 0x1c], 0x64
004069BE: 8D 4C 24 14          lea ecx, [esp + 0x14]
004069C2: E8 71 B0 09 00       call 0x4a1a38
004069C7: 8B 44 24 1C          mov eax, dword ptr [esp + 0x1c]
004069CB: 8D 4C 24 14          lea ecx, [esp + 0x14]
004069CF: 25 FF 00 00 00       and eax, 0xff
004069D4: C6 44 24 2C 0B       mov byte ptr [esp + 0x2c], 0xb
004069D9: 50                   push eax
004069DA: 68 AC 46 4B 00       push 0x4b46ac
004069DF: 51                   push ecx
004069E0: E8 4D B0 09 00       call 0x4a1a32
004069E5: 8B 54 24 20          mov edx, dword ptr [esp + 0x20]
004069E9: 83 C4 0C             add esp, 0xc
004069EC: 52                   push edx
004069ED: FF 15 80 70 4A 00    call dword ptr [0x4a7080]
004069F3: 83 F8 05             cmp eax, 5
004069F6: 75 4D                jne 0x406a45
004069F8: 8D 44 24 14          lea eax, [esp + 0x14]
004069FC: 8B CF                mov ecx, edi
004069FE: 50                   push eax
004069FF: E8 40 B0 09 00       call 0x4a1a44
00406A04: 8D 4C 24 18          lea ecx, [esp + 0x18]
00406A08: E8 2B B0 09 00       call 0x4a1a38
00406A0D: 8B 0F                mov ecx, dword ptr [edi]
00406A0F: 8D 54 24 18          lea edx, [esp + 0x18]
00406A13: 51                   push ecx
00406A14: 68 9C 46 4B 00       push 0x4b469c
00406A19: 52                   push edx
00406A1A: C6 44 24 38 0C       mov byte ptr [esp + 0x38], 0xc
00406A1F: E8 0E B0 09 00       call 0x4a1a32
00406A24: 8B 44 24 24          mov eax, dword ptr [esp + 0x24]
00406A28: 68 28 24 4B 00       push 0x4b2428
00406A2D: 50                   push eax
00406A2E: FF D3                call ebx
00406A30: 83 C4 14             add esp, 0x14
00406A33: 3B C5                cmp eax, ebp
00406A35: 75 4D                jne 0x406a84
00406A37: 8D 4C 24 18          lea ecx, [esp + 0x18]
00406A3B: C6 44 24 2C 0B       mov byte ptr [esp + 0x2c], 0xb
00406A40: E8 E7 AF 09 00       call 0x4a1a2c
00406A45: 8D 4C 24 14          lea ecx, [esp + 0x14]
00406A49: C6 44 24 2C 0A       mov byte ptr [esp + 0x2c], 0xa
00406A4E: E8 D9 AF 09 00       call 0x4a1a2c
00406A53: 8A 44 24 1C          mov al, byte ptr [esp + 0x1c]
00406A57: FE C0                inc al
00406A59: 3C 7A                cmp al, 0x7a
00406A5B: 88 44 24 1C          mov byte ptr [esp + 0x1c], al
00406A5F: 0F 85 59 FF FF FF    jne 0x4069be
00406A65: C7 05 F8 94 4C 00 01 00 00 00 mov dword ptr [0x4c94f8], 1
00406A6F: 8B 4C 24 24          mov ecx, dword ptr [esp + 0x24]
00406A73: 8B C6                mov eax, esi
00406A75: 5F                   pop edi
00406A76: 5E                   pop esi
00406A77: 5D                   pop ebp
00406A78: 5B                   pop ebx
00406A79: 64 89 0D 00 00 00 00 mov dword ptr fs:[0], ecx
00406A80: 83 C4 20             add esp, 0x20
00406A83: C3                   ret 
00406A84: 50                   push eax
00406A85: FF 15 1C 73 4A 00    call dword ptr [0x4a731c]
00406A8B: 83 C4 04             add esp, 4
00406A8E: 8D 4C 24 18          lea ecx, [esp + 0x18]
00406A92: C6 44 24 2C 0B       mov byte ptr [esp + 0x2c], 0xb
00406A97: E8 90 AF 09 00       call 0x4a1a2c
00406A9C: 8D 4C 24 14          lea ecx, [esp + 0x14]
00406AA0: C6 44 24 2C 0A       mov byte ptr [esp + 0x2c], 0xa
00406AA5: E8 82 AF 09 00       call 0x4a1a2c
00406AAA: EB C3                jmp 0x406a6f
00406AAC: 90                   nop 
00406AAD: 90                   nop 
00406AAE: 90                   nop 
00406AAF: 90                   nop 
00406AB0: 56                   push esi
00406AB1: 8B F1                mov esi, ecx
00406AB3: E8 18 00 00 00       call 0x406ad0
00406AB8: F6 44 24 08 01       test byte ptr [esp + 8], 1
00406ABD: 74 09                je 0x406ac8
00406ABF: 56                   push esi
00406AC0: E8 61 AF 09 00       call 0x4a1a26
00406AC5: 83 C4 04             add esp, 4
00406AC8: 8B C6                mov eax, esi
00406ACA: 5E                   pop esi
00406ACB: C2 04 00             ret 4
00406ACE: 90                   nop 
00406ACF: 90                   nop 
00406AD0: 6A FF                push -1
00406AD2: 68 08 29 4A 00       push 0x4a2908
00406AD7: 64 A1 00 00 00 00    mov eax, dword ptr fs:[0]
00406ADD: 50                   push eax
00406ADE: 64 89 25 00 00 00 00 mov dword ptr fs:[0], esp
00406AE5: 83 EC 08             sub esp, 8
00406AE8: 53                   push ebx
00406AE9: 56                   push esi
00406AEA: 8B F1                mov esi, ecx
00406AEC: 89 74 24 08          mov dword ptr [esp + 8], esi
00406AF0: C7 06 FC 74 4A 00    mov dword ptr [esi], 0x4a74fc
00406AF6: C7 44 24 18 0A 00 00 00 mov dword ptr [esp + 0x18], 0xa
00406AFE: FF 15 A0 73 4A 00    call dword ptr [0x4a73a0]
00406B04: 8B CE                mov ecx, esi
00406B06: E8 C5 01 00 00       call 0x406cd0
00406B0B: 68 60 8E 42 00       push 0x428e60
00406B10: 6A 0A                push 0xa
00406B12: 8D 86 44 D2 00 00    lea eax, [esi + 0xd244]
00406B18: 6A 48                push 0x48
00406B1A: 50                   push eax
00406B1B: C6 44 24 28 09       mov byte ptr [esp + 0x28], 9
00406B20: E8 01 B2 09 00       call 0x4a1d26
00406B25: 8D 8E A4 D1 00 00    lea ecx, [esi + 0xd1a4]
00406B2B: C6 44 24 18 08       mov byte ptr [esp + 0x18], 8
00406B30: E8 9B A7 00 00       call 0x4112d0
00406B35: 8D 8E 8C D1 00 00    lea ecx, [esi + 0xd18c]
00406B3B: C6 44 24 18 07       mov byte ptr [esp + 0x18], 7
00406B40: E8 E7 AE 09 00       call 0x4a1a2c
00406B45: 68 2C 1A 4A 00       push 0x4a1a2c
00406B4A: 6A 06                push 6
00406B4C: 8D 8E 70 D1 00 00    lea ecx, [esi + 0xd170]
00406B52: 6A 04                push 4
00406B54: 51                   push ecx
00406B55: C6 44 24 28 06       mov byte ptr [esp + 0x28], 6
00406B5A: E8 C7 B1 09 00       call 0x4a1d26
00406B5F: 8B 86 3C D1 00 00    mov eax, dword ptr [esi + 0xd13c]
00406B65: 50                   push eax
00406B66: 89 44 24 10          mov dword ptr [esp + 0x10], eax
00406B6A: E8 B7 AE 09 00       call 0x4a1a26
00406B6F: 33 DB                xor ebx, ebx
00406B71: 83 C4 04             add esp, 4
00406B74: 8D 8E F0 D0 00 00    lea ecx, [esi + 0xd0f0]
00406B7A: 89 9E 3C D1 00 00    mov dword ptr [esi + 0xd13c], ebx
00406B80: 89 9E 40 D1 00 00    mov dword ptr [esi + 0xd140], ebx
00406B86: 89 9E 44 D1 00 00    mov dword ptr [esi + 0xd144], ebx
00406B8C: C6 44 24 18 04       mov byte ptr [esp + 0x18], 4
00406B91: E8 CA 22 02 00       call 0x428e60
00406B96: 8D 8E DC D0 00 00    lea ecx, [esi + 0xd0dc]
00406B9C: C6 44 24 18 03       mov byte ptr [esp + 0x18], 3
00406BA1: E8 BA 3A 01 00       call 0x41a660
00406BA6: 8D 8E D8 9A 00 00    lea ecx, [esi + 0x9ad8]
00406BAC: C6 44 24 18 02       mov byte ptr [esp + 0x18], 2
00406BB1: E8 3A A6 FF FF       call 0x4011f0
00406BB6: 8D 8E B0 00 00 00    lea ecx, [esi + 0xb0]
00406BBC: C6 44 24 18 01       mov byte ptr [esp + 0x18], 1
00406BC1: E8 CA 28 02 00       call 0x429490
00406BC6: 8D 4E 34             lea ecx, [esi + 0x34]
00406BC9: 88 5C 24 18          mov byte ptr [esp + 0x18], bl
00406BCD: E8 2E A8 03 00       call 0x441400
00406BD2: 8D 4E 18             lea ecx, [esi + 0x18]
00406BD5: C7 44 24 18 FF FF FF FF mov dword ptr [esp + 0x18], 0xffffffff
00406BDD: E8 EE 9F 00 00       call 0x410bd0
00406BE2: 8B 4C 24 10          mov ecx, dword ptr [esp + 0x10]
00406BE6: 5E                   pop esi
00406BE7: 5B                   pop ebx
00406BE8: 64 89 0D 00 00 00 00 mov dword ptr fs:[0], ecx
00406BEF: 83 C4 14             add esp, 0x14
00406BF2: C3                   ret 
00406BF3: 90                   nop 
00406BF4: 90                   nop 
00406BF5: 90                   nop 
00406BF6: 90                   nop 
00406BF7: 90                   nop 
00406BF8: 90                   nop 
00406BF9: 90                   nop 
00406BFA: 90                   nop 
00406BFB: 90                   nop 
00406BFC: 90                   nop 
00406BFD: 90                   nop 
00406BFE: 90                   nop 
00406BFF: 90                   nop 
00406C00: 51                   push ecx
00406C01: A1 70 52 4E 00       mov eax, dword ptr [0x4e5270]
00406C06: 56                   push esi
00406C07: 8B 35 6C 52 4E 00    mov esi, dword ptr [0x4e526c]
00406C0D: 57                   push edi
00406C0E: 3B F0                cmp esi, eax
00406C10: 8B F9                mov edi, ecx
00406C12: 74 18                je 0x406c2c
00406C14: 8B 0E                mov ecx, dword ptr [esi]
00406C16: 85 C9                test ecx, ecx
00406C18: 74 0B                je 0x406c25
00406C1A: 8B 01                mov eax, dword ptr [ecx]
00406C1C: 6A 01                push 1
00406C1E: FF 10                call dword ptr [eax]
00406C20: A1 70 52 4E 00       mov eax, dword ptr [0x4e5270]
00406C25: 83 C6 04             add esi, 4
00406C28: 3B F0                cmp esi, eax
00406C2A: 75 E8                jne 0x406c14
00406C2C: 8B 0D 6C 52 4E 00    mov ecx, dword ptr [0x4e526c]
00406C32: 8B D0                mov edx, eax
00406C34: 3B C2                cmp eax, edx
00406C36: 74 13                je 0x406c4b
00406C38: 8B 30                mov esi, dword ptr [eax]
00406C3A: 83 C0 04             add eax, 4
00406C3D: 89 31                mov dword ptr [ecx], esi
00406C3F: 83 C1 04             add ecx, 4
00406C42: 3B C2                cmp eax, edx
00406C44: 75 F2                jne 0x406c38
00406C46: A1 70 52 4E 00       mov eax, dword ptr [0x4e5270]
00406C4B: 8B 35 5C 52 4E 00    mov esi, dword ptr [0x4e525c]
00406C51: 89 44 24 08          mov dword ptr [esp + 8], eax
00406C55: A1 60 52 4E 00       mov eax, dword ptr [0x4e5260]
00406C5A: 89 0D 70 52 4E 00    mov dword ptr [0x4e5270], ecx
00406C60: 3B F0                cmp esi, eax
00406C62: 74 18                je 0x406c7c
00406C64: 8B 0E                mov ecx, dword ptr [esi]
00406C66: 85 C9                test ecx, ecx
00406C68: 74 0B                je 0x406c75
00406C6A: 8B 11                mov edx, dword ptr [ecx]
00406C6C: 6A 01                push 1
00406C6E: FF 12                call dword ptr [edx]
00406C70: A1 60 52 4E 00       mov eax, dword ptr [0x4e5260]
00406C75: 83 C6 04             add esi, 4
00406C78: 3B F0                cmp esi, eax
00406C7A: 75 E8                jne 0x406c64
00406C7C: 8B 0D 5C 52 4E 00    mov ecx, dword ptr [0x4e525c]
00406C82: 8B D0                mov edx, eax
00406C84: 3B C2                cmp eax, edx
00406C86: 74 13                je 0x406c9b
00406C88: 8B 30                mov esi, dword ptr [eax]
00406C8A: 83 C0 04             add eax, 4
00406C8D: 89 31                mov dword ptr [ecx], esi
00406C8F: 83 C1 04             add ecx, 4
00406C92: 3B C2                cmp eax, edx
00406C94: 75 F2                jne 0x406c88
00406C96: A1 60 52 4E 00       mov eax, dword ptr [0x4e5260]
00406C9B: 8D B7 50 D1 00 00    lea esi, [edi + 0xd150]
00406CA1: 89 44 24 08          mov dword ptr [esp + 8], eax
00406CA5: 89 0D 60 52 4E 00    mov dword ptr [0x4e5260], ecx
00406CAB: BF 02 00 00 00       mov edi, 2
00406CB0: 8B 06                mov eax, dword ptr [esi]
00406CB2: 85 C0                test eax, eax
00406CB4: 74 0F                je 0x406cc5
00406CB6: 50                   push eax
00406CB7: E8 6A AD 09 00       call 0x4a1a26
00406CBC: 83 C4 04             add esp, 4
00406CBF: C7 06 00 00 00 00    mov dword ptr [esi], 0
00406CC5: 83 C6 04             add esi, 4
00406CC8: 4F                   dec edi
00406CC9: 75 E5                jne 0x406cb0
00406CCB: 5F                   pop edi
00406CCC: 5E                   pop esi
00406CCD: 59                   pop ecx
00406CCE: C3                   ret 
00406CCF: 90                   nop 
00406CD0: 51                   push ecx
00406CD1: 57                   push edi
00406CD2: 8B F9                mov edi, ecx
00406CD4: 8B 8F 18 D5 00 00    mov ecx, dword ptr [edi + 0xd518]
00406CDA: 85 C9                test ecx, ecx
00406CDC: 74 10                je 0x406cee
00406CDE: 8B 01                mov eax, dword ptr [ecx]
00406CE0: 6A 01                push 1
00406CE2: FF 10                call dword ptr [eax]
00406CE4: C7 87 18 D5 00 00 00 00 00 00 mov dword ptr [edi + 0xd518], 0
00406CEE: 56                   push esi
00406CEF: 8B B7 14 D5 00 00    mov esi, dword ptr [edi + 0xd514]
00406CF5: 85 F6                test esi, esi
00406CF7: 74 1A                je 0x406d13
00406CF9: 8B CE                mov ecx, esi
00406CFB: E8 E0 F3 FF FF       call 0x4060e0
00406D00: 56                   push esi
00406D01: E8 20 AD 09 00       call 0x4a1a26
00406D06: 83 C4 04             add esp, 4
00406D09: C7 87 14 D5 00 00 00 00 00 00 mov dword ptr [edi + 0xd514], 0
00406D13: 8B B7 3C D1 00 00    mov esi, dword ptr [edi + 0xd13c]
00406D19: 8B 87 40 D1 00 00    mov eax, dword ptr [edi + 0xd140]
00406D1F: 3B F0                cmp esi, eax
00406D21: 74 19                je 0x406d3c
00406D23: 8B 0E                mov ecx, dword ptr [esi]
00406D25: 85 C9                test ecx, ecx
00406D27: 74 06                je 0x406d2f
00406D29: 8B 11                mov edx, dword ptr [ecx]
00406D2B: 6A 01                push 1
00406D2D: FF 12                call dword ptr [edx]
00406D2F: 8B 87 40 D1 00 00    mov eax, dword ptr [edi + 0xd140]
00406D35: 83 C6 04             add esi, 4
00406D38: 3B F0                cmp esi, eax
00406D3A: 75 E7                jne 0x406d23
00406D3C: 8B 97 40 D1 00 00    mov edx, dword ptr [edi + 0xd140]
00406D42: 8B 8F 3C D1 00 00    mov ecx, dword ptr [edi + 0xd13c]
00406D48: 8B C2                mov eax, edx
00406D4A: 3B C2                cmp eax, edx
00406D4C: 74 0E                je 0x406d5c
00406D4E: 8B 30                mov esi, dword ptr [eax]
00406D50: 83 C0 04             add eax, 4
00406D53: 89 31                mov dword ptr [ecx], esi
00406D55: 83 C1 04             add ecx, 4
00406D58: 3B C2                cmp eax, edx
00406D5A: 75 F2                jne 0x406d4e
00406D5C: 8B 87 40 D1 00 00    mov eax, dword ptr [edi + 0xd140]
00406D62: 89 8F 40 D1 00 00    mov dword ptr [edi + 0xd140], ecx
00406D68: 8B 35 E4 94 4C 00    mov esi, dword ptr [0x4c94e4]
00406D6E: 89 44 24 08          mov dword ptr [esp + 8], eax
00406D72: A1 E8 94 4C 00       mov eax, dword ptr [0x4c94e8]
00406D77: 3B F0                cmp esi, eax
00406D79: 74 18                je 0x406d93
00406D7B: 8B 0E                mov ecx, dword ptr [esi]
00406D7D: 85 C9                test ecx, ecx
00406D7F: 74 0B                je 0x406d8c
00406D81: 8B 11                mov edx, dword ptr [ecx]
00406D83: 6A 01                push 1
00406D85: FF 12                call dword ptr [edx]
00406D87: A1 E8 94 4C 00       mov eax, dword ptr [0x4c94e8]
00406D8C: 83 C6 04             add esi, 4
00406D8F: 3B F0                cmp esi, eax
00406D91: 75 E8                jne 0x406d7b
00406D93: 8B 0D E4 94 4C 00    mov ecx, dword ptr [0x4c94e4]
00406D99: 8B D0                mov edx, eax
00406D9B: 3B C2                cmp eax, edx
00406D9D: 74 13                je 0x406db2
00406D9F: 8B 30                mov esi, dword ptr [eax]
00406DA1: 83 C0 04             add eax, 4
00406DA4: 89 31                mov dword ptr [ecx], esi
00406DA6: 83 C1 04             add ecx, 4
00406DA9: 3B C2                cmp eax, edx
00406DAB: 75 F2                jne 0x406d9f
00406DAD: A1 E8 94 4C 00       mov eax, dword ptr [0x4c94e8]
00406DB2: 89 0D E8 94 4C 00    mov dword ptr [0x4c94e8], ecx
00406DB8: 8B CF                mov ecx, edi
00406DBA: 89 44 24 08          mov dword ptr [esp + 8], eax
00406DBE: E8 3D FE FF FF       call 0x406c00
00406DC3: B8 70 D0 4C 00       mov eax, 0x4cd070
00406DC8: 5E                   pop esi
00406DC9: 83 38 00             cmp dword ptr [eax], 0
00406DCC: 74 06                je 0x406dd4
00406DCE: C7 00 00 00 00 00    mov dword ptr [eax], 0
00406DD4: 83 C0 04             add eax, 4
00406DD7: 3D 98 D0 4C 00       cmp eax, 0x4cd098
00406DDC: 7C EB                jl 0x406dc9
00406DDE: E8 2D 14 01 00       call 0x418210
00406DE3: E8 68 9E 05 00       call 0x460c50
00406DE8: 8D 8F DC D0 00 00    lea ecx, [edi + 0xd0dc]
00406DEE: E8 9D 3A 01 00       call 0x41a890
00406DF3: 8D 8F B0 00 00 00    lea ecx, [edi + 0xb0]
00406DF9: E8 D2 27 02 00       call 0x4295d0
00406DFE: E8 BD 22 02 00       call 0x4290c0
00406E03: 5F                   pop edi
00406E04: 59                   pop ecx
00406E05: C3                   ret 
00406E06: 90                   nop 
00406E07: 90                   nop 
00406E08: 90                   nop 
00406E09: 90                   nop 
00406E0A: 90                   nop 
00406E0B: 90                   nop 
00406E0C: 90                   nop 
00406E0D: 90                   nop 
00406E0E: 90                   nop 
00406E0F: 90                   nop 
00406E10: 53                   push ebx
00406E11: 56                   push esi
00406E12: 57                   push edi
00406E13: 8B F1                mov esi, ecx
00406E15: E8 16 14 01 00       call 0x418230
00406E1A: 33 DB                xor ebx, ebx
00406E1C: 68 A0 AA 47 00       push 0x47aaa0
00406E21: 53                   push ebx
00406E22: 53                   push ebx
00406E23: 68 A0 0F 00 00       push 0xfa0
00406E28: E8 33 14 01 00       call 0x418260
00406E2D: 68 F0 67 40 00       push 0x4067f0
00406E32: 53                   push ebx
00406E33: 53                   push ebx
00406E34: 68 A5 0F 00 00       push 0xfa5
00406E39: E8 22 14 01 00       call 0x418260
00406E3E: 83 C4 20             add esp, 0x20
00406E41: E8 7A 4A 07 00       call 0x47b8c0
00406E46: C7 05 C0 8F 4E 00 40 7E 4E 00 mov dword ptr [0x4e8fc0], 0x4e7e40
00406E50: E8 EB 78 05 00       call 0x45e740
00406E55: E8 C6 CF 05 00       call 0x463e20
00406E5A: E8 D1 CF 05 00       call 0x463e30
00406E5F: E8 4C 52 07 00       call 0x47c0b0
00406E64: E8 17 FE 04 00       call 0x456c80
00406E69: E8 62 5E 06 00       call 0x46ccd0
00406E6E: 83 C8 FF             or eax, 0xffffffff
00406E71: 8D 8E B0 00 00 00    lea ecx, [esi + 0xb0]
00406E77: A3 4C FF 4E 00       mov dword ptr [0x4eff4c], eax
00406E7C: 66 A3 7C FD 4E 00    mov word ptr [0x4efd7c], ax
00406E82: 8D 86 D8 9A 00 00    lea eax, [esi + 0x9ad8]
00406E88: C6 05 3C 7E 4E 00 01 mov byte ptr [0x4e7e3c], 1
00406E8F: 50                   push eax
00406E90: 88 1D 78 FC 4E 00    mov byte ptr [0x4efc78], bl
00406E96: 88 1D 3D 7E 4E 00    mov byte ptr [0x4e7e3d], bl
00406E9C: 89 1D 88 FC 4E 00    mov dword ptr [0x4efc88], ebx
00406EA2: 88 1D 2C 88 4E 00    mov byte ptr [0x4e882c], bl
00406EA8: 66 C7 05 E2 05 4F 00 4B 00 mov word ptr [0x4f05e2], 0x4b
00406EB1: 89 1D 18 4C 4D 00    mov dword ptr [0x4d4c18], ebx
00406EB7: E8 64 26 02 00       call 0x429520
00406EBC: B9 21 00 00 00       mov ecx, 0x21
00406EC1: 33 C0                xor eax, eax
00406EC3: BF F8 FC 4E 00       mov edi, 0x4efcf8
00406EC8: 89 1D FC 84 4E 00    mov dword ptr [0x4e84fc], ebx
00406ECE: F3 AB                rep stosd dword ptr es:[edi], eax
00406ED0: B9 64 00 00 00       mov ecx, 0x64
00406ED5: BF 80 FD 4E 00       mov edi, 0x4efd80
00406EDA: F3 AB                rep stosd dword ptr es:[edi], eax
00406EDC: 33 C9                xor ecx, ecx
00406EDE: 5F                   pop edi
00406EDF: 89 0D D0 8A 4E 00    mov dword ptr [0x4e8ad0], ecx
00406EE5: 88 1D 5A 06 4F 00    mov byte ptr [0x4f065a], bl
00406EEB: 89 0D D4 8A 4E 00    mov dword ptr [0x4e8ad4], ecx
00406EF1: 89 1D D0 87 4E 00    mov dword ptr [0x4e87d0], ebx
00406EF7: 89 0D D8 8A 4E 00    mov dword ptr [0x4e8ad8], ecx
00406EFD: 89 1D B0 87 4E 00    mov dword ptr [0x4e87b0], ebx
00406F03: 88 1D F0 87 4E 00    mov byte ptr [0x4e87f0], bl
00406F09: 88 1D F1 87 4E 00    mov byte ptr [0x4e87f1], bl
00406F0F: 88 1D EE 87 4E 00    mov byte ptr [0x4e87ee], bl
00406F15: 88 1D EF 87 4E 00    mov byte ptr [0x4e87ef], bl
00406F1B: 88 1D AE 87 4E 00    mov byte ptr [0x4e87ae], bl
00406F21: 88 1D AD 87 4E 00    mov byte ptr [0x4e87ad], bl
00406F27: 88 1D AC 87 4E 00    mov byte ptr [0x4e87ac], bl
00406F2D: 66 89 1D 92 10 4E 00 mov word ptr [0x4e1092], bx
00406F34: 66 89 1D 90 10 4E 00 mov word ptr [0x4e1090], bx
00406F3B: 66 89 1D 8E 10 4E 00 mov word ptr [0x4e108e], bx
00406F42: 66 89 1D 88 10 4E 00 mov word ptr [0x4e1088], bx
00406F49: 66 89 1D 8A 10 4E 00 mov word ptr [0x4e108a], bx
00406F50: 66 89 1D 8C 10 4E 00 mov word ptr [0x4e108c], bx
00406F57: 88 1D A0 8C 4E 00    mov byte ptr [0x4e8ca0], bl
00406F5D: 88 1D A1 8C 4E 00    mov byte ptr [0x4e8ca1], bl
00406F63: 5E                   pop esi
00406F64: 89 0D DC 8A 4E 00    mov dword ptr [0x4e8adc], ecx
00406F6A: 5B                   pop ebx
00406F6B: C3                   ret 
00406F6C: 90                   nop 
00406F6D: 90                   nop 
00406F6E: 90                   nop 
00406F6F: 90                   nop 
00406F70: 81 EC 04 01 00 00    sub esp, 0x104
00406F76: 53                   push ebx
00406F77: 55                   push ebp
00406F78: 8B E9                mov ebp, ecx
00406F7A: 56                   push esi
00406F7B: 57                   push edi
00406F7C: 8B 8D 18 D5 00 00    mov ecx, dword ptr [ebp + 0xd518]
00406F82: 85 C9                test ecx, ecx
00406F84: 74 10                je 0x406f96
00406F86: 8B 01                mov eax, dword ptr [ecx]
00406F88: 6A 01                push 1
00406F8A: FF 10                call dword ptr [eax]
00406F8C: C7 85 18 D5 00 00 00 00 00 00 mov dword ptr [ebp + 0xd518], 0
00406F96: 8B 8D 14 D5 00 00    mov ecx, dword ptr [ebp + 0xd514]
00406F9C: E8 7F F2 FF FF       call 0x406220
00406FA1: 8B 9C 24 1C 01 00 00 mov ebx, dword ptr [esp + 0x11c]
00406FA8: 83 C9 FF             or ecx, 0xffffffff
00406FAB: 8B FB                mov edi, ebx
00406FAD: 33 C0                xor eax, eax
00406FAF: F2 AE                repne scasb al, byte ptr es:[edi]
00406FB1: F7 D1                not ecx
00406FB3: 2B F9                sub edi, ecx
00406FB5: 8D 54 24 10          lea edx, [esp + 0x10]
00406FB9: 8B C1                mov eax, ecx
00406FBB: 8B F7                mov esi, edi
00406FBD: 8B FA                mov edi, edx
00406FBF: 6A 5C                push 0x5c
00406FC1: C1 E9 02             shr ecx, 2
00406FC4: F3 A5                rep movsd dword ptr es:[edi], dword ptr [esi]
00406FC6: 8B C8                mov ecx, eax
00406FC8: 83 E1 03             and ecx, 3
00406FCB: F3 A4                rep movsb byte ptr es:[edi], byte ptr [esi]
00406FCD: 8D 4C 24 14          lea ecx, [esp + 0x14]
00406FD1: 51                   push ecx
00406FD2: FF 15 04 73 4A 00    call dword ptr [0x4a7304]
00406FD8: 83 C4 08             add esp, 8
00406FDB: 8D 54 24 10          lea edx, [esp + 0x10]
00406FDF: C6 00 00             mov byte ptr [eax], 0
00406FE2: 8B 8D 14 D5 00 00    mov ecx, dword ptr [ebp + 0xd514]
00406FE8: 52                   push edx
00406FE9: E8 D2 F1 FF FF       call 0x4061c0
00406FEE: 8B F0                mov esi, eax
00406FF0: 85 F6                test esi, esi
00406FF2: 7D 3D                jge 0x407031
00406FF4: C7 05 F8 94 4C 00 01 00 00 00 mov dword ptr [0x4c94f8], 1
00406FFE: E8 2B AB 09 00       call 0x4a1b2e
00407003: 85 C0                test eax, eax
00407005: 74 09                je 0x407010
00407007: 8B 10                mov edx, dword ptr [eax]
00407009: 8B C8                mov ecx, eax
0040700B: FF 52 7C             call dword ptr [edx + 0x7c]
0040700E: EB 02                jmp 0x407012
00407010: 33 C0                xor eax, eax
00407012: 8B 40 20             mov eax, dword ptr [eax + 0x20]
00407015: 6A 00                push 0
00407017: 6A 00                push 0
00407019: 6A 10                push 0x10
0040701B: 50                   push eax
0040701C: FF 15 74 73 4A 00    call dword ptr [0x4a7374]
00407022: 8B C6                mov eax, esi
00407024: 5F                   pop edi
00407025: 5E                   pop esi
00407026: 5D                   pop ebp
00407027: 5B                   pop ebx
00407028: 81 C4 04 01 00 00    add esp, 0x104
0040702E: C2 08 00             ret 8
00407031: 8B 3D 08 73 4A 00    mov edi, dword ptr [0x4a7308]
00407037: 68 C4 46 4B 00       push 0x4b46c4
0040703C: 53                   push ebx
0040703D: 33 F6                xor esi, esi
0040703F: FF D7                call edi
00407041: 83 C4 08             add esp, 8
00407044: 85 C0                test eax, eax
00407046: 75 0F                jne 0x407057
00407048: 68 BC 46 4B 00       push 0x4b46bc
0040704D: 53                   push ebx
0040704E: FF D7                call edi
00407050: 83 C4 08             add esp, 8
00407053: 85 C0                test eax, eax
00407055: 74 05                je 0x40705c
00407057: BE 01 00 00 00       mov esi, 1
0040705C: 68 B4 46 4B 00       push 0x4b46b4
00407061: 53                   push ebx
00407062: FF D7                call edi
00407064: 8B 8D 14 D5 00 00    mov ecx, dword ptr [ebp + 0xd514]
0040706A: 83 C4 08             add esp, 8
0040706D: 8D 85 18 D5 00 00    lea eax, [ebp + 0xd518]
00407073: 56                   push esi
00407074: 6A 01                push 1
00407076: 53                   push ebx
00407077: 50                   push eax
00407078: E8 B3 F1 FF FF       call 0x406230
0040707D: 33 C9                xor ecx, ecx
0040707F: 5F                   pop edi
00407080: 85 C0                test eax, eax
00407082: 0F 9C C1             setl cl
00407085: 5E                   pop esi
00407086: 5D                   pop ebp
00407087: 8B C1                mov eax, ecx
00407089: 5B                   pop ebx
0040708A: 81 C4 04 01 00 00    add esp, 0x104
00407090: C2 08 00             ret 8
00407093: 90                   nop 
00407094: 90                   nop 
00407095: 90                   nop 
00407096: 90                   nop 
00407097: 90                   nop 
00407098: 90                   nop 
00407099: 90                   nop 
0040709A: 90                   nop 
0040709B: 90                   nop 
0040709C: 90                   nop 
0040709D: 90                   nop 
0040709E: 90                   nop 
0040709F: 90                   nop 
004070A0: 64 A1 00 00 00 00    mov eax, dword ptr fs:[0]
004070A6: 6A FF                push -1
004070A8: 68 33 29 4A 00       push 0x4a2933
004070AD: 50                   push eax
004070AE: A1 F8 94 4C 00       mov eax, dword ptr [0x4c94f8]
004070B3: 64 89 25 00 00 00 00 mov dword ptr fs:[0], esp
004070BA: 83 EC 74             sub esp, 0x74
004070BD: 85 C0                test eax, eax
004070BF: 56                   push esi
004070C0: 8B F1                mov esi, ecx
004070C2: 74 07                je 0x4070cb
004070C4: 33 C0                xor eax, eax
004070C6: E9 AE 02 00 00       jmp 0x407379
004070CB: E8 5E AA 09 00       call 0x4a1b2e
004070D0: 85 C0                test eax, eax
004070D2: 74 09                je 0x4070dd
004070D4: 8B 10                mov edx, dword ptr [eax]
004070D6: 8B C8                mov ecx, eax
004070D8: FF 52 7C             call dword ptr [edx + 0x7c]
004070DB: EB 02                jmp 0x4070df
004070DD: 33 C0                xor eax, eax
004070DF: 8B 40 20             mov eax, dword ptr [eax + 0x20]
004070E2: 6A 05                push 5
004070E4: 50                   push eax
004070E5: FF 15 70 73 4A 00    call dword ptr [0x4a7370]
004070EB: 68 04 47 4B 00       push 0x4b4704
004070F0: 8B CE                mov ecx, esi
004070F2: E8 F9 52 00 00       call 0x40c3f0
004070F7: 8D 86 B0 00 00 00    lea eax, [esi + 0xb0]
004070FD: 8D 8E DC D0 00 00    lea ecx, [esi + 0xd0dc]
00407103: A3 B0 10 4E 00       mov dword ptr [0x4e10b0], eax
00407108: E8 73 36 01 00       call 0x41a780
0040710D: 6A 0C                push 0xc
0040710F: E8 2A A9 09 00       call 0x4a1a3e
00407114: 83 C4 04             add esp, 4
00407117: 89 44 24 04          mov dword ptr [esp + 4], eax
0040711B: 85 C0                test eax, eax
0040711D: C7 84 24 80 00 00 00 00 00 00 00 mov dword ptr [esp + 0x80], 0
00407128: 74 09                je 0x407133
0040712A: 8B C8                mov ecx, eax
0040712C: E8 8F EF FF FF       call 0x4060c0
00407131: EB 02                jmp 0x407135
00407133: 33 C0                xor eax, eax
00407135: C7 84 24 80 00 00 00 FF FF FF FF mov dword ptr [esp + 0x80], 0xffffffff
00407140: 89 86 14 D5 00 00    mov dword ptr [esi + 0xd514], eax
00407146: E8 E3 A9 09 00       call 0x4a1b2e
0040714B: 85 C0                test eax, eax
0040714D: 74 09                je 0x407158
0040714F: 8B 10                mov edx, dword ptr [eax]
00407151: 8B C8                mov ecx, eax
00407153: FF 52 7C             call dword ptr [edx + 0x7c]
00407156: EB 02                jmp 0x40715a
00407158: 33 C0                xor eax, eax
0040715A: 8B 40 20             mov eax, dword ptr [eax + 0x20]
0040715D: 8B 8E 14 D5 00 00    mov ecx, dword ptr [esi + 0xd514]
00407163: 53                   push ebx
00407164: 55                   push ebp
00407165: 57                   push edi
00407166: 6A 08                push 8
00407168: 68 80 00 00 00       push 0x80
0040716D: 50                   push eax
0040716E: E8 CD EF FF FF       call 0x406140
00407173: 8B BC 24 94 00 00 00 mov edi, dword ptr [esp + 0x94]
0040717A: 8D 6E 08             lea ebp, [esi + 8]
0040717D: 89 7E 04             mov dword ptr [esi + 4], edi
00407180: 33 C0                xor eax, eax
00407182: 89 3D 78 4C 4D 00    mov dword ptr [0x4d4c78], edi
00407188: 89 45 00             mov dword ptr [ebp], eax
0040718B: 33 C9                xor ecx, ecx
0040718D: BA 80 02 00 00       mov edx, 0x280
00407192: 89 4D 04             mov dword ptr [ebp + 4], ecx
00407195: BB E0 01 00 00       mov ebx, 0x1e0
0040719A: 89 55 08             mov dword ptr [ebp + 8], edx
0040719D: 89 5D 0C             mov dword ptr [ebp + 0xc], ebx
004071A0: A3 68 4C 4D 00       mov dword ptr [0x4d4c68], eax
004071A5: 89 0D 6C 4C 4D 00    mov dword ptr [0x4d4c6c], ecx
004071AB: 89 15 70 4C 4D 00    mov dword ptr [0x4d4c70], edx
004071B1: 89 1D 74 4C 4D 00    mov dword ptr [0x4d4c74], ebx
004071B7: E8 64 2E 01 00       call 0x41a020
004071BC: 57                   push edi
004071BD: E8 1E 1D 02 00       call 0x428ee0
004071C2: 83 C4 04             add esp, 4
004071C5: FF 15 8C 73 4A 00    call dword ptr [0x4a738c]
004071CB: 8D 4C 24 14          lea ecx, [esp + 0x14]
004071CF: A3 F4 94 4C 00       mov dword ptr [0x4c94f4], eax
004071D4: E8 97 A1 03 00       call 0x441370
004071D9: 8B CE                mov ecx, esi
004071DB: C7 84 24 8C 00 00 00 01 00 00 00 mov dword ptr [esp + 0x8c], 1
004071E6: E8 C5 1F 00 00       call 0x4091b0
004071EB: 8D 8E D8 9A 00 00    lea ecx, [esi + 0x9ad8]
004071F1: 33 DB                xor ebx, ebx
004071F3: 51                   push ecx
004071F4: 8D 8E B0 00 00 00    lea ecx, [esi + 0xb0]
004071FA: 89 9E A4 00 00 00    mov dword ptr [esi + 0xa4], ebx
00407200: E8 1B 23 02 00       call 0x429520
00407205: 8D BE DC D0 00 00    lea edi, [esi + 0xd0dc]
0040720B: 89 3D AC 10 4E 00    mov dword ptr [0x4e10ac], edi
00407211: E8 DA 0F 01 00       call 0x4181f0
00407216: 8B CE                mov ecx, esi
00407218: 89 3D 98 D0 4C 00    mov dword ptr [0x4cd098], edi
0040721E: E8 ED FB FF FF       call 0x406e10
00407223: 68 F0 46 4B 00       push 0x4b46f0
00407228: 8D 8E A4 D1 00 00    lea ecx, [esi + 0xd1a4]
0040722E: E8 1D A2 00 00       call 0x411450
00407233: 68 00 FF 00 FF       push 0xff00ff00
00407238: 53                   push ebx
00407239: 68 DC 46 4B 00       push 0x4b46dc
0040723E: 8D 8E 44 D2 00 00    lea ecx, [esi + 0xd244]
00407244: E8 27 1F 02 00       call 0x429170
00407249: 8B 46 04             mov eax, dword ptr [esi + 4]
0040724C: 89 9E 48 D1 00 00    mov dword ptr [esi + 0xd148], ebx
00407252: 89 9E 4C D1 00 00    mov dword ptr [esi + 0xd14c], ebx
00407258: 89 9E 90 D1 00 00    mov dword ptr [esi + 0xd190], ebx
0040725E: 89 9E 94 D1 00 00    mov dword ptr [esi + 0xd194], ebx
00407264: 8B 10                mov edx, dword ptr [eax]
00407266: 6A 01                push 1
00407268: 68 8D 00 00 00       push 0x8d
0040726D: 50                   push eax
0040726E: FF 92 C8 00 00 00    call dword ptr [edx + 0xc8]
00407274: 8B 46 04             mov eax, dword ptr [esi + 4]
00407277: 53                   push ebx
00407278: 68 91 00 00 00       push 0x91
0040727D: 50                   push eax
0040727E: 8B 08                mov ecx, dword ptr [eax]
00407280: FF 91 C8 00 00 00    call dword ptr [ecx + 0xc8]
00407286: 8B 46 04             mov eax, dword ptr [esi + 4]
00407289: 53                   push ebx
0040728A: 68 92 00 00 00       push 0x92
0040728F: 50                   push eax
00407290: 8B 10                mov edx, dword ptr [eax]
00407292: FF 92 C8 00 00 00    call dword ptr [edx + 0xc8]
00407298: 8B 46 04             mov eax, dword ptr [esi + 4]
0040729B: 8B 08                mov ecx, dword ptr [eax]
0040729D: 53                   push ebx
0040729E: 68 93 00 00 00       push 0x93
004072A3: 50                   push eax
004072A4: FF 91 C8 00 00 00    call dword ptr [ecx + 0xc8]
004072AA: 8B 46 04             mov eax, dword ptr [esi + 4]
004072AD: 53                   push ebx
004072AE: 68 94 00 00 00       push 0x94
004072B3: 50                   push eax
004072B4: 8B 10                mov edx, dword ptr [eax]
004072B6: FF 92 C8 00 00 00    call dword ptr [edx + 0xc8]
004072BC: 68 C8 00 00 00       push 0xc8
004072C1: 8D 4E 18             lea ecx, [esi + 0x18]
004072C4: E8 77 9A 00 00       call 0x410d40
004072C9: 8B 46 04             mov eax, dword ptr [esi + 4]
004072CC: 83 CD FF             or ebp, 0xffffffff
004072CF: 89 AE A8 00 00 00    mov dword ptr [esi + 0xa8], ebp
004072D5: 53                   push ebx
004072D6: 8B 08                mov ecx, dword ptr [eax]
004072D8: 68 98 00 00 00       push 0x98
004072DD: 50                   push eax
004072DE: FF 91 C8 00 00 00    call dword ptr [ecx + 0xc8]
004072E4: B9 06 00 00 00       mov ecx, 6
004072E9: 33 C0                xor eax, eax
004072EB: 8D BE 58 D1 00 00    lea edi, [esi + 0xd158]
004072F1: 6A 01                push 1
004072F3: F3 AB                rep stosd dword ptr es:[edi], eax
004072F5: 8B 46 04             mov eax, dword ptr [esi + 4]
004072F8: 6A 11                push 0x11
004072FA: 53                   push ebx
004072FB: 50                   push eax
004072FC: 8B 10                mov edx, dword ptr [eax]
004072FE: FF 92 FC 00 00 00    call dword ptr [edx + 0xfc]
00407304: 8B 46 04             mov eax, dword ptr [esi + 4]
00407307: 6A 01                push 1
00407309: 6A 10                push 0x10
0040730B: 53                   push ebx
0040730C: 8B 08                mov ecx, dword ptr [eax]
0040730E: 50                   push eax
0040730F: FF 91 FC 00 00 00    call dword ptr [ecx + 0xfc]
00407315: 8B 46 04             mov eax, dword ptr [esi + 4]
00407318: 6A 03                push 3
0040731A: 6A 0D                push 0xd
0040731C: 53                   push ebx
0040731D: 8B 10                mov edx, dword ptr [eax]
0040731F: 50                   push eax
00407320: FF 92 FC 00 00 00    call dword ptr [edx + 0xfc]
00407326: 8B 46 04             mov eax, dword ptr [esi + 4]
00407329: 6A 03                push 3
0040732B: 6A 0E                push 0xe
0040732D: 53                   push ebx
0040732E: 8B 08                mov ecx, dword ptr [eax]
00407330: 50                   push eax
00407331: FF 91 FC 00 00 00    call dword ptr [ecx + 0xfc]
00407337: C7 86 98 00 00 00 80 00 00 00 mov dword ptr [esi + 0x98], 0x80
00407341: 83 C6 34             add esi, 0x34
00407344: 68 CC 46 4B 00       push 0x4b46cc
00407349: 8B CE                mov ecx, esi
0040734B: E8 50 A1 03 00       call 0x4414a0
00407350: 68 00 00 00 40       push 0x40000000
00407355: 68 00 00 80 3F       push 0x3f800000
0040735A: 8B CE                mov ecx, esi
0040735C: E8 EF AC 03 00       call 0x442050
00407361: 8D 4C 24 14          lea ecx, [esp + 0x14]
00407365: 89 AC 24 8C 00 00 00 mov dword ptr [esp + 0x8c], ebp
0040736C: E8 8F A0 03 00       call 0x441400
00407371: 5F                   pop edi
00407372: 5D                   pop ebp
00407373: B8 01 00 00 00       mov eax, 1
00407378: 5B                   pop ebx
00407379: 8B 4C 24 78          mov ecx, dword ptr [esp + 0x78]
0040737D: 5E                   pop esi
0040737E: 64 89 0D 00 00 00 00 mov dword ptr fs:[0], ecx
00407385: 81 C4 80 00 00 00    add esp, 0x80
0040738B: C2 04 00             ret 4
0040738E: 90                   nop 
0040738F: 90                   nop 
00407390: 6A FF                push -1
00407392: 68 48 29 4A 00       push 0x4a2948
00407397: 64 A1 00 00 00 00    mov eax, dword ptr fs:[0]
0040739D: 50                   push eax
0040739E: 64 89 25 00 00 00 00 mov dword ptr fs:[0], esp
004073A5: 83 EC 2C             sub esp, 0x2c
004073A8: 53                   push ebx
004073A9: 55                   push ebp
004073AA: 56                   push esi
004073AB: 57                   push edi
004073AC: 8B F9                mov edi, ecx
004073AE: 8D 4C 24 10          lea ecx, [esp + 0x10]
004073B2: E8 81 A6 09 00       call 0x4a1a38
004073B7: 8B 1D 18 73 4A 00    mov ebx, dword ptr [0x4a7318]
004073BD: 33 ED                xor ebp, ebp
004073BF: 89 6C 24 44          mov dword ptr [esp + 0x44], ebp
004073C3: 81 C7 70 D1 00 00    add edi, 0xd170
004073C9: 55                   push ebp
004073CA: 8D 44 24 14          lea eax, [esp + 0x14]
004073CE: 68 24 47 4B 00       push 0x4b4724
004073D3: 50                   push eax
004073D4: E8 59 A6 09 00       call 0x4a1a32
004073D9: 8B 4C 24 1C          mov ecx, dword ptr [esp + 0x1c]
004073DD: 68 28 24 4B 00       push 0x4b2428
004073E2: 51                   push ecx
004073E3: FF 15 10 73 4A 00    call dword ptr [0x4a7310]
004073E9: 8B F0                mov esi, eax
004073EB: 83 C4 14             add esp, 0x14
004073EE: 33 D2                xor edx, edx
004073F0: 8B CF                mov ecx, edi
004073F2: 85 F6                test esi, esi
004073F4: 0F 95 C2             setne dl
004073F7: 68 1C 47 4B 00       push 0x4b471c
004073FC: 89 57 E8             mov dword ptr [edi - 0x18], edx
004073FF: E8 30 A7 09 00       call 0x4a1b34
00407404: 85 F6                test esi, esi
00407406: 74 5E                je 0x407466
00407408: 56                   push esi
00407409: 6A 01                push 1
0040740B: 8D 44 24 1C          lea eax, [esp + 0x1c]
0040740F: 6A 14                push 0x14
00407411: 50                   push eax
00407412: FF D3                call ebx
00407414: 56                   push esi
00407415: 6A 01                push 1
00407417: 8D 4C 24 40          lea ecx, [esp + 0x40]
0040741B: 6A 14                push 0x14
0040741D: 51                   push ecx
0040741E: FF D3                call ebx
00407420: 56                   push esi
00407421: 6A 01                push 1
00407423: 68 74 01 00 00       push 0x174
00407428: 68 C8 7C 4E 00       push 0x4e7cc8
0040742D: FF D3                call ebx
0040742F: 33 D2                xor edx, edx
00407431: 8A 15 F6 7D 4E 00    mov dl, byte ptr [0x4e7df6]
00407437: C1 E2 04             shl edx, 4
0040743A: 0F BE 82 A7 25 4B 00 movsx eax, byte ptr [edx + 0x4b25a7]
00407441: 8D 54 24 44          lea edx, [esp + 0x44]
00407445: 8B 0C 85 80 24 4B 00 mov ecx, dword ptr [eax*4 + 0x4b2480]
0040744C: 51                   push ecx
0040744D: 52                   push edx
0040744E: 68 14 47 4B 00       push 0x4b4714
00407453: 57                   push edi
00407454: E8 D9 A5 09 00       call 0x4a1a32
00407459: 83 C4 40             add esp, 0x40
0040745C: 56                   push esi
0040745D: FF 15 1C 73 4A 00    call dword ptr [0x4a731c]
00407463: 83 C4 04             add esp, 4
00407466: 45                   inc ebp
00407467: 83 C7 04             add edi, 4
0040746A: 83 FD 06             cmp ebp, 6
0040746D: 0F 8C 56 FF FF FF    jl 0x4073c9
00407473: 8D 4C 24 10          lea ecx, [esp + 0x10]
00407477: C7 44 24 44 FF FF FF FF mov dword ptr [esp + 0x44], 0xffffffff
0040747F: E8 A8 A5 09 00       call 0x4a1a2c
00407484: 8B 4C 24 3C          mov ecx, dword ptr [esp + 0x3c]
00407488: 5F                   pop edi
00407489: 5E                   pop esi
0040748A: 5D                   pop ebp
0040748B: 5B                   pop ebx
0040748C: 64 89 0D 00 00 00 00 mov dword ptr fs:[0], ecx
00407493: 83 C4 38             add esp, 0x38
00407496: C3                   ret 
00407497: 90                   nop 
00407498: 90                   nop 
00407499: 90                   nop 
0040749A: 90                   nop 
0040749B: 90                   nop 
0040749C: 90                   nop 
0040749D: 90                   nop 
0040749E: 90                   nop 
0040749F: 90                   nop 
004074A0: 64 A1 00 00 00 00    mov eax, dword ptr fs:[0]
004074A6: 6A FF                push -1
004074A8: 68 90 29 4A 00       push 0x4a2990
004074AD: 50                   push eax
004074AE: 64 89 25 00 00 00 00 mov dword ptr fs:[0], esp
004074B5: 83 EC 28             sub esp, 0x28
004074B8: 53                   push ebx
004074B9: 55                   push ebp
004074BA: 56                   push esi
004074BB: 8B 35 8C 73 4A 00    mov esi, dword ptr [0x4a738c]
004074C1: 57                   push edi
004074C2: 8B F9                mov edi, ecx
004074C4: FF D6                call esi
004074C6: A3 F4 94 4C 00       mov dword ptr [0x4c94f4], eax
004074CB: FF D6                call esi
004074CD: 8B CF                mov ecx, edi
004074CF: 8B D8                mov ebx, eax
004074D1: E8 1A 0C 00 00       call 0x4080f0
004074D6: 8B 87 90 D1 00 00    mov eax, dword ptr [edi + 0xd190]
004074DC: 33 ED                xor ebp, ebp
004074DE: 2B C5                sub eax, ebp
004074E0: 74 0C                je 0x4074ee
004074E2: 48                   dec eax
004074E3: 75 15                jne 0x4074fa
004074E5: 8B CF                mov ecx, edi
004074E7: E8 64 1B 00 00       call 0x409050
004074EC: EB 0C                jmp 0x4074fa
004074EE: 8B CF                mov ecx, edi
004074F0: E8 9B 0C 00 00       call 0x408190
004074F5: E8 56 12 01 00       call 0x418750
004074FA: 39 2D 50 3F 4F 00    cmp dword ptr [0x4f3f50], ebp
00407500: 74 12                je 0x407514
00407502: 8B 0D A4 3F 4F 00    mov ecx, dword ptr [0x4f3fa4]
00407508: 33 C0                xor eax, eax
0040750A: 3B CD                cmp ecx, ebp
0040750C: 0F 94 C0             sete al
0040750F: A3 A4 3F 4F 00       mov dword ptr [0x4f3fa4], eax
00407514: 8D 4F 18             lea ecx, [edi + 0x18]
00407517: 89 4C 24 18          mov dword ptr [esp + 0x18], ecx
0040751B: E8 50 98 00 00       call 0x410d70
00407520: 85 C0                test eax, eax
00407522: 74 07                je 0x40752b
00407524: 8B CF                mov ecx, edi
00407526: E8 95 16 00 00       call 0x408bc0
0040752B: 8B 87 48 D1 00 00    mov eax, dword ptr [edi + 0xd148]
00407531: 8B 97 4C D1 00 00    mov edx, dword ptr [edi + 0xd14c]
00407537: 40                   inc eax
00407538: 89 87 48 D1 00 00    mov dword ptr [edi + 0xd148], eax
0040753E: 8B 0D F4 94 4C 00    mov ecx, dword ptr [0x4c94f4]
00407544: 2B CA                sub ecx, edx
00407546: 81 F9 E8 03 00 00    cmp ecx, 0x3e8
0040754C: 0F 86 8D 00 00 00    jbe 0x4075df
00407552: 8D 4C 24 10          lea ecx, [esp + 0x10]
00407556: E8 DD A4 09 00       call 0x4a1a38
0040755B: 0F BF 15 26 22 4F 00 movsx edx, word ptr [0x4f2226]
00407562: 0F BF 05 24 22 4F 00 movsx eax, word ptr [0x4f2224]
00407569: 0F BF 0D 4E FD 4E 00 movsx ecx, word ptr [0x4efd4e]
00407570: 52                   push edx
00407571: 50                   push eax
00407572: A1 B0 10 4E 00       mov eax, dword ptr [0x4e10b0]
00407577: 33 D2                xor edx, edx
00407579: 51                   push ecx
0040757A: 8B 0D 80 93 4C 00    mov ecx, dword ptr [0x4c9380]
00407580: 66 8B 90 6A 01 00 00 mov dx, word ptr [eax + 0x16a]
00407587: 8B 87 48 D1 00 00    mov eax, dword ptr [edi + 0xd148]
0040758D: 52                   push edx
0040758E: 8B 51 04             mov edx, dword ptr [ecx + 4]
00407591: 52                   push edx
00407592: 50                   push eax
00407593: 8D 4C 24 28          lea ecx, [esp + 0x28]
00407597: 68 0C 48 4B 00       push 0x4b480c
0040759C: 51                   push ecx
0040759D: 89 6C 24 60          mov dword ptr [esp + 0x60], ebp
004075A1: E8 8C A4 09 00       call 0x4a1a32
004075A6: 8B 54 24 30          mov edx, dword ptr [esp + 0x30]
004075AA: 83 C4 20             add esp, 0x20
004075AD: 8D 8F F0 D0 00 00    lea ecx, [edi + 0xd0f0]
004075B3: 6A FF                push -1
004075B5: 6A 02                push 2
004075B7: 52                   push edx
004075B8: E8 B3 1B 02 00       call 0x429170
004075BD: 89 AF 48 D1 00 00    mov dword ptr [edi + 0xd148], ebp
004075C3: A1 F4 94 4C 00       mov eax, dword ptr [0x4c94f4]
004075C8: 8D 4C 24 10          lea ecx, [esp + 0x10]
004075CC: 89 87 4C D1 00 00    mov dword ptr [edi + 0xd14c], eax
004075D2: C7 44 24 40 FF FF FF FF mov dword ptr [esp + 0x40], 0xffffffff
004075DA: E8 4D A4 09 00       call 0x4a1a2c
004075DF: 8D 4C 24 20          lea ecx, [esp + 0x20]
004075E3: E8 18 94 09 00       call 0x4a0a00
004075E8: 83 EC 0C             sub esp, 0xc
004075EB: BD 01 00 00 00       mov ebp, 1
004075F0: 8B CC                mov ecx, esp
004075F2: 89 64 24 28          mov dword ptr [esp + 0x28], esp
004075F6: 68 EC 8B 4E 00       push 0x4e8bec
004075FB: 89 6C 24 50          mov dword ptr [esp + 0x50], ebp
004075FF: E8 2C 94 09 00       call 0x4a0a30
00407604: 8B 15 80 93 4C 00    mov edx, dword ptr [0x4c9380]
0040760A: 8D 4C 24 38          lea ecx, [esp + 0x38]
0040760E: 51                   push ecx
0040760F: 8D 8A 64 32 00 00    lea ecx, [edx + 0x3264]
00407615: E8 D6 D6 FF FF       call 0x404cf0
0040761A: 50                   push eax
0040761B: 8D 4C 24 24          lea ecx, [esp + 0x24]
0040761F: C6 44 24 44 02       mov byte ptr [esp + 0x44], 2
00407624: E8 07 94 09 00       call 0x4a0a30
00407629: A1 A0 3F 4F 00       mov eax, dword ptr [0x4f3fa0]
0040762E: C6 44 24 40 01       mov byte ptr [esp + 0x40], 1
00407633: 85 C0                test eax, eax
00407635: 74 40                je 0x407677
00407637: A1 FC 94 4C 00       mov eax, dword ptr [0x4c94fc]
0040763C: 85 C0                test eax, eax
0040763E: 75 37                jne 0x407677
00407640: 8B 0D 68 4C 4D 00    mov ecx, dword ptr [0x4d4c68]
00407646: 8B 15 6C 4C 4D 00    mov edx, dword ptr [0x4d4c6c]
0040764C: 83 EC 10             sub esp, 0x10
0040764F: 8B C4                mov eax, esp
00407651: 6A 00                push 0
00407653: 6A 00                push 0
00407655: 89 08                mov dword ptr [eax], ecx
00407657: 8B 0D 70 4C 4D 00    mov ecx, dword ptr [0x4d4c70]
0040765D: 89 50 04             mov dword ptr [eax + 4], edx
00407660: 8B 15 74 4C 4D 00    mov edx, dword ptr [0x4d4c74]
00407666: 89 48 08             mov dword ptr [eax + 8], ecx
00407669: 8D 8F F0 D0 00 00    lea ecx, [edi + 0xd0f0]
0040766F: 89 50 0C             mov dword ptr [eax + 0xc], edx
00407672: E8 69 1B 02 00       call 0x4291e0
00407677: FF D6                call esi
00407679: 2B C3                sub eax, ebx
0040767B: 83 F8 19             cmp eax, 0x19
0040767E: 73 0E                jae 0x40768e
00407680: B9 19 00 00 00       mov ecx, 0x19
00407685: 2B C8                sub ecx, eax
00407687: 51                   push ecx
00407688: FF 15 7C 70 4A 00    call dword ptr [0x4a707c]
0040768E: A1 40 3F 4F 00       mov eax, dword ptr [0x4f3f40]
00407693: 33 F6                xor esi, esi
00407695: 3B C6                cmp eax, esi
00407697: 74 32                je 0x4076cb
00407699: E8 82 89 05 00       call 0x460020
0040769E: 66 85 C0             test ax, ax
004076A1: 75 28                jne 0x4076cb
004076A3: 39 35 FC 94 4C 00    cmp dword ptr [0x4c94fc], esi
004076A9: 75 2C                jne 0x4076d7
004076AB: 39 AF 90 D1 00 00    cmp dword ptr [edi + 0xd190], ebp
004076B1: 0F 85 19 0A 00 00    jne 0x4080d0
004076B7: 89 2D FC 94 4C 00    mov dword ptr [0x4c94fc], ebp
004076BD: 89 35 40 3F 4F 00    mov dword ptr [0x4f3f40], esi
004076C3: 89 35 00 95 4C 00    mov dword ptr [0x4c9500], esi
004076C9: EB 19                jmp 0x4076e4
004076CB: 39 35 FC 94 4C 00    cmp dword ptr [0x4c94fc], esi
004076D1: 0F 84 F9 09 00 00    je 0x4080d0
004076D7: A1 00 95 4C 00       mov eax, dword ptr [0x4c9500]
004076DC: 3B C6                cmp eax, esi
004076DE: 0F 85 40 01 00 00    jne 0x407824
004076E4: 83 EC 10             sub esp, 0x10
004076E7: B8 CD 00 00 00       mov eax, 0xcd
004076EC: 8B DC                mov ebx, esp
004076EE: BA C8 00 00 00       mov edx, 0xc8
004076F3: B9 B3 01 00 00       mov ecx, 0x1b3
004076F8: BE 18 01 00 00       mov esi, 0x118
004076FD: 89 03                mov dword ptr [ebx], eax
004076FF: 89 53 04             mov dword ptr [ebx + 4], edx
00407702: 89 4B 08             mov dword ptr [ebx + 8], ecx
00407705: 89 73 0C             mov dword ptr [ebx + 0xc], esi
00407708: E8 A3 27 01 00       call 0x419eb0
0040770D: 83 C4 10             add esp, 0x10
00407710: 8D B7 F0 D0 00 00    lea esi, [edi + 0xd0f0]
00407716: 8B CE                mov ecx, esi
00407718: 6A FF                push -1
0040771A: 6A 00                push 0
0040771C: 68 F8 47 4B 00       push 0x4b47f8
00407721: E8 4A 1A 02 00       call 0x429170
00407726: A1 68 4C 4D 00       mov eax, dword ptr [0x4d4c68]
0040772B: 8B 0D 6C 4C 4D 00    mov ecx, dword ptr [0x4d4c6c]
00407731: 83 EC 10             sub esp, 0x10
00407734: 8B D4                mov edx, esp
00407736: 68 CD 00 00 00       push 0xcd
0040773B: 68 E5 00 00 00       push 0xe5
00407740: 89 02                mov dword ptr [edx], eax
00407742: A1 70 4C 4D 00       mov eax, dword ptr [0x4d4c70]
00407747: 89 4A 04             mov dword ptr [edx + 4], ecx
0040774A: 8B 0D 74 4C 4D 00    mov ecx, dword ptr [0x4d4c74]
00407750: 89 42 08             mov dword ptr [edx + 8], eax
00407753: 89 4A 0C             mov dword ptr [edx + 0xc], ecx
00407756: 8B CE                mov ecx, esi
00407758: E8 83 1A 02 00       call 0x4291e0
0040775D: 6A FF                push -1
0040775F: 6A 00                push 0
00407761: 68 E4 47 4B 00       push 0x4b47e4
00407766: 8B CE                mov ecx, esi
00407768: E8 03 1A 02 00       call 0x429170
0040776D: A1 68 4C 4D 00       mov eax, dword ptr [0x4d4c68]
00407772: 8B 0D 6C 4C 4D 00    mov ecx, dword ptr [0x4d4c6c]
00407778: 83 EC 10             sub esp, 0x10
0040777B: 8B D4                mov edx, esp
0040777D: 68 E5 00 00 00       push 0xe5
00407782: 68 E5 00 00 00       push 0xe5
00407787: 89 02                mov dword ptr [edx], eax
00407789: A1 70 4C 4D 00       mov eax, dword ptr [0x4d4c70]
0040778E: 89 4A 04             mov dword ptr [edx + 4], ecx
00407791: 8B 0D 74 4C 4D 00    mov ecx, dword ptr [0x4d4c74]
00407797: 89 42 08             mov dword ptr [edx + 8], eax
0040779A: 89 4A 0C             mov dword ptr [edx + 0xc], ecx
0040779D: 8B CE                mov ecx, esi
0040779F: E8 3C 1A 02 00       call 0x4291e0
004077A4: 6A FF                push -1
004077A6: 6A 00                push 0
004077A8: 68 D8 47 4B 00       push 0x4b47d8
004077AD: 8B CE                mov ecx, esi
004077AF: E8 BC 19 02 00       call 0x429170
004077B4: A1 68 4C 4D 00       mov eax, dword ptr [0x4d4c68]
004077B9: 8B 0D 6C 4C 4D 00    mov ecx, dword ptr [0x4d4c6c]
004077BF: 83 EC 10             sub esp, 0x10
004077C2: 8B D4                mov edx, esp
004077C4: 68 FD 00 00 00       push 0xfd
004077C9: 68 F9 00 00 00       push 0xf9
004077CE: 89 02                mov dword ptr [edx], eax
004077D0: A1 70 4C 4D 00       mov eax, dword ptr [0x4d4c70]
004077D5: 89 4A 04             mov dword ptr [edx + 4], ecx
004077D8: 8B 0D 74 4C 4D 00    mov ecx, dword ptr [0x4d4c74]
004077DE: 89 42 08             mov dword ptr [edx + 8], eax
004077E1: 89 4A 0C             mov dword ptr [edx + 0xc], ecx
004077E4: 8B CE                mov ecx, esi
004077E6: E8 F5 19 02 00       call 0x4291e0
004077EB: A1 D8 94 4C 00       mov eax, dword ptr [0x4c94d8]
004077F0: 83 EC 10             sub esp, 0x10
004077F3: 8B DC                mov ebx, esp
004077F5: B9 D1 00 00 00       mov ecx, 0xd1
004077FA: 8D 14 40             lea edx, [eax + eax*2]
004077FD: 89 0B                mov dword ptr [ebx], ecx
004077FF: 8D 04 D5 CC 00 00 00 lea eax, [edx*8 + 0xcc]
00407806: BA AD 01 00 00       mov edx, 0x1ad
0040780B: 89 43 04             mov dword ptr [ebx + 4], eax
0040780E: 8D 70 18             lea esi, [eax + 0x18]
00407811: 89 53 08             mov dword ptr [ebx + 8], edx
00407814: 89 73 0C             mov dword ptr [ebx + 0xc], esi
00407817: E8 64 27 01 00       call 0x419f80
0040781C: A1 00 95 4C 00       mov eax, dword ptr [0x4c9500]
00407821: 83 C4 10             add esp, 0x10
00407824: 3B C5                cmp eax, ebp
00407826: 0F 85 86 01 00 00    jne 0x4079b2
0040782C: 83 EC 10             sub esp, 0x10
0040782F: B8 B8 00 00 00       mov eax, 0xb8
00407834: 8B DC                mov ebx, esp
00407836: BA D2 00 00 00       mov edx, 0xd2
0040783B: B9 C8 01 00 00       mov ecx, 0x1c8
00407840: BE 0E 01 00 00       mov esi, 0x10e
00407845: 89 03                mov dword ptr [ebx], eax
00407847: 89 53 04             mov dword ptr [ebx + 4], edx
0040784A: 89 4B 08             mov dword ptr [ebx + 8], ecx
0040784D: 89 73 0C             mov dword ptr [ebx + 0xc], esi
00407850: E8 5B 26 01 00       call 0x419eb0
00407855: 83 C4 10             add esp, 0x10
00407858: 8D 4C 24 10          lea ecx, [esp + 0x10]
0040785C: E8 D7 A1 09 00       call 0x4a1a38
00407861: A1 D8 94 4C 00       mov eax, dword ptr [0x4c94d8]
00407866: C6 44 24 40 03       mov byte ptr [esp + 0x40], 3
0040786B: 3B C5                cmp eax, ebp
0040786D: 75 0E                jne 0x40787d
0040786F: 68 BC 47 4B 00       push 0x4b47bc
00407874: 8D 4C 24 14          lea ecx, [esp + 0x14]
00407878: E8 B7 A2 09 00       call 0x4a1b34
0040787D: 8B 44 24 10          mov eax, dword ptr [esp + 0x10]
00407881: 8D B7 F0 D0 00 00    lea esi, [edi + 0xd0f0]
00407887: 6A FF                push -1
00407889: 6A 00                push 0
0040788B: 50                   push eax
0040788C: 8B CE                mov ecx, esi
0040788E: E8 DD 18 02 00       call 0x429170
00407893: 8B 15 68 4C 4D 00    mov edx, dword ptr [0x4d4c68]
00407899: A1 6C 4C 4D 00       mov eax, dword ptr [0x4d4c6c]
0040789E: 83 EC 10             sub esp, 0x10
004078A1: 8B CC                mov ecx, esp
004078A3: 68 D7 00 00 00       push 0xd7
004078A8: 68 BC 00 00 00       push 0xbc
004078AD: 89 11                mov dword ptr [ecx], edx
004078AF: 8B 15 70 4C 4D 00    mov edx, dword ptr [0x4d4c70]
004078B5: 89 41 04             mov dword ptr [ecx + 4], eax
004078B8: A1 74 4C 4D 00       mov eax, dword ptr [0x4d4c74]
004078BD: 89 51 08             mov dword ptr [ecx + 8], edx
004078C0: 89 41 0C             mov dword ptr [ecx + 0xc], eax
004078C3: 8B CE                mov ecx, esi
004078C5: E8 16 19 02 00       call 0x4291e0
004078CA: 68 00 FF FF FF       push 0xffffff00
004078CF: 6A 00                push 0
004078D1: 68 B8 47 4B 00       push 0x4b47b8
004078D6: 8B CE                mov ecx, esi
004078D8: E8 93 18 02 00       call 0x429170
004078DD: 8B 15 68 4C 4D 00    mov edx, dword ptr [0x4d4c68]
004078E3: A1 6C 4C 4D 00       mov eax, dword ptr [0x4d4c6c]
004078E8: 83 EC 10             sub esp, 0x10
004078EB: 8B CC                mov ecx, esp
004078ED: 68 EF 00 00 00       push 0xef
004078F2: 68 02 01 00 00       push 0x102
004078F7: 89 11                mov dword ptr [ecx], edx
004078F9: 8B 15 70 4C 4D 00    mov edx, dword ptr [0x4d4c70]
004078FF: 89 41 04             mov dword ptr [ecx + 4], eax
00407902: A1 74 4C 4D 00       mov eax, dword ptr [0x4d4c74]
00407907: 89 51 08             mov dword ptr [ecx + 8], edx
0040790A: 89 41 0C             mov dword ptr [ecx + 0xc], eax
0040790D: 8B CE                mov ecx, esi
0040790F: E8 CC 18 02 00       call 0x4291e0
00407914: 68 00 FF FF FF       push 0xffffff00
00407919: 6A 00                push 0
0040791B: 68 B0 47 4B 00       push 0x4b47b0
00407920: 8B CE                mov ecx, esi
00407922: E8 49 18 02 00       call 0x429170
00407927: 8B 15 68 4C 4D 00    mov edx, dword ptr [0x4d4c68]
0040792D: A1 6C 4C 4D 00       mov eax, dword ptr [0x4d4c6c]
00407932: 83 EC 10             sub esp, 0x10
00407935: 8B CC                mov ecx, esp
00407937: 68 EF 00 00 00       push 0xef
0040793C: 68 52 01 00 00       push 0x152
00407941: 89 11                mov dword ptr [ecx], edx
00407943: 8B 15 70 4C 4D 00    mov edx, dword ptr [0x4d4c70]
00407949: 89 41 04             mov dword ptr [ecx + 4], eax
0040794C: A1 74 4C 4D 00       mov eax, dword ptr [0x4d4c74]
00407951: 89 51 08             mov dword ptr [ecx + 8], edx
00407954: 89 41 0C             mov dword ptr [ecx + 0xc], eax
00407957: 8B CE                mov ecx, esi
00407959: E8 82 18 02 00       call 0x4291e0
0040795E: A1 D4 94 4C 00       mov eax, dword ptr [0x4c94d4]
00407963: 85 C0                test eax, eax
00407965: 74 0C                je 0x407973
00407967: B8 FD 00 00 00       mov eax, 0xfd
0040796C: B9 1B 01 00 00       mov ecx, 0x11b
00407971: EB 0A                jmp 0x40797d
00407973: B8 4D 01 00 00       mov eax, 0x14d
00407978: B9 93 01 00 00       mov ecx, 0x193
0040797D: 83 EC 10             sub esp, 0x10
00407980: BA EE 00 00 00       mov edx, 0xee
00407985: 8B DC                mov ebx, esp
00407987: BE 06 01 00 00       mov esi, 0x106
0040798C: 89 03                mov dword ptr [ebx], eax
0040798E: 89 53 04             mov dword ptr [ebx + 4], edx
00407991: 89 4B 08             mov dword ptr [ebx + 8], ecx
00407994: 89 73 0C             mov dword ptr [ebx + 0xc], esi
00407997: E8 E4 25 01 00       call 0x419f80
0040799C: 83 C4 10             add esp, 0x10
0040799F: 8D 4C 24 10          lea ecx, [esp + 0x10]
004079A3: C6 44 24 40 01       mov byte ptr [esp + 0x40], 1
004079A8: E8 7F A0 09 00       call 0x4a1a2c
004079AD: A1 00 95 4C 00       mov eax, dword ptr [0x4c9500]
004079B2: 83 F8 03             cmp eax, 3
004079B5: 0F 85 9B 01 00 00    jne 0x407b56
004079BB: 8D 4C 24 10          lea ecx, [esp + 0x10]
004079BF: E8 74 A0 09 00       call 0x4a1a38
004079C4: 8B 8F 88 D1 00 00    mov ecx, dword ptr [edi + 0xd188]
004079CA: C6 44 24 40 04       mov byte ptr [esp + 0x40], 4
004079CF: 8B 84 8F 58 D1 00 00 mov eax, dword ptr [edi + ecx*4 + 0xd158]
004079D6: 85 C0                test eax, eax
004079D8: 74 07                je 0x4079e1
004079DA: 68 90 47 4B 00       push 0x4b4790
004079DF: EB 05                jmp 0x4079e6
004079E1: 68 78 47 4B 00       push 0x4b4778
004079E6: 8D 4C 24 14          lea ecx, [esp + 0x14]
004079EA: E8 45 A1 09 00       call 0x4a1b34
004079EF: 83 EC 10             sub esp, 0x10
004079F2: B8 AA 00 00 00       mov eax, 0xaa
004079F7: 8B DC                mov ebx, esp
004079F9: BA D2 00 00 00       mov edx, 0xd2
004079FE: B9 D6 01 00 00       mov ecx, 0x1d6
00407A03: BE 0E 01 00 00       mov esi, 0x10e
00407A08: 89 03                mov dword ptr [ebx], eax
00407A0A: 89 53 04             mov dword ptr [ebx + 4], edx
00407A0D: 89 4B 08             mov dword ptr [ebx + 8], ecx
00407A10: 89 73 0C             mov dword ptr [ebx + 0xc], esi
00407A13: E8 98 24 01 00       call 0x419eb0
00407A18: 8B 54 24 20          mov edx, dword ptr [esp + 0x20]
00407A1C: 83 C4 10             add esp, 0x10
00407A1F: 8D B7 F0 D0 00 00    lea esi, [edi + 0xd0f0]
00407A25: 6A FF                push -1
00407A27: 6A 00                push 0
00407A29: 52                   push edx
00407A2A: 8B CE                mov ecx, esi
00407A2C: E8 3F 17 02 00       call 0x429170
00407A31: 8B 0D 68 4C 4D 00    mov ecx, dword ptr [0x4d4c68]
00407A37: 8B 15 6C 4C 4D 00    mov edx, dword ptr [0x4d4c6c]
00407A3D: 83 EC 10             sub esp, 0x10
00407A40: 8B C4                mov eax, esp
00407A42: 68 D7 00 00 00       push 0xd7
00407A47: 68 AE 00 00 00       push 0xae
00407A4C: 89 08                mov dword ptr [eax], ecx
00407A4E: 8B 0D 70 4C 4D 00    mov ecx, dword ptr [0x4d4c70]
00407A54: 89 50 04             mov dword ptr [eax + 4], edx
00407A57: 8B 15 74 4C 4D 00    mov edx, dword ptr [0x4d4c74]
00407A5D: 89 48 08             mov dword ptr [eax + 8], ecx
00407A60: 8B CE                mov ecx, esi
00407A62: 89 50 0C             mov dword ptr [eax + 0xc], edx
00407A65: E8 76 17 02 00       call 0x4291e0
00407A6A: 68 00 FF FF FF       push 0xffffff00
00407A6F: 6A 00                push 0
00407A71: 68 B8 47 4B 00       push 0x4b47b8
00407A76: 8B CE                mov ecx, esi
00407A78: E8 F3 16 02 00       call 0x429170
00407A7D: 8B 0D 68 4C 4D 00    mov ecx, dword ptr [0x4d4c68]
00407A83: 8B 15 6C 4C 4D 00    mov edx, dword ptr [0x4d4c6c]
00407A89: 83 EC 10             sub esp, 0x10
00407A8C: 8B C4                mov eax, esp
00407A8E: 68 EF 00 00 00       push 0xef
00407A93: 68 F4 00 00 00       push 0xf4
00407A98: 89 08                mov dword ptr [eax], ecx
00407A9A: 8B 0D 70 4C 4D 00    mov ecx, dword ptr [0x4d4c70]
00407AA0: 89 50 04             mov dword ptr [eax + 4], edx
00407AA3: 8B 15 74 4C 4D 00    mov edx, dword ptr [0x4d4c74]
00407AA9: 89 48 08             mov dword ptr [eax + 8], ecx
00407AAC: 8B CE                mov ecx, esi
00407AAE: 89 50 0C             mov dword ptr [eax + 0xc], edx
00407AB1: E8 2A 17 02 00       call 0x4291e0
00407AB6: 68 00 FF FF FF       push 0xffffff00
00407ABB: 6A 00                push 0
00407ABD: 68 B0 47 4B 00       push 0x4b47b0
00407AC2: 8B CE                mov ecx, esi
00407AC4: E8 A7 16 02 00       call 0x429170
00407AC9: 8B 0D 68 4C 4D 00    mov ecx, dword ptr [0x4d4c68]
00407ACF: 8B 15 6C 4C 4D 00    mov edx, dword ptr [0x4d4c6c]
00407AD5: 83 EC 10             sub esp, 0x10
00407AD8: 8B C4                mov eax, esp
00407ADA: 68 EF 00 00 00       push 0xef
00407ADF: 68 44 01 00 00       push 0x144
00407AE4: 89 08                mov dword ptr [eax], ecx
00407AE6: 8B 0D 70 4C 4D 00    mov ecx, dword ptr [0x4d4c70]
00407AEC: 89 50 04             mov dword ptr [eax + 4], edx
00407AEF: 8B 15 74 4C 4D 00    mov edx, dword ptr [0x4d4c74]
00407AF5: 89 48 08             mov dword ptr [eax + 8], ecx
00407AF8: 8B CE                mov ecx, esi
00407AFA: 89 50 0C             mov dword ptr [eax + 0xc], edx
00407AFD: E8 DE 16 02 00       call 0x4291e0
00407B02: A1 D4 94 4C 00       mov eax, dword ptr [0x4c94d4]
00407B07: 85 C0                test eax, eax
00407B09: 74 0C                je 0x407b17
00407B0B: B8 EF 00 00 00       mov eax, 0xef
00407B10: B9 0D 01 00 00       mov ecx, 0x10d
00407B15: EB 0A                jmp 0x407b21
00407B17: B8 3F 01 00 00       mov eax, 0x13f
00407B1C: B9 85 01 00 00       mov ecx, 0x185
00407B21: 83 EC 10             sub esp, 0x10
00407B24: BA EE 00 00 00       mov edx, 0xee
00407B29: 8B DC                mov ebx, esp
00407B2B: BE 06 01 00 00       mov esi, 0x106
00407B30: 89 03                mov dword ptr [ebx], eax
00407B32: 89 53 04             mov dword ptr [ebx + 4], edx
00407B35: 89 4B 08             mov dword ptr [ebx + 8], ecx
00407B38: 89 73 0C             mov dword ptr [ebx + 0xc], esi
00407B3B: E8 40 24 01 00       call 0x419f80
00407B40: 83 C4 10             add esp, 0x10
00407B43: 8D 4C 24 10          lea ecx, [esp + 0x10]
00407B47: C6 44 24 40 01       mov byte ptr [esp + 0x40], 1
00407B4C: E8 DB 9E 09 00       call 0x4a1a2c
00407B51: A1 00 95 4C 00       mov eax, dword ptr [0x4c9500]
00407B56: 83 F8 04             cmp eax, 4
00407B59: 0F 85 7D 01 00 00    jne 0x407cdc
00407B5F: 83 EC 10             sub esp, 0x10
00407B62: B8 A0 00 00 00       mov eax, 0xa0
00407B67: 8B DC                mov ebx, esp
00407B69: BA D2 00 00 00       mov edx, 0xd2
00407B6E: B9 E0 01 00 00       mov ecx, 0x1e0
00407B73: BE 0E 01 00 00       mov esi, 0x10e
00407B78: 89 03                mov dword ptr [ebx], eax
00407B7A: 89 53 04             mov dword ptr [ebx + 4], edx
00407B7D: 89 4B 08             mov dword ptr [ebx + 8], ecx
00407B80: 89 73 0C             mov dword ptr [ebx + 0xc], esi
00407B83: E8 28 23 01 00       call 0x419eb0
00407B88: 83 C4 10             add esp, 0x10
00407B8B: 8D 4C 24 10          lea ecx, [esp + 0x10]
00407B8F: E8 A4 9E 09 00       call 0x4a1a38
00407B94: 68 58 47 4B 00       push 0x4b4758
00407B99: 8D 4C 24 14          lea ecx, [esp + 0x14]
00407B9D: C6 44 24 44 05       mov byte ptr [esp + 0x44], 5
00407BA2: E8 8D 9F 09 00       call 0x4a1b34
00407BA7: 8B 44 24 10          mov eax, dword ptr [esp + 0x10]
00407BAB: 8D B7 F0 D0 00 00    lea esi, [edi + 0xd0f0]
00407BB1: 6A FF                push -1
00407BB3: 6A 00                push 0
00407BB5: 50                   push eax
00407BB6: 8B CE                mov ecx, esi
00407BB8: E8 B3 15 02 00       call 0x429170
00407BBD: 8B 15 68 4C 4D 00    mov edx, dword ptr [0x4d4c68]
00407BC3: A1 6C 4C 4D 00       mov eax, dword ptr [0x4d4c6c]
00407BC8: 83 EC 10             sub esp, 0x10
00407BCB: 8B CC                mov ecx, esp
00407BCD: 68 D7 00 00 00       push 0xd7
00407BD2: 68 A4 00 00 00       push 0xa4
00407BD7: 89 11                mov dword ptr [ecx], edx
00407BD9: 8B 15 70 4C 4D 00    mov edx, dword ptr [0x4d4c70]
00407BDF: 89 41 04             mov dword ptr [ecx + 4], eax
00407BE2: A1 74 4C 4D 00       mov eax, dword ptr [0x4d4c74]
00407BE7: 89 51 08             mov dword ptr [ecx + 8], edx
00407BEA: 89 41 0C             mov dword ptr [ecx + 0xc], eax
00407BED: 8B CE                mov ecx, esi
00407BEF: E8 EC 15 02 00       call 0x4291e0
00407BF4: 68 00 FF FF FF       push 0xffffff00
00407BF9: 6A 00                push 0
00407BFB: 68 B8 47 4B 00       push 0x4b47b8
00407C00: 8B CE                mov ecx, esi
00407C02: E8 69 15 02 00       call 0x429170
00407C07: 8B 15 68 4C 4D 00    mov edx, dword ptr [0x4d4c68]
00407C0D: A1 6C 4C 4D 00       mov eax, dword ptr [0x4d4c6c]
00407C12: 83 EC 10             sub esp, 0x10
00407C15: 8B CC                mov ecx, esp
00407C17: 68 EF 00 00 00       push 0xef
00407C1C: 68 EA 00 00 00       push 0xea
00407C21: 89 11                mov dword ptr [ecx], edx
00407C23: 8B 15 70 4C 4D 00    mov edx, dword ptr [0x4d4c70]
00407C29: 89 41 04             mov dword ptr [ecx + 4], eax
00407C2C: A1 74 4C 4D 00       mov eax, dword ptr [0x4d4c74]
00407C31: 89 51 08             mov dword ptr [ecx + 8], edx
00407C34: 89 41 0C             mov dword ptr [ecx + 0xc], eax
00407C37: 8B CE                mov ecx, esi
00407C39: E8 A2 15 02 00       call 0x4291e0
00407C3E: 68 00 FF FF FF       push 0xffffff00
00407C43: 6A 00                push 0
00407C45: 68 B0 47 4B 00       push 0x4b47b0
00407C4A: 8B CE                mov ecx, esi
00407C4C: E8 1F 15 02 00       call 0x429170
00407C51: 8B 15 68 4C 4D 00    mov edx, dword ptr [0x4d4c68]
00407C57: A1 6C 4C 4D 00       mov eax, dword ptr [0x4d4c6c]
00407C5C: 83 EC 10             sub esp, 0x10
00407C5F: 8B CC                mov ecx, esp
00407C61: 68 EF 00 00 00       push 0xef
00407C66: 68 3A 01 00 00       push 0x13a
00407C6B: 89 11                mov dword ptr [ecx], edx
00407C6D: 8B 15 70 4C 4D 00    mov edx, dword ptr [0x4d4c70]
00407C73: 89 41 04             mov dword ptr [ecx + 4], eax
00407C76: A1 74 4C 4D 00       mov eax, dword ptr [0x4d4c74]
00407C7B: 89 51 08             mov dword ptr [ecx + 8], edx
00407C7E: 89 41 0C             mov dword ptr [ecx + 0xc], eax
00407C81: 8B CE                mov ecx, esi
00407C83: E8 58 15 02 00       call 0x4291e0
00407C88: A1 D4 94 4C 00       mov eax, dword ptr [0x4c94d4]
00407C8D: 85 C0                test eax, eax
00407C8F: 74 0C                je 0x407c9d
00407C91: B8 E5 00 00 00       mov eax, 0xe5
00407C96: B9 0D 01 00 00       mov ecx, 0x10d
00407C9B: EB 0A                jmp 0x407ca7
00407C9D: B8 35 01 00 00       mov eax, 0x135
00407CA2: B9 7B 01 00 00       mov ecx, 0x17b
00407CA7: 83 EC 10             sub esp, 0x10
00407CAA: BA EE 00 00 00       mov edx, 0xee
00407CAF: 8B DC                mov ebx, esp
00407CB1: BE 06 01 00 00       mov esi, 0x106
00407CB6: 89 03                mov dword ptr [ebx], eax
00407CB8: 89 53 04             mov dword ptr [ebx + 4], edx
00407CBB: 89 4B 08             mov dword ptr [ebx + 8], ecx
00407CBE: 89 73 0C             mov dword ptr [ebx + 0xc], esi
00407CC1: E8 BA 22 01 00       call 0x419f80
00407CC6: 83 C4 10             add esp, 0x10
00407CC9: 8D 4C 24 10          lea ecx, [esp + 0x10]
00407CCD: C6 44 24 40 01       mov byte ptr [esp + 0x40], 1
00407CD2: E8 55 9D 09 00       call 0x4a1a2c
00407CD7: A1 00 95 4C 00       mov eax, dword ptr [0x4c9500]
00407CDC: 83 F8 02             cmp eax, 2
00407CDF: 0F 85 3D 02 00 00    jne 0x407f22
00407CE5: 83 EC 10             sub esp, 0x10
00407CE8: B8 4E 00 00 00       mov eax, 0x4e
00407CED: 8B DC                mov ebx, esp
00407CEF: BA A0 00 00 00       mov edx, 0xa0
00407CF4: B9 4A 02 00 00       mov ecx, 0x24a
00407CF9: BE 48 01 00 00       mov esi, 0x148
00407CFE: 89 03                mov dword ptr [ebx], eax
00407D00: 89 53 04             mov dword ptr [ebx + 4], edx
00407D03: 89 4B 08             mov dword ptr [ebx + 8], ecx
00407D06: 89 73 0C             mov dword ptr [ebx + 0xc], esi
00407D09: E8 A2 21 01 00       call 0x419eb0
00407D0E: B8 9C 00 00 00       mov eax, 0x9c
00407D13: BA 6E 00 00 00       mov edx, 0x6e
00407D18: 89 03                mov dword ptr [ebx], eax
00407D1A: B9 D0 01 00 00       mov ecx, 0x1d0
00407D1F: BE 96 00 00 00       mov esi, 0x96
00407D24: 89 53 04             mov dword ptr [ebx + 4], edx
00407D27: 89 4B 08             mov dword ptr [ebx + 8], ecx
00407D2A: 89 73 0C             mov dword ptr [ebx + 0xc], esi
00407D2D: E8 7E 21 01 00       call 0x419eb0
00407D32: 8B 9F 5C D2 00 00    mov ebx, dword ptr [edi + 0xd25c]
00407D38: 83 C4 10             add esp, 0x10
00407D3B: BD A4 00 00 00       mov ebp, 0xa4
00407D40: 8D 8F F4 D3 00 00    lea ecx, [edi + 0xd3f4]
00407D46: 6A FF                push -1
00407D48: 6A 00                push 0
00407D4A: 68 48 47 4B 00       push 0x4b4748
00407D4F: 89 5C 24 28          mov dword ptr [esp + 0x28], ebx
00407D53: 89 6C 24 20          mov dword ptr [esp + 0x20], ebp
00407D57: E8 14 14 02 00       call 0x429170
00407D5C: 33 F6                xor esi, esi
00407D5E: 83 FE 06             cmp esi, 6
00407D61: 7D 17                jge 0x407d7a
00407D63: 8B 8C B7 58 D1 00 00 mov ecx, dword ptr [edi + esi*4 + 0xd158]
00407D6A: F7 D9                neg ecx
00407D6C: 1A C9                sbb cl, cl
00407D6E: 80 E1 7F             and cl, 0x7f
00407D71: 80 C1 80             add cl, 0x80
00407D74: 88 4C 24 10          mov byte ptr [esp + 0x10], cl
00407D78: EB 05                jmp 0x407d7f
00407D7A: C6 44 24 10 FF       mov byte ptr [esp + 0x10], 0xff
00407D7F: 8B 87 9C D1 00 00    mov eax, dword ptr [edi + 0xd19c]
00407D85: 3B F0                cmp esi, eax
00407D87: 8B 44 24 10          mov eax, dword ptr [esp + 0x10]
00407D8B: 75 1D                jne 0x407daa
00407D8D: 8D 14 F6             lea edx, [esi + esi*8]
00407D90: 25 FF 00 00 00       and eax, 0xff
00407D95: 8D 0C D7             lea ecx, [edi + edx*8]
00407D98: 8B D0                mov edx, eax
00407D9A: 81 CA 00 FF FF FF    or edx, 0xffffff00
00407DA0: C1 E2 08             shl edx, 8
00407DA3: 0B D0                or edx, eax
00407DA5: C1 E2 08             shl edx, 8
00407DA8: EB 1D                jmp 0x407dc7
00407DAA: 25 FF 00 00 00       and eax, 0xff
00407DAF: 8D 0C F6             lea ecx, [esi + esi*8]
00407DB2: 8B D0                mov edx, eax
00407DB4: 81 CA 00 FF FF FF    or edx, 0xffffff00
00407DBA: 8D 0C CF             lea ecx, [edi + ecx*8]
00407DBD: C1 E2 08             shl edx, 8
00407DC0: 0B D0                or edx, eax
00407DC2: C1 E2 08             shl edx, 8
00407DC5: 0B D0                or edx, eax
00407DC7: 83 FE 06             cmp esi, 6
00407DCA: 89 91 4C D2 00 00    mov dword ptr [ecx + 0xd24c], edx
00407DD0: 75 0A                jne 0x407ddc
00407DD2: C7 87 FC D3 00 00 00 FF FF FF mov dword ptr [edi + 0xd3fc], 0xffffff00
00407DDC: 8B 15 68 4C 4D 00    mov edx, dword ptr [0x4d4c68]
00407DE2: 83 EC 10             sub esp, 0x10
00407DE5: 8B C4                mov eax, esp
00407DE7: 81 C1 44 D2 00 00    add ecx, 0xd244
00407DED: 55                   push ebp
00407DEE: 6A 5A                push 0x5a
00407DF0: 89 10                mov dword ptr [eax], edx
00407DF2: 8B 15 6C 4C 4D 00    mov edx, dword ptr [0x4d4c6c]
00407DF8: 89 50 04             mov dword ptr [eax + 4], edx
00407DFB: 8B 15 70 4C 4D 00    mov edx, dword ptr [0x4d4c70]
00407E01: 89 50 08             mov dword ptr [eax + 8], edx
00407E04: 8B 15 74 4C 4D 00    mov edx, dword ptr [0x4d4c74]
00407E0A: 89 50 0C             mov dword ptr [eax + 0xc], edx
00407E0D: E8 CE 13 02 00       call 0x4291e0
00407E12: 3B B7 9C D1 00 00    cmp esi, dword ptr [edi + 0xd19c]
00407E18: 75 31                jne 0x407e4b
00407E1A: 8D 45 01             lea eax, [ebp + 1]
00407E1D: 83 EC 10             sub esp, 0x10
00407E20: B9 59 00 00 00       mov ecx, 0x59
00407E25: BA 39 02 00 00       mov edx, 0x239
00407E2A: 8D 6C 18 FF          lea ebp, [eax + ebx - 1]
00407E2E: 8B DC                mov ebx, esp
00407E30: 89 0B                mov dword ptr [ebx], ecx
00407E32: 89 43 04             mov dword ptr [ebx + 4], eax
00407E35: 89 53 08             mov dword ptr [ebx + 8], edx
00407E38: 89 6B 0C             mov dword ptr [ebx + 0xc], ebp
00407E3B: E8 40 21 01 00       call 0x419f80
00407E40: 8B 5C 24 2C          mov ebx, dword ptr [esp + 0x2c]
00407E44: 8B 6C 24 24          mov ebp, dword ptr [esp + 0x24]
00407E48: 83 C4 10             add esp, 0x10
00407E4B: 03 EB                add ebp, ebx
00407E4D: 46                   inc esi
00407E4E: 83 FE 07             cmp esi, 7
00407E51: 89 6C 24 14          mov dword ptr [esp + 0x14], ebp
00407E55: 0F 8C 03 FF FF FF    jl 0x407d5e
00407E5B: 8D B7 3C D4 00 00    lea esi, [edi + 0xd43c]
00407E61: 6A FF                push -1
00407E63: 6A 00                push 0
00407E65: 68 30 47 4B 00       push 0x4b4730
00407E6A: 8B CE                mov ecx, esi
00407E6C: E8 FF 12 02 00       call 0x429170
00407E71: 8B 0D 68 4C 4D 00    mov ecx, dword ptr [0x4d4c68]
00407E77: 8B 15 6C 4C 4D 00    mov edx, dword ptr [0x4d4c6c]
00407E7D: 83 EC 10             sub esp, 0x10
00407E80: 8B C4                mov eax, esp
00407E82: 6A 74                push 0x74
00407E84: 68 B4 00 00 00       push 0xb4
00407E89: 89 08                mov dword ptr [eax], ecx
00407E8B: 8B 0D 70 4C 4D 00    mov ecx, dword ptr [0x4d4c70]
00407E91: 89 50 04             mov dword ptr [eax + 4], edx
00407E94: 8B 15 74 4C 4D 00    mov edx, dword ptr [0x4d4c74]
00407E9A: 89 48 08             mov dword ptr [eax + 8], ecx
00407E9D: 8B CE                mov ecx, esi
00407E9F: 89 50 0C             mov dword ptr [eax + 0xc], edx
00407EA2: E8 39 13 02 00       call 0x4291e0
00407EA7: 6A 07                push 7
00407EA9: 8B CF                mov ecx, edi
00407EAB: E8 D0 03 00 00       call 0x408280
00407EB0: A1 30 3F 4F 00       mov eax, dword ptr [0x4f3f30]
00407EB5: 85 C0                test eax, eax
00407EB7: 74 43                je 0x407efc
00407EB9: 8B 87 9C D1 00 00    mov eax, dword ptr [edi + 0xd19c]
00407EBF: 85 C0                test eax, eax
00407EC1: 7C 25                jl 0x407ee8
00407EC3: 83 F8 05             cmp eax, 5
00407EC6: 7F 20                jg 0x407ee8
00407EC8: 89 87 88 D1 00 00    mov dword ptr [edi + 0xd188], eax
00407ECE: B8 03 00 00 00       mov eax, 3
00407ED3: 33 D2                xor edx, edx
00407ED5: A3 00 95 4C 00       mov dword ptr [0x4c9500], eax
00407EDA: 89 15 D4 94 4C 00    mov dword ptr [0x4c94d4], edx
00407EE0: 89 15 30 3F 4F 00    mov dword ptr [0x4f3f30], edx
00407EE6: EB 1F                jmp 0x407f07
00407EE8: 8B 15 D4 94 4C 00    mov edx, dword ptr [0x4c94d4]
00407EEE: 33 C0                xor eax, eax
00407EF0: A3 00 95 4C 00       mov dword ptr [0x4c9500], eax
00407EF5: A3 30 3F 4F 00       mov dword ptr [0x4f3f30], eax
00407EFA: EB 0B                jmp 0x407f07
00407EFC: A1 00 95 4C 00       mov eax, dword ptr [0x4c9500]
00407F01: 8B 15 D4 94 4C 00    mov edx, dword ptr [0x4c94d4]
00407F07: 8B 0D 34 3F 4F 00    mov ecx, dword ptr [0x4f3f34]
00407F0D: 85 C9                test ecx, ecx
00407F0F: 74 1D                je 0x407f2e
00407F11: 33 C0                xor eax, eax
00407F13: 33 C9                xor ecx, ecx
00407F15: A3 00 95 4C 00       mov dword ptr [0x4c9500], eax
00407F1A: 89 0D 34 3F 4F 00    mov dword ptr [0x4f3f34], ecx
00407F20: EB 10                jmp 0x407f32
00407F22: 8B 0D 34 3F 4F 00    mov ecx, dword ptr [0x4f3f34]
00407F28: 8B 15 D4 94 4C 00    mov edx, dword ptr [0x4c94d4]
00407F2E: 85 C0                test eax, eax
00407F30: 75 1A                jne 0x407f4c
00407F32: 8B 35 40 3F 4F 00    mov esi, dword ptr [0x4f3f40]
00407F38: 85 F6                test esi, esi
00407F3A: 75 04                jne 0x407f40
00407F3C: 85 C9                test ecx, ecx
00407F3E: 74 26                je 0x407f66
00407F40: C7 05 FC 94 4C 00 00 00 00 00 mov dword ptr [0x4c94fc], 0
00407F4A: EB 1A                jmp 0x407f66
00407F4C: 83 F8 01             cmp eax, 1
00407F4F: 75 5C                jne 0x407fad
00407F51: 8B 35 40 3F 4F 00    mov esi, dword ptr [0x4f3f40]
00407F57: 85 F6                test esi, esi
00407F59: 75 04                jne 0x407f5f
00407F5B: 85 C9                test ecx, ecx
00407F5D: 74 58                je 0x407fb7
00407F5F: 33 C0                xor eax, eax
00407F61: A3 00 95 4C 00       mov dword ptr [0x4c9500], eax
00407F66: 8B 0D 28 3F 4F 00    mov ecx, dword ptr [0x4f3f28]
00407F6C: 85 C9                test ecx, ecx
00407F6E: 74 06                je 0x407f76
00407F70: FF 0D D8 94 4C 00    dec dword ptr [0x4c94d8]
00407F76: 8B 0D 2C 3F 4F 00    mov ecx, dword ptr [0x4f3f2c]
00407F7C: 85 C9                test ecx, ecx
00407F7E: 74 06                je 0x407f86
00407F80: FF 05 D8 94 4C 00    inc dword ptr [0x4c94d8]
00407F86: 8B 0D D8 94 4C 00    mov ecx, dword ptr [0x4c94d8]
00407F8C: 85 C9                test ecx, ecx
00407F8E: 7D 0C                jge 0x407f9c
00407F90: C7 05 D8 94 4C 00 00 00 00 00 mov dword ptr [0x4c94d8], 0
00407F9A: EB 42                jmp 0x407fde
00407F9C: 83 F9 02             cmp ecx, 2
00407F9F: 7E 3D                jle 0x407fde
00407FA1: C7 05 D8 94 4C 00 02 00 00 00 mov dword ptr [0x4c94d8], 2
00407FAB: EB 31                jmp 0x407fde
00407FAD: 83 F8 03             cmp eax, 3
00407FB0: 74 05                je 0x407fb7
00407FB2: 83 F8 04             cmp eax, 4
00407FB5: 75 27                jne 0x407fde
00407FB7: 8B 0D 20 3F 4F 00    mov ecx, dword ptr [0x4f3f20]
00407FBD: 85 C9                test ecx, ecx
00407FBF: 74 0B                je 0x407fcc
00407FC1: BA 01 00 00 00       mov edx, 1
00407FC6: 89 15 D4 94 4C 00    mov dword ptr [0x4c94d4], edx
00407FCC: 8B 0D 24 3F 4F 00    mov ecx, dword ptr [0x4f3f24]
00407FD2: 85 C9                test ecx, ecx
00407FD4: 74 08                je 0x407fde
00407FD6: 33 D2                xor edx, edx
00407FD8: 89 15 D4 94 4C 00    mov dword ptr [0x4c94d4], edx
00407FDE: 8B 0D 30 3F 4F 00    mov ecx, dword ptr [0x4f3f30]
00407FE4: 33 F6                xor esi, esi
00407FE6: 3B CE                cmp ecx, esi
00407FE8: 0F 84 E2 00 00 00    je 0x4080d0
00407FEE: 3B D6                cmp edx, esi
00407FF0: 75 1E                jne 0x408010
00407FF2: 83 F8 01             cmp eax, 1
00407FF5: 75 19                jne 0x408010
00407FF7: 89 35 00 95 4C 00    mov dword ptr [0x4c9500], esi
00407FFD: 8B 4C 24 38          mov ecx, dword ptr [esp + 0x38]
00408001: 64 89 0D 00 00 00 00 mov dword ptr fs:[0], ecx
00408008: 5F                   pop edi
00408009: 5E                   pop esi
0040800A: 5D                   pop ebp
0040800B: 5B                   pop ebx
0040800C: 83 C4 34             add esp, 0x34
0040800F: C3                   ret 
00408010: 8B 0D D8 94 4C 00    mov ecx, dword ptr [0x4c94d8]
00408016: 2B CE                sub ecx, esi
00408018: 74 63                je 0x40807d
0040801A: 49                   dec ecx
0040801B: 74 20                je 0x40803d
0040801D: 49                   dec ecx
0040801E: 0F 85 AC 00 00 00    jne 0x4080d0
00408024: 89 35 FC 94 4C 00    mov dword ptr [0x4c94fc], esi
0040802A: 8B 4C 24 38          mov ecx, dword ptr [esp + 0x38]
0040802E: 64 89 0D 00 00 00 00 mov dword ptr fs:[0], ecx
00408035: 5F                   pop edi
00408036: 5E                   pop esi
00408037: 5D                   pop ebp
00408038: 5B                   pop ebx
00408039: 83 C4 34             add esp, 0x34
0040803C: C3                   ret 
0040803D: 83 F8 01             cmp eax, 1
00408040: 75 2F                jne 0x408071
00408042: 3B D6                cmp edx, esi
00408044: 74 2B                je 0x408071
00408046: 8B 4C 24 18          mov ecx, dword ptr [esp + 0x18]
0040804A: 68 E8 03 00 00       push 0x3e8
0040804F: C7 87 A8 00 00 00 04 00 00 00 mov dword ptr [edi + 0xa8], 4
00408059: E8 B2 8C 00 00       call 0x410d10
0040805E: 8B 4C 24 38          mov ecx, dword ptr [esp + 0x38]
00408062: 64 89 0D 00 00 00 00 mov dword ptr fs:[0], ecx
00408069: 5F                   pop edi
0040806A: 5E                   pop esi
0040806B: 5D                   pop ebp
0040806C: 5B                   pop ebx
0040806D: 83 C4 34             add esp, 0x34
00408070: C3                   ret 
00408071: C7 05 00 95 4C 00 01 00 00 00 mov dword ptr [0x4c9500], 1
0040807B: EB 4D                jmp 0x4080ca
0040807D: 83 F8 03             cmp eax, 3
00408080: 75 1F                jne 0x4080a1
00408082: 3B D6                cmp edx, esi
00408084: 74 2A                je 0x4080b0
00408086: 8B 87 88 D1 00 00    mov eax, dword ptr [edi + 0xd188]
0040808C: 50                   push eax
0040808D: E8 3E C8 05 00       call 0x4648d0
00408092: 83 C4 04             add esp, 4
00408095: C7 05 00 95 4C 00 04 00 00 00 mov dword ptr [0x4c9500], 4
0040809F: EB 29                jmp 0x4080ca
004080A1: 83 F8 04             cmp eax, 4
004080A4: 75 0A                jne 0x4080b0
004080A6: 3B D6                cmp edx, esi
004080A8: 0F 84 76 FF FF FF    je 0x408024
004080AE: EB 96                jmp 0x408046
004080B0: 8B CF                mov ecx, edi
004080B2: E8 D9 F2 FF FF       call 0x407390
004080B7: 6A 01                push 1
004080B9: 8B CF                mov ecx, edi
004080BB: E8 10 66 00 00       call 0x40e6d0
004080C0: C7 05 00 95 4C 00 02 00 00 00 mov dword ptr [0x4c9500], 2
004080CA: 89 35 D4 94 4C 00    mov dword ptr [0x4c94d4], esi
004080D0: 8B 4C 24 38          mov ecx, dword ptr [esp + 0x38]
004080D4: 5F                   pop edi
004080D5: 5E                   pop esi
004080D6: 5D                   pop ebp
004080D7: 64 89 0D 00 00 00 00 mov dword ptr fs:[0], ecx
004080DE: 5B                   pop ebx
004080DF: 83 C4 34             add esp, 0x34
004080E2: C3                   ret 
004080E3: 90                   nop 
004080E4: 90                   nop 
004080E5: 90                   nop 
004080E6: 90                   nop 
004080E7: 90                   nop 
004080E8: 90                   nop 
004080E9: 90                   nop 
004080EA: 90                   nop 
004080EB: 90                   nop 
004080EC: 90                   nop 
004080ED: 90                   nop 
004080EE: 90                   nop 
004080EF: 90                   nop 
004080F0: 53                   push ebx
004080F1: 8B 1D 68 73 4A 00    mov ebx, dword ptr [0x4a7368]
004080F7: 55                   push ebp
004080F8: 56                   push esi
004080F9: 8B E9                mov ebp, ecx
004080FB: 57                   push edi
004080FC: B9 FF 00 00 00       mov ecx, 0xff
00408101: BE 04 95 4C 00       mov esi, 0x4c9504
00408106: BF 00 99 4C 00       mov edi, 0x4c9900
0040810B: F3 A5                rep movsd dword ptr es:[edi], dword ptr [esi]
0040810D: 33 FF                xor edi, edi
0040810F: BE 04 95 4C 00       mov esi, 0x4c9504
00408114: 57                   push edi
00408115: FF D3                call ebx
00408117: 0F BF C0             movsx eax, ax
0040811A: 89 06                mov dword ptr [esi], eax
0040811C: 83 C6 04             add esi, 4
0040811F: 47                   inc edi
00408120: 81 FE 00 99 4C 00    cmp esi, 0x4c9900
00408126: 7C EC                jl 0x408114
00408128: B9 0E 00 00 00       mov ecx, 0xe
0040812D: 33 C0                xor eax, eax
0040812F: BF 54 3F 4F 00       mov edi, 0x4f3f54
00408134: F3 AB                rep stosd dword ptr es:[edi], eax
00408136: 8B 85 A4 00 00 00    mov eax, dword ptr [ebp + 0xa4]
0040813C: 85 C0                test eax, eax
0040813E: 75 47                jne 0x408187
00408140: E8 E9 99 09 00       call 0x4a1b2e
00408145: 85 C0                test eax, eax
00408147: 74 0B                je 0x408154
00408149: 8B 10                mov edx, dword ptr [eax]
0040814B: 8B C8                mov ecx, eax
0040814D: FF 52 7C             call dword ptr [edx + 0x7c]
00408150: 8B F0                mov esi, eax
00408152: EB 02                jmp 0x408156
00408154: 33 F6                xor esi, esi
00408156: FF 15 6C 73 4A 00    call dword ptr [0x4a736c]
0040815C: 3B 46 20             cmp eax, dword ptr [esi + 0x20]
0040815F: 75 26                jne 0x408187
00408161: 33 C0                xor eax, eax
00408163: B9 01 00 00 00       mov ecx, 1
00408168: 8B 90 C4 74 4A 00    mov edx, dword ptr [eax + 0x4a74c4]
0040816E: 8B 34 95 04 95 4C 00 mov esi, dword ptr [edx*4 + 0x4c9504]
00408175: 85 F6                test esi, esi
00408177: 7D 06                jge 0x40817f
00408179: 89 88 54 3F 4F 00    mov dword ptr [eax + 0x4f3f54], ecx
0040817F: 83 C0 04             add eax, 4
00408182: 83 F8 38             cmp eax, 0x38
00408185: 7C E1                jl 0x408168
00408187: 5F                   pop edi
00408188: 5E                   pop esi
00408189: 5D                   pop ebp
0040818A: 5B                   pop ebx
0040818B: C3                   ret 
0040818C: 90                   nop 
0040818D: 90                   nop 
0040818E: 90                   nop 
0040818F: 90                   nop 
00408190: 8B 81 94 D1 00 00    mov eax, dword ptr [ecx + 0xd194]
00408196: 83 E8 00             sub eax, 0
00408199: 74 08                je 0x4081a3
0040819B: 48                   dec eax
0040819C: 75 0A                jne 0x4081a8
0040819E: E9 7D 01 00 00       jmp 0x408320
004081A3: E9 08 00 00 00       jmp 0x4081b0
004081A8: C3                   ret 
004081A9: 90                   nop 
004081AA: 90                   nop 
004081AB: 90                   nop 
004081AC: 90                   nop 
004081AD: 90                   nop 
004081AE: 90                   nop 
004081AF: 90                   nop 
004081B0: 56                   push esi
004081B1: 8B F1                mov esi, ecx
004081B3: 68 00 02 00 00       push 0x200
004081B8: 68 80 02 00 00       push 0x280
004081BD: 6A 00                push 0
004081BF: 6A 00                push 0
004081C1: 8D 8E A4 D1 00 00    lea ecx, [esi + 0xd1a4]
004081C7: E8 B4 A6 00 00       call 0x412880
004081CC: A1 F4 94 4C 00       mov eax, dword ptr [0x4c94f4]
004081D1: 8B 0D FC 9C 4C 00    mov ecx, dword ptr [0x4c9cfc]
004081D7: 8B D0                mov edx, eax
004081D9: 2B D1                sub edx, ecx
004081DB: 81 FA E8 03 00 00    cmp edx, 0x3e8
004081E1: 76 08                jbe 0x4081eb
004081E3: 8B C8                mov ecx, eax
004081E5: 89 0D FC 9C 4C 00    mov dword ptr [0x4c9cfc], ecx
004081EB: 2B C1                sub eax, ecx
004081ED: 3D 58 02 00 00       cmp eax, 0x258
004081F2: 73 4E                jae 0x408242
004081F4: 8B 0D 68 4C 4D 00    mov ecx, dword ptr [0x4d4c68]
004081FA: 8B 15 6C 4C 4D 00    mov edx, dword ptr [0x4d4c6c]
00408200: 83 EC 10             sub esp, 0x10
00408203: 8B C4                mov eax, esp
00408205: 68 58 01 00 00       push 0x158
0040820A: 89 08                mov dword ptr [eax], ecx
0040820C: 8B 0D 70 4C 4D 00    mov ecx, dword ptr [0x4d4c70]
00408212: 89 50 04             mov dword ptr [eax + 4], edx
00408215: 8B 15 74 4C 4D 00    mov edx, dword ptr [0x4d4c74]
0040821B: 89 48 08             mov dword ptr [eax + 8], ecx
0040821E: 8B 8E 58 D2 00 00    mov ecx, dword ptr [esi + 0xd258]
00408224: 89 50 0C             mov dword ptr [eax + 0xc], edx
00408227: 8B 46 10             mov eax, dword ptr [esi + 0x10]
0040822A: 8B 56 08             mov edx, dword ptr [esi + 8]
0040822D: 2B C1                sub eax, ecx
0040822F: 2B C2                sub eax, edx
00408231: 8D 8E 44 D2 00 00    lea ecx, [esi + 0xd244]
00408237: 99                   cdq 
00408238: 2B C2                sub eax, edx
0040823A: D1 F8                sar eax, 1
0040823C: 50                   push eax
0040823D: E8 9E 0F 02 00       call 0x4291e0
00408242: A1 1C 3F 4F 00       mov eax, dword ptr [0x4f3f1c]
00408247: 85 C0                test eax, eax
00408249: 74 30                je 0x40827b
0040824B: 68 C8 00 00 00       push 0xc8
00408250: 8D 4E 18             lea ecx, [esi + 0x18]
00408253: C7 86 A4 00 00 00 01 00 00 00 mov dword ptr [esi + 0xa4], 1
0040825D: E8 AE 8A 00 00       call 0x410d10
00408262: 6A 04                push 4
00408264: 6A 00                push 0
00408266: 8D 8E DC D0 00 00    lea ecx, [esi + 0xd0dc]
0040826C: C7 86 A8 00 00 00 00 00 00 00 mov dword ptr [esi + 0xa8], 0
00408276: E8 25 28 01 00       call 0x41aaa0
0040827B: 5E                   pop esi
0040827C: C3                   ret 
0040827D: 90                   nop 
0040827E: 90                   nop 
0040827F: 90                   nop 
00408280: A1 2C 3F 4F 00       mov eax, dword ptr [0x4f3f2c]
00408285: 85 C0                test eax, eax
00408287: 74 06                je 0x40828f
00408289: FF 81 9C D1 00 00    inc dword ptr [ecx + 0xd19c]
0040828F: A1 28 3F 4F 00       mov eax, dword ptr [0x4f3f28]
00408294: 85 C0                test eax, eax
00408296: 74 06                je 0x40829e
00408298: FF 89 9C D1 00 00    dec dword ptr [ecx + 0xd19c]
0040829E: 8B 81 9C D1 00 00    mov eax, dword ptr [ecx + 0xd19c]
004082A4: 85 C0                test eax, eax
004082A6: 7D 0A                jge 0x4082b2
004082A8: C7 81 9C D1 00 00 00 00 00 00 mov dword ptr [ecx + 0xd19c], 0
004082B2: 8B 44 24 04          mov eax, dword ptr [esp + 4]
004082B6: 8B 91 9C D1 00 00    mov edx, dword ptr [ecx + 0xd19c]
004082BC: 48                   dec eax
004082BD: 3B D0                cmp edx, eax
004082BF: 7E 06                jle 0x4082c7
004082C1: 89 81 9C D1 00 00    mov dword ptr [ecx + 0xd19c], eax
004082C7: A1 2C 3F 4F 00       mov eax, dword ptr [0x4f3f2c]
004082CC: 85 C0                test eax, eax
004082CE: 75 09                jne 0x4082d9
004082D0: A1 28 3F 4F 00       mov eax, dword ptr [0x4f3f28]
004082D5: 85 C0                test eax, eax
004082D7: 74 0F                je 0x4082e8
004082D9: 6A 02                push 2
004082DB: 6A 00                push 0
004082DD: 81 C1 DC D0 00 00    add ecx, 0xd0dc
004082E3: E8 B8 27 01 00       call 0x41aaa0
004082E8: C2 04 00             ret 4
004082EB: 90                   nop 
004082EC: 90                   nop 
004082ED: 90                   nop 
004082EE: 90                   nop 
004082EF: 90                   nop 
004082F0: A1 34 3F 4F 00       mov eax, dword ptr [0x4f3f34]
004082F5: 56                   push esi
004082F6: 85 C0                test eax, eax
004082F8: 8B F1                mov esi, ecx
004082FA: 74 19                je 0x408315
004082FC: 8B 44 24 08          mov eax, dword ptr [esp + 8]
00408300: 50                   push eax
00408301: E8 CA 63 00 00       call 0x40e6d0
00408306: 6A 02                push 2
00408308: 6A 00                push 0
0040830A: 8D 8E DC D0 00 00    lea ecx, [esi + 0xd0dc]
00408310: E8 8B 27 01 00       call 0x41aaa0
00408315: 5E                   pop esi
00408316: C2 04 00             ret 4
00408319: 90                   nop 
0040831A: 90                   nop 
0040831B: 90                   nop 
0040831C: 90                   nop 
0040831D: 90                   nop 
0040831E: 90                   nop 
0040831F: 90                   nop 
00408320: 56                   push esi
00408321: 8B F1                mov esi, ecx
00408323: 68 E0 01 00 00       push 0x1e0
00408328: 68 80 02 00 00       push 0x280
0040832D: 6A 00                push 0
0040832F: 6A 00                push 0
00408331: 8D 8E A4 D1 00 00    lea ecx, [esi + 0xd1a4]
00408337: E8 44 A5 00 00       call 0x412880
0040833C: 8B 46 04             mov eax, dword ptr [esi + 4]
0040833F: 6A 00                push 0
00408341: 6A 00                push 0
00408343: 50                   push eax
00408344: 8B 08                mov ecx, dword ptr [eax]
00408346: FF 91 F4 00 00 00    call dword ptr [ecx + 0xf4]
0040834C: 8B 86 98 D1 00 00    mov eax, dword ptr [esi + 0xd198]
00408352: 83 F8 03             cmp eax, 3
00408355: 77 29                ja 0x408380
00408357: FF 24 85 84 83 40 00 jmp dword ptr [eax*4 + 0x408384]
0040835E: 8B CE                mov ecx, esi
00408360: E8 3B 00 00 00       call 0x4083a0
00408365: 5E                   pop esi
00408366: C3                   ret 
00408367: 8B CE                mov ecx, esi
00408369: E8 92 01 00 00       call 0x408500
0040836E: 5E                   pop esi
0040836F: C3                   ret 
00408370: 8B CE                mov ecx, esi
00408372: E8 89 03 00 00       call 0x408700
00408377: 5E                   pop esi
00408378: C3                   ret 
00408379: 8B CE                mov ecx, esi
0040837B: E8 80 05 00 00       call 0x408900
00408380: 5E                   pop esi
00408381: C3                   ret 
00408382: 8B FF                mov edi, edi
00408384: 5E                   pop esi
00408385: 83 40 00 67          add dword ptr [eax], 0x67
00408389: 83 40 00 70          add dword ptr [eax], 0x70
0040838D: 83 40 00 79          add dword ptr [eax], 0x79
00408391: 83 40 00 90          add dword ptr [eax], -0x70
00408395: 90                   nop 
00408396: 90                   nop 
00408397: 90                   nop 
00408398: 90                   nop 
00408399: 90                   nop 
0040839A: 90                   nop 
0040839B: 90                   nop 
0040839C: 90                   nop 
0040839D: 90                   nop 
0040839E: 90                   nop 
0040839F: 90                   nop 
004083A0: 83 EC 18             sub esp, 0x18
004083A3: 53                   push ebx
004083A4: 55                   push ebp
004083A5: 56                   push esi
004083A6: 57                   push edi
004083A7: 83 EC 10             sub esp, 0x10
004083AA: B8 A8 00 00 00       mov eax, 0xa8
004083AF: 8B DC                mov ebx, esp
004083B1: BA 64 00 00 00       mov edx, 0x64
004083B6: 8B F1                mov esi, ecx
004083B8: BF B4 00 00 00       mov edi, 0xb4
004083BD: 89 03                mov dword ptr [ebx], eax
004083BF: B9 D8 01 00 00       mov ecx, 0x1d8
004083C4: 89 53 04             mov dword ptr [ebx + 4], edx
004083C7: 89 4B 08             mov dword ptr [ebx + 8], ecx
004083CA: 89 7B 0C             mov dword ptr [ebx + 0xc], edi
004083CD: E8 DE 1A 01 00       call 0x419eb0
004083D2: 8B AE 5C D2 00 00    mov ebp, dword ptr [esi + 0xd25c]
004083D8: 8D 86 44 D2 00 00    lea eax, [esi + 0xd244]
004083DE: 83 C4 10             add esp, 0x10
004083E1: 89 6C 24 14          mov dword ptr [esp + 0x14], ebp
004083E5: BF 68 00 00 00       mov edi, 0x68
004083EA: 33 DB                xor ebx, ebx
004083EC: 89 44 24 10          mov dword ptr [esp + 0x10], eax
004083F0: 8B 15 68 4C 4D 00    mov edx, dword ptr [0x4d4c68]
004083F6: A1 6C 4C 4D 00       mov eax, dword ptr [0x4d4c6c]
004083FB: 83 EC 10             sub esp, 0x10
004083FE: 8B CC                mov ecx, esp
00408400: 57                   push edi
00408401: 68 B4 00 00 00       push 0xb4
00408406: 89 11                mov dword ptr [ecx], edx
00408408: 8B 15 70 4C 4D 00    mov edx, dword ptr [0x4d4c70]
0040840E: 89 41 04             mov dword ptr [ecx + 4], eax
00408411: A1 74 4C 4D 00       mov eax, dword ptr [0x4d4c74]
00408416: 89 51 08             mov dword ptr [ecx + 8], edx
00408419: 89 41 0C             mov dword ptr [ecx + 0xc], eax
0040841C: 8B 4C 24 28          mov ecx, dword ptr [esp + 0x28]
00408420: E8 BB 0D 02 00       call 0x4291e0
00408425: 3B 9E 9C D1 00 00    cmp ebx, dword ptr [esi + 0xd19c]
0040842B: 75 36                jne 0x408463
0040842D: 8D 47 01             lea eax, [edi + 1]
00408430: 83 EC 10             sub esp, 0x10
00408433: B9 B2 00 00 00       mov ecx, 0xb2
00408438: BA CA 01 00 00       mov edx, 0x1ca
0040843D: 8D 6C 28 FF          lea ebp, [eax + ebp - 1]
00408441: 89 6C 24 34          mov dword ptr [esp + 0x34], ebp
00408445: 8B EC                mov ebp, esp
00408447: 89 4D 00             mov dword ptr [ebp], ecx
0040844A: 8B 4C 24 34          mov ecx, dword ptr [esp + 0x34]
0040844E: 89 45 04             mov dword ptr [ebp + 4], eax
00408451: 89 55 08             mov dword ptr [ebp + 8], edx
00408454: 89 4D 0C             mov dword ptr [ebp + 0xc], ecx
00408457: E8 24 1B 01 00       call 0x419f80
0040845C: 8B 6C 24 24          mov ebp, dword ptr [esp + 0x24]
00408460: 83 C4 10             add esp, 0x10
00408463: 8B 4C 24 10          mov ecx, dword ptr [esp + 0x10]
00408467: 8D 45 02             lea eax, [ebp + 2]
0040846A: 03 F8                add edi, eax
0040846C: 43                   inc ebx
0040846D: 83 C1 48             add ecx, 0x48
00408470: 83 FB 03             cmp ebx, 3
00408473: 89 4C 24 10          mov dword ptr [esp + 0x10], ecx
00408477: 0F 8C 73 FF FF FF    jl 0x4083f0
0040847D: 6A 03                push 3
0040847F: 8B CE                mov ecx, esi
00408481: E8 FA FD FF FF       call 0x408280
00408486: A1 30 3F 4F 00       mov eax, dword ptr [0x4f3f30]
0040848B: 85 C0                test eax, eax
0040848D: 74 62                je 0x4084f1
0040848F: 8B 86 9C D1 00 00    mov eax, dword ptr [esi + 0xd19c]
00408495: 83 E8 00             sub eax, 0
00408498: 74 31                je 0x4084cb
0040849A: 48                   dec eax
0040849B: 74 1C                je 0x4084b9
0040849D: 48                   dec eax
0040849E: 75 51                jne 0x4084f1
004084A0: 68 E8 03 00 00       push 0x3e8
004084A5: 8D 4E 18             lea ecx, [esi + 0x18]
004084A8: E8 63 88 00 00       call 0x410d10
004084AD: C7 86 A8 00 00 00 03 00 00 00 mov dword ptr [esi + 0xa8], 3
004084B7: EB 29                jmp 0x4084e2
004084B9: 8B CE                mov ecx, esi
004084BB: E8 D0 EE FF FF       call 0x407390
004084C0: 6A 02                push 2
004084C2: 8B CE                mov ecx, esi
004084C4: E8 07 62 00 00       call 0x40e6d0
004084C9: EB 17                jmp 0x4084e2
004084CB: 68 C8 00 00 00       push 0xc8
004084D0: 8D 4E 18             lea ecx, [esi + 0x18]
004084D3: E8 38 88 00 00       call 0x410d10
004084D8: C7 86 A8 00 00 00 01 00 00 00 mov dword ptr [esi + 0xa8], 1
004084E2: 6A 02                push 2
004084E4: 6A 00                push 0
004084E6: 8D 8E DC D0 00 00    lea ecx, [esi + 0xd0dc]
004084EC: E8 AF 25 01 00       call 0x41aaa0
004084F1: 5F                   pop edi
004084F2: 5E                   pop esi
004084F3: 5D                   pop ebp
004084F4: 5B                   pop ebx
004084F5: 83 C4 18             add esp, 0x18
004084F8: C3                   ret 
004084F9: 90                   nop 
004084FA: 90                   nop 
004084FB: 90                   nop 
004084FC: 90                   nop 
004084FD: 90                   nop 
004084FE: 90                   nop 
004084FF: 90                   nop 
00408500: 83 EC 1C             sub esp, 0x1c
00408503: 53                   push ebx
00408504: 55                   push ebp
00408505: 56                   push esi
00408506: 57                   push edi
00408507: 83 EC 10             sub esp, 0x10
0040850A: B8 9C 00 00 00       mov eax, 0x9c
0040850F: 8B DC                mov ebx, esp
00408511: BA A0 00 00 00       mov edx, 0xa0
00408516: 8B F1                mov esi, ecx
00408518: BF 30 01 00 00       mov edi, 0x130
0040851D: 89 03                mov dword ptr [ebx], eax
0040851F: B9 D0 01 00 00       mov ecx, 0x1d0
00408524: 89 53 04             mov dword ptr [ebx + 4], edx
00408527: 89 4B 08             mov dword ptr [ebx + 8], ecx
0040852A: 89 7B 0C             mov dword ptr [ebx + 0xc], edi
0040852D: E8 7E 19 01 00       call 0x419eb0
00408532: B8 9C 00 00 00       mov eax, 0x9c
00408537: BA 6E 00 00 00       mov edx, 0x6e
0040853C: 89 03                mov dword ptr [ebx], eax
0040853E: B9 D0 01 00 00       mov ecx, 0x1d0
00408543: BF 96 00 00 00       mov edi, 0x96
00408548: 89 53 04             mov dword ptr [ebx + 4], edx
0040854B: 89 4B 08             mov dword ptr [ebx + 8], ecx
0040854E: 89 7B 0C             mov dword ptr [ebx + 0xc], edi
00408551: E8 5A 19 01 00       call 0x419eb0
00408556: 8B 86 5C D2 00 00    mov eax, dword ptr [esi + 0xd25c]
0040855C: 8D 8E 58 D1 00 00    lea ecx, [esi + 0xd158]
00408562: 83 C4 10             add esp, 0x10
00408565: 89 44 24 18          mov dword ptr [esp + 0x18], eax
00408569: BB A4 00 00 00       mov ebx, 0xa4
0040856E: 33 FF                xor edi, edi
00408570: 8D AE 4C D2 00 00    lea ebp, [esi + 0xd24c]
00408576: 89 4C 24 10          mov dword ptr [esp + 0x10], ecx
0040857A: 8B 54 24 10          mov edx, dword ptr [esp + 0x10]
0040857E: 8B 02                mov eax, dword ptr [edx]
00408580: F7 D8                neg eax
00408582: 1A C0                sbb al, al
00408584: 24 7F                and al, 0x7f
00408586: 04 80                add al, 0x80
00408588: 88 44 24 14          mov byte ptr [esp + 0x14], al
0040858C: 8B 86 9C D1 00 00    mov eax, dword ptr [esi + 0xd19c]
00408592: 3B F8                cmp edi, eax
00408594: 8B 44 24 14          mov eax, dword ptr [esp + 0x14]
00408598: 75 1A                jne 0x4085b4
0040859A: 25 FF 00 00 00       and eax, 0xff
0040859F: 8B C8                mov ecx, eax
004085A1: 81 C9 00 FF FF FF    or ecx, 0xffffff00
004085A7: C1 E1 08             shl ecx, 8
004085AA: 0B C8                or ecx, eax
004085AC: C1 E1 08             shl ecx, 8
004085AF: 89 4D 00             mov dword ptr [ebp], ecx
004085B2: EB 1A                jmp 0x4085ce
004085B4: 25 FF 00 00 00       and eax, 0xff
004085B9: 8B D0                mov edx, eax
004085BB: 81 CA 00 FF FF FF    or edx, 0xffffff00
004085C1: C1 E2 08             shl edx, 8
004085C4: 0B D0                or edx, eax
004085C6: C1 E2 08             shl edx, 8
004085C9: 0B D0                or edx, eax
004085CB: 89 55 00             mov dword ptr [ebp], edx
004085CE: 8B 0D 68 4C 4D 00    mov ecx, dword ptr [0x4d4c68]
004085D4: 8B 15 6C 4C 4D 00    mov edx, dword ptr [0x4d4c6c]
004085DA: 83 EC 10             sub esp, 0x10
004085DD: 8B C4                mov eax, esp
004085DF: 53                   push ebx
004085E0: 68 B4 00 00 00       push 0xb4
004085E5: 89 08                mov dword ptr [eax], ecx
004085E7: 8B 0D 70 4C 4D 00    mov ecx, dword ptr [0x4d4c70]
004085ED: 89 50 04             mov dword ptr [eax + 4], edx
004085F0: 8B 15 74 4C 4D 00    mov edx, dword ptr [0x4d4c74]
004085F6: 89 48 08             mov dword ptr [eax + 8], ecx
004085F9: 8D 4D F8             lea ecx, [ebp - 8]
004085FC: 89 50 0C             mov dword ptr [eax + 0xc], edx
004085FF: E8 DC 0B 02 00       call 0x4291e0
00408604: 3B BE 9C D1 00 00    cmp edi, dword ptr [esi + 0xd19c]
0040860A: 75 35                jne 0x408641
0040860C: 8B 54 24 18          mov edx, dword ptr [esp + 0x18]
00408610: 8D 43 01             lea eax, [ebx + 1]
00408613: 83 EC 10             sub esp, 0x10
00408616: B9 B2 00 00 00       mov ecx, 0xb2
0040861B: 8D 54 10 FF          lea edx, [eax + edx - 1]
0040861F: 89 54 24 38          mov dword ptr [esp + 0x38], edx
00408623: 8B D4                mov edx, esp
00408625: 89 0A                mov dword ptr [edx], ecx
00408627: 89 42 04             mov dword ptr [edx + 4], eax
0040862A: B8 B6 01 00 00       mov eax, 0x1b6
0040862F: 89 42 08             mov dword ptr [edx + 8], eax
00408632: 8B 44 24 38          mov eax, dword ptr [esp + 0x38]
00408636: 89 42 0C             mov dword ptr [edx + 0xc], eax
00408639: E8 42 19 01 00       call 0x419f80
0040863E: 83 C4 10             add esp, 0x10
00408641: 8B 4C 24 18          mov ecx, dword ptr [esp + 0x18]
00408645: 8B 54 24 10          mov edx, dword ptr [esp + 0x10]
00408649: 03 D9                add ebx, ecx
0040864B: 47                   inc edi
0040864C: 83 C2 04             add edx, 4
0040864F: 83 C5 48             add ebp, 0x48
00408652: 83 FF 06             cmp edi, 6
00408655: 89 54 24 10          mov dword ptr [esp + 0x10], edx
00408659: 0F 8C 1B FF FF FF    jl 0x40857a
0040865F: 8B 15 68 4C 4D 00    mov edx, dword ptr [0x4d4c68]
00408665: A1 6C 4C 4D 00       mov eax, dword ptr [0x4d4c6c]
0040866A: 83 EC 10             sub esp, 0x10
0040866D: 8B CC                mov ecx, esp
0040866F: 6A 74                push 0x74
00408671: 68 B4 00 00 00       push 0xb4
00408676: 89 11                mov dword ptr [ecx], edx
00408678: 8B 15 70 4C 4D 00    mov edx, dword ptr [0x4d4c70]
0040867E: 89 41 04             mov dword ptr [ecx + 4], eax
00408681: A1 74 4C 4D 00       mov eax, dword ptr [0x4d4c74]
00408686: 89 51 08             mov dword ptr [ecx + 8], edx
00408689: 89 41 0C             mov dword ptr [ecx + 0xc], eax
0040868C: 8D 8E F4 D3 00 00    lea ecx, [esi + 0xd3f4]
00408692: E8 49 0B 02 00       call 0x4291e0
00408697: 6A 06                push 6
00408699: 8B CE                mov ecx, esi
0040869B: E8 E0 FB FF FF       call 0x408280
004086A0: 6A 00                push 0
004086A2: 8B CE                mov ecx, esi
004086A4: E8 47 FC FF FF       call 0x4082f0
004086A9: A1 30 3F 4F 00       mov eax, dword ptr [0x4f3f30]
004086AE: 85 C0                test eax, eax
004086B0: 74 3D                je 0x4086ef
004086B2: 8B 86 9C D1 00 00    mov eax, dword ptr [esi + 0xd19c]
004086B8: 85 C0                test eax, eax
004086BA: 7C 33                jl 0x4086ef
004086BC: 83 F8 05             cmp eax, 5
004086BF: 7F 2E                jg 0x4086ef
004086C1: 8B 8C 86 58 D1 00 00 mov ecx, dword ptr [esi + eax*4 + 0xd158]
004086C8: 85 C9                test ecx, ecx
004086CA: 75 23                jne 0x4086ef
004086CC: 68 C8 00 00 00       push 0xc8
004086D1: 8D 4E 18             lea ecx, [esi + 0x18]
004086D4: E8 37 86 00 00       call 0x410d10
004086D9: 8B 8E 9C D1 00 00    mov ecx, dword ptr [esi + 0xd19c]
004086DF: C7 86 A8 00 00 00 01 00 00 00 mov dword ptr [esi + 0xa8], 1
004086E9: 89 8E 88 D1 00 00    mov dword ptr [esi + 0xd188], ecx
004086EF: 5F                   pop edi
004086F0: 5E                   pop esi
004086F1: 5D                   pop ebp
004086F2: 5B                   pop ebx
004086F3: 83 C4 1C             add esp, 0x1c
004086F6: C3                   ret 
004086F7: 90                   nop 
004086F8: 90                   nop 
004086F9: 90                   nop 
004086FA: 90                   nop 
004086FB: 90                   nop 
004086FC: 90                   nop 
004086FD: 90                   nop 
004086FE: 90                   nop 
004086FF: 90                   nop 
00408700: 83 EC 1C             sub esp, 0x1c
00408703: 53                   push ebx
00408704: 55                   push ebp
00408705: 56                   push esi
00408706: 57                   push edi
00408707: 83 EC 10             sub esp, 0x10
0040870A: B8 4E 00 00 00       mov eax, 0x4e
0040870F: 8B DC                mov ebx, esp
00408711: BA A0 00 00 00       mov edx, 0xa0
00408716: 8B F1                mov esi, ecx
00408718: BF 30 01 00 00       mov edi, 0x130
0040871D: 89 03                mov dword ptr [ebx], eax
0040871F: B9 4A 02 00 00       mov ecx, 0x24a
00408724: 89 53 04             mov dword ptr [ebx + 4], edx
00408727: 89 4B 08             mov dword ptr [ebx + 8], ecx
0040872A: 89 7B 0C             mov dword ptr [ebx + 0xc], edi
0040872D: E8 7E 17 01 00       call 0x419eb0
00408732: B8 9C 00 00 00       mov eax, 0x9c
00408737: BA 6E 00 00 00       mov edx, 0x6e
0040873C: 89 03                mov dword ptr [ebx], eax
0040873E: B9 D0 01 00 00       mov ecx, 0x1d0
00408743: BF 96 00 00 00       mov edi, 0x96
00408748: 89 53 04             mov dword ptr [ebx + 4], edx
0040874B: 89 4B 08             mov dword ptr [ebx + 8], ecx
0040874E: 89 7B 0C             mov dword ptr [ebx + 0xc], edi
00408751: E8 5A 17 01 00       call 0x419eb0
00408756: 8B 86 5C D2 00 00    mov eax, dword ptr [esi + 0xd25c]
0040875C: 8D 8E 58 D1 00 00    lea ecx, [esi + 0xd158]
00408762: 83 C4 10             add esp, 0x10
00408765: 89 44 24 18          mov dword ptr [esp + 0x18], eax
00408769: BB A4 00 00 00       mov ebx, 0xa4
0040876E: 33 FF                xor edi, edi
00408770: 8D AE 4C D2 00 00    lea ebp, [esi + 0xd24c]
00408776: 89 4C 24 10          mov dword ptr [esp + 0x10], ecx
0040877A: 8B 54 24 10          mov edx, dword ptr [esp + 0x10]
0040877E: 8B 02                mov eax, dword ptr [edx]
00408780: F7 D8                neg eax
00408782: 1A C0                sbb al, al
00408784: 24 7F                and al, 0x7f
00408786: 04 80                add al, 0x80
00408788: 88 44 24 14          mov byte ptr [esp + 0x14], al
0040878C: 8B 86 9C D1 00 00    mov eax, dword ptr [esi + 0xd19c]
00408792: 3B F8                cmp edi, eax
00408794: 8B 44 24 14          mov eax, dword ptr [esp + 0x14]
00408798: 75 1A                jne 0x4087b4
0040879A: 25 FF 00 00 00       and eax, 0xff
0040879F: 8B C8                mov ecx, eax
004087A1: 81 C9 00 FF FF FF    or ecx, 0xffffff00
004087A7: C1 E1 08             shl ecx, 8
004087AA: 0B C8                or ecx, eax
004087AC: C1 E1 08             shl ecx, 8
004087AF: 89 4D 00             mov dword ptr [ebp], ecx
004087B2: EB 1A                jmp 0x4087ce
004087B4: 25 FF 00 00 00       and eax, 0xff
004087B9: 8B D0                mov edx, eax
004087BB: 81 CA 00 FF FF FF    or edx, 0xffffff00
004087C1: C1 E2 08             shl edx, 8
004087C4: 0B D0                or edx, eax
004087C6: C1 E2 08             shl edx, 8
004087C9: 0B D0                or edx, eax
004087CB: 89 55 00             mov dword ptr [ebp], edx
004087CE: 8B 0D 68 4C 4D 00    mov ecx, dword ptr [0x4d4c68]
004087D4: 8B 15 6C 4C 4D 00    mov edx, dword ptr [0x4d4c6c]
004087DA: 83 EC 10             sub esp, 0x10
004087DD: 8B C4                mov eax, esp
004087DF: 53                   push ebx
004087E0: 6A 5A                push 0x5a
004087E2: 89 08                mov dword ptr [eax], ecx
004087E4: 8B 0D 70 4C 4D 00    mov ecx, dword ptr [0x4d4c70]
004087EA: 89 50 04             mov dword ptr [eax + 4], edx
004087ED: 8B 15 74 4C 4D 00    mov edx, dword ptr [0x4d4c74]
004087F3: 89 48 08             mov dword ptr [eax + 8], ecx
004087F6: 8D 4D F8             lea ecx, [ebp - 8]
004087F9: 89 50 0C             mov dword ptr [eax + 0xc], edx
004087FC: E8 DF 09 02 00       call 0x4291e0
00408801: 3B BE 9C D1 00 00    cmp edi, dword ptr [esi + 0xd19c]
00408807: 75 35                jne 0x40883e
00408809: 8B 54 24 18          mov edx, dword ptr [esp + 0x18]
0040880D: 8D 43 01             lea eax, [ebx + 1]
00408810: 83 EC 10             sub esp, 0x10
00408813: B9 59 00 00 00       mov ecx, 0x59
00408818: 8D 54 10 FF          lea edx, [eax + edx - 1]
0040881C: 89 54 24 38          mov dword ptr [esp + 0x38], edx
00408820: 8B D4                mov edx, esp
00408822: 89 0A                mov dword ptr [edx], ecx
00408824: 89 42 04             mov dword ptr [edx + 4], eax
00408827: B8 39 02 00 00       mov eax, 0x239
0040882C: 89 42 08             mov dword ptr [edx + 8], eax
0040882F: 8B 44 24 38          mov eax, dword ptr [esp + 0x38]
00408833: 89 42 0C             mov dword ptr [edx + 0xc], eax
00408836: E8 45 17 01 00       call 0x419f80
0040883B: 83 C4 10             add esp, 0x10
0040883E: 8B 4C 24 18          mov ecx, dword ptr [esp + 0x18]
00408842: 8B 54 24 10          mov edx, dword ptr [esp + 0x10]
00408846: 03 D9                add ebx, ecx
00408848: 47                   inc edi
00408849: 83 C2 04             add edx, 4
0040884C: 83 C5 48             add ebp, 0x48
0040884F: 83 FF 06             cmp edi, 6
00408852: 89 54 24 10          mov dword ptr [esp + 0x10], edx
00408856: 0F 8C 1E FF FF FF    jl 0x40877a
0040885C: 8B 15 68 4C 4D 00    mov edx, dword ptr [0x4d4c68]
00408862: A1 6C 4C 4D 00       mov eax, dword ptr [0x4d4c6c]
00408867: 83 EC 10             sub esp, 0x10
0040886A: 8B CC                mov ecx, esp
0040886C: 6A 74                push 0x74
0040886E: 68 B4 00 00 00       push 0xb4
00408873: 89 11                mov dword ptr [ecx], edx
00408875: 8B 15 70 4C 4D 00    mov edx, dword ptr [0x4d4c70]
0040887B: 89 41 04             mov dword ptr [ecx + 4], eax
0040887E: A1 74 4C 4D 00       mov eax, dword ptr [0x4d4c74]
00408883: 89 51 08             mov dword ptr [ecx + 8], edx
00408886: 89 41 0C             mov dword ptr [ecx + 0xc], eax
00408889: 8D 8E F4 D3 00 00    lea ecx, [esi + 0xd3f4]
0040888F: E8 4C 09 02 00       call 0x4291e0
00408894: 6A 06                push 6
00408896: 8B CE                mov ecx, esi
00408898: E8 E3 F9 FF FF       call 0x408280
0040889D: 6A 00                push 0
0040889F: 8B CE                mov ecx, esi
004088A1: E8 4A FA FF FF       call 0x4082f0
004088A6: A1 30 3F 4F 00       mov eax, dword ptr [0x4f3f30]
004088AB: 85 C0                test eax, eax
004088AD: 74 3C                je 0x4088eb
004088AF: 8B 86 9C D1 00 00    mov eax, dword ptr [esi + 0xd19c]
004088B5: 85 C0                test eax, eax
004088B7: 7C 32                jl 0x4088eb
004088B9: 83 F8 05             cmp eax, 5
004088BC: 7F 2D                jg 0x4088eb
004088BE: 83 BC 86 58 D1 00 00 01 cmp dword ptr [esi + eax*4 + 0xd158], 1
004088C6: 75 23                jne 0x4088eb
004088C8: 68 C8 00 00 00       push 0xc8
004088CD: 8D 4E 18             lea ecx, [esi + 0x18]
004088D0: E8 3B 84 00 00       call 0x410d10
004088D5: 8B 8E 9C D1 00 00    mov ecx, dword ptr [esi + 0xd19c]
004088DB: C7 86 A8 00 00 00 02 00 00 00 mov dword ptr [esi + 0xa8], 2
004088E5: 89 8E 88 D1 00 00    mov dword ptr [esi + 0xd188], ecx
004088EB: 5F                   pop edi
004088EC: 5E                   pop esi
004088ED: 5D                   pop ebp
004088EE: 5B                   pop ebx
004088EF: 83 C4 1C             add esp, 0x1c
004088F2: C3                   ret 
004088F3: 90                   nop 
004088F4: 90                   nop 
004088F5: 90                   nop 
004088F6: 90                   nop 
004088F7: 90                   nop 
004088F8: 90                   nop 
004088F9: 90                   nop 
004088FA: 90                   nop 
004088FB: 90                   nop 
004088FC: 90                   nop 
004088FD: 90                   nop 
004088FE: 90                   nop 
004088FF: 90                   nop 
00408900: 6A FF                push -1
00408902: 68 B0 29 4A 00       push 0x4a29b0
00408907: 64 A1 00 00 00 00    mov eax, dword ptr fs:[0]
0040890D: 50                   push eax
0040890E: 64 89 25 00 00 00 00 mov dword ptr fs:[0], esp
00408915: 83 EC 20             sub esp, 0x20
00408918: 53                   push ebx
00408919: 55                   push ebp
0040891A: 56                   push esi
0040891B: 57                   push edi
0040891C: 83 EC 10             sub esp, 0x10
0040891F: B8 9C 00 00 00       mov eax, 0x9c
00408924: 8B DC                mov ebx, esp
00408926: BA A0 00 00 00       mov edx, 0xa0
0040892B: 8B F1                mov esi, ecx
0040892D: BF 30 01 00 00       mov edi, 0x130
00408932: 89 03                mov dword ptr [ebx], eax
00408934: B9 D0 01 00 00       mov ecx, 0x1d0
00408939: 89 53 04             mov dword ptr [ebx + 4], edx
0040893C: 89 4B 08             mov dword ptr [ebx + 8], ecx
0040893F: 89 7B 0C             mov dword ptr [ebx + 0xc], edi
00408942: E8 69 15 01 00       call 0x419eb0
00408947: B8 9C 00 00 00       mov eax, 0x9c
0040894C: BA 6E 00 00 00       mov edx, 0x6e
00408951: 89 03                mov dword ptr [ebx], eax
00408953: B9 D0 01 00 00       mov ecx, 0x1d0
00408958: BF 96 00 00 00       mov edi, 0x96
0040895D: 89 53 04             mov dword ptr [ebx + 4], edx
00408960: 89 4B 08             mov dword ptr [ebx + 8], ecx
00408963: 89 7B 0C             mov dword ptr [ebx + 0xc], edi
00408966: E8 45 15 01 00       call 0x419eb0
0040896B: 8B 86 5C D2 00 00    mov eax, dword ptr [esi + 0xd25c]
00408971: 83 C4 10             add esp, 0x10
00408974: 89 44 24 18          mov dword ptr [esp + 0x18], eax
00408978: 8D 86 58 D1 00 00    lea eax, [esi + 0xd158]
0040897E: BD A4 00 00 00       mov ebp, 0xa4
00408983: 33 FF                xor edi, edi
00408985: 8D 9E 4C D2 00 00    lea ebx, [esi + 0xd24c]
0040898B: 89 44 24 1C          mov dword ptr [esp + 0x1c], eax
0040898F: 89 44 24 10          mov dword ptr [esp + 0x10], eax
00408993: 8B 4C 24 10          mov ecx, dword ptr [esp + 0x10]
00408997: 8B 86 9C D1 00 00    mov eax, dword ptr [esi + 0xd19c]
0040899D: 8B 11                mov edx, dword ptr [ecx]
0040899F: F7 DA                neg edx
004089A1: 1A D2                sbb dl, dl
004089A3: 80 E2 7F             and dl, 0x7f
004089A6: 80 C2 80             add dl, 0x80
004089A9: 3B F8                cmp edi, eax
004089AB: 88 54 24 14          mov byte ptr [esp + 0x14], dl
004089AF: 8B 44 24 14          mov eax, dword ptr [esp + 0x14]
004089B3: 75 19                jne 0x4089ce
004089B5: 25 FF 00 00 00       and eax, 0xff
004089BA: 8B C8                mov ecx, eax
004089BC: 81 C9 00 FF FF FF    or ecx, 0xffffff00
004089C2: C1 E1 08             shl ecx, 8
004089C5: 0B C8                or ecx, eax
004089C7: C1 E1 08             shl ecx, 8
004089CA: 89 0B                mov dword ptr [ebx], ecx
004089CC: EB 19                jmp 0x4089e7
004089CE: 25 FF 00 00 00       and eax, 0xff
004089D3: 8B D0                mov edx, eax
004089D5: 81 CA 00 FF FF FF    or edx, 0xffffff00
004089DB: C1 E2 08             shl edx, 8
004089DE: 0B D0                or edx, eax
004089E0: C1 E2 08             shl edx, 8
004089E3: 0B D0                or edx, eax
004089E5: 89 13                mov dword ptr [ebx], edx
004089E7: 8B 0D 68 4C 4D 00    mov ecx, dword ptr [0x4d4c68]
004089ED: 8B 15 6C 4C 4D 00    mov edx, dword ptr [0x4d4c6c]
004089F3: 83 EC 10             sub esp, 0x10
004089F6: 8B C4                mov eax, esp
004089F8: 55                   push ebp
004089F9: 68 B4 00 00 00       push 0xb4
004089FE: 89 08                mov dword ptr [eax], ecx
00408A00: 8B 0D 70 4C 4D 00    mov ecx, dword ptr [0x4d4c70]
00408A06: 89 50 04             mov dword ptr [eax + 4], edx
00408A09: 8B 15 74 4C 4D 00    mov edx, dword ptr [0x4d4c74]
00408A0F: 89 48 08             mov dword ptr [eax + 8], ecx
00408A12: 8D 4B F8             lea ecx, [ebx - 8]
00408A15: 89 50 0C             mov dword ptr [eax + 0xc], edx
00408A18: E8 C3 07 02 00       call 0x4291e0
00408A1D: 3B BE 9C D1 00 00    cmp edi, dword ptr [esi + 0xd19c]
00408A23: 75 35                jne 0x408a5a
00408A25: 8B 54 24 18          mov edx, dword ptr [esp + 0x18]
00408A29: 8D 45 01             lea eax, [ebp + 1]
00408A2C: 83 EC 10             sub esp, 0x10
00408A2F: B9 B2 00 00 00       mov ecx, 0xb2
00408A34: 8D 54 10 FF          lea edx, [eax + edx - 1]
00408A38: 89 54 24 3C          mov dword ptr [esp + 0x3c], edx
00408A3C: 8B D4                mov edx, esp
00408A3E: 89 0A                mov dword ptr [edx], ecx
00408A40: 89 42 04             mov dword ptr [edx + 4], eax
00408A43: B8 B6 01 00 00       mov eax, 0x1b6
00408A48: 89 42 08             mov dword ptr [edx + 8], eax
00408A4B: 8B 44 24 3C          mov eax, dword ptr [esp + 0x3c]
00408A4F: 89 42 0C             mov dword ptr [edx + 0xc], eax
00408A52: E8 29 15 01 00       call 0x419f80
00408A57: 83 C4 10             add esp, 0x10
00408A5A: 8B 4C 24 18          mov ecx, dword ptr [esp + 0x18]
00408A5E: 8B 54 24 10          mov edx, dword ptr [esp + 0x10]
00408A62: 03 E9                add ebp, ecx
00408A64: 47                   inc edi
00408A65: 83 C2 04             add edx, 4
00408A68: 83 C3 48             add ebx, 0x48
00408A6B: 83 FF 06             cmp edi, 6
00408A6E: 89 54 24 10          mov dword ptr [esp + 0x10], edx
00408A72: 0F 8C 1B FF FF FF    jl 0x408993
00408A78: 8B 15 68 4C 4D 00    mov edx, dword ptr [0x4d4c68]
00408A7E: A1 6C 4C 4D 00       mov eax, dword ptr [0x4d4c6c]
00408A83: 83 EC 10             sub esp, 0x10
00408A86: 8B CC                mov ecx, esp
00408A88: 6A 74                push 0x74
00408A8A: 68 B4 00 00 00       push 0xb4
00408A8F: 89 11                mov dword ptr [ecx], edx
00408A91: 8B 15 70 4C 4D 00    mov edx, dword ptr [0x4d4c70]
00408A97: 89 41 04             mov dword ptr [ecx + 4], eax
00408A9A: A1 74 4C 4D 00       mov eax, dword ptr [0x4d4c74]
00408A9F: 89 51 08             mov dword ptr [ecx + 8], edx
00408AA2: 89 41 0C             mov dword ptr [ecx + 0xc], eax
00408AA5: 8D 8E F4 D3 00 00    lea ecx, [esi + 0xd3f4]
00408AAB: E8 30 07 02 00       call 0x4291e0
00408AB0: 6A 06                push 6
00408AB2: 8B CE                mov ecx, esi
00408AB4: E8 C7 F7 FF FF       call 0x408280
00408AB9: 33 FF                xor edi, edi
00408ABB: 8B CE                mov ecx, esi
00408ABD: 57                   push edi
00408ABE: E8 2D F8 FF FF       call 0x4082f0
00408AC3: 39 3D 30 3F 4F 00    cmp dword ptr [0x4f3f30], edi
00408AC9: 0F 84 D9 00 00 00    je 0x408ba8
00408ACF: 8B 86 9C D1 00 00    mov eax, dword ptr [esi + 0xd19c]
00408AD5: 3B C7                cmp eax, edi
00408AD7: 0F 8C CB 00 00 00    jl 0x408ba8
00408ADD: 83 F8 05             cmp eax, 5
00408AE0: 0F 8F C2 00 00 00    jg 0x408ba8
00408AE6: 8B 8C 86 58 D1 00 00 mov ecx, dword ptr [esi + eax*4 + 0xd158]
00408AED: BB 01 00 00 00       mov ebx, 1
00408AF2: 3B CB                cmp ecx, ebx
00408AF4: 0F 85 AE 00 00 00    jne 0x408ba8
00408AFA: 8D 4C 24 14          lea ecx, [esp + 0x14]
00408AFE: E8 35 8F 09 00       call 0x4a1a38
00408B03: 8B 8E 9C D1 00 00    mov ecx, dword ptr [esi + 0xd19c]
00408B09: 8D 54 24 14          lea edx, [esp + 0x14]
00408B0D: 51                   push ecx
00408B0E: 68 24 47 4B 00       push 0x4b4724
00408B13: 52                   push edx
00408B14: 89 7C 24 44          mov dword ptr [esp + 0x44], edi
00408B18: E8 15 8F 09 00       call 0x4a1a32
00408B1D: 8B 44 24 20          mov eax, dword ptr [esp + 0x20]
00408B21: 83 C4 0C             add esp, 0xc
00408B24: 50                   push eax
00408B25: FF 15 78 70 4A 00    call dword ptr [0x4a7078]
00408B2B: 8B CE                mov ecx, esi
00408B2D: E8 5E E8 FF FF       call 0x407390
00408B32: 8D AE 44 D2 00 00    lea ebp, [esi + 0xd244]
00408B38: 8B 74 24 1C          mov esi, dword ptr [esp + 0x1c]
00408B3C: 8D 4C 24 10          lea ecx, [esp + 0x10]
00408B40: E8 F3 8E 09 00       call 0x4a1a38
00408B45: 57                   push edi
00408B46: 8D 4C 24 14          lea ecx, [esp + 0x14]
00408B4A: 68 54 48 4B 00       push 0x4b4854
00408B4F: 51                   push ecx
00408B50: 88 5C 24 44          mov byte ptr [esp + 0x44], bl
00408B54: E8 D9 8E 09 00       call 0x4a1a32
00408B59: 8B 16                mov edx, dword ptr [esi]
00408B5B: 83 C4 0C             add esp, 0xc
00408B5E: F7 DA                neg edx
00408B60: 8B 44 24 10          mov eax, dword ptr [esp + 0x10]
00408B64: 8B CD                mov ecx, ebp
00408B66: 1B D2                sbb edx, edx
00408B68: 81 E2 7F 7F 7F 00    and edx, 0x7f7f7f
00408B6E: 81 C2 80 80 80 FF    add edx, 0xff808080
00408B74: 52                   push edx
00408B75: 6A 03                push 3
00408B77: 50                   push eax
00408B78: E8 F3 05 02 00       call 0x429170
00408B7D: 8D 4C 24 10          lea ecx, [esp + 0x10]
00408B81: C6 44 24 38 00       mov byte ptr [esp + 0x38], 0
00408B86: E8 A1 8E 09 00       call 0x4a1a2c
00408B8B: 47                   inc edi
00408B8C: 83 C6 04             add esi, 4
00408B8F: 83 C5 48             add ebp, 0x48
00408B92: 83 FF 06             cmp edi, 6
00408B95: 7C A5                jl 0x408b3c
00408B97: 8D 4C 24 14          lea ecx, [esp + 0x14]
00408B9B: C7 44 24 38 FF FF FF FF mov dword ptr [esp + 0x38], 0xffffffff
00408BA3: E8 84 8E 09 00       call 0x4a1a2c
00408BA8: 8B 4C 24 30          mov ecx, dword ptr [esp + 0x30]
00408BAC: 5F                   pop edi
00408BAD: 5E                   pop esi
00408BAE: 5D                   pop ebp
00408BAF: 64 89 0D 00 00 00 00 mov dword ptr fs:[0], ecx
00408BB6: 5B                   pop ebx
00408BB7: 83 C4 2C             add esp, 0x2c
00408BBA: C3                   ret 
00408BBB: 90                   nop 
00408BBC: 90                   nop 
00408BBD: 90                   nop 
00408BBE: 90                   nop 
00408BBF: 90                   nop 
00408BC0: 56                   push esi
00408BC1: 8B F1                mov esi, ecx
00408BC3: 8B 86 A8 00 00 00    mov eax, dword ptr [esi + 0xa8]
00408BC9: 83 F8 04             cmp eax, 4
00408BCC: 0F 87 0C 03 00 00    ja 0x408ede
00408BD2: FF 24 85 E0 8E 40 00 jmp dword ptr [eax*4 + 0x408ee0]
00408BD9: A1 F0 94 4C 00       mov eax, dword ptr [0x4c94f0]
00408BDE: 68 6C 48 4B 00       push 0x4b486c
00408BE3: C7 05 FC 94 4C 00 00 00 00 00 mov dword ptr [0x4c94fc], 0
00408BED: 8D 88 A4 D1 00 00    lea ecx, [eax + 0xd1a4]
00408BF3: E8 58 88 00 00       call 0x411450
00408BF8: 6A 00                push 0
00408BFA: 8B CE                mov ecx, esi
00408BFC: E8 CF 5A 00 00       call 0x40e6d0
00408C01: 8B 0D F0 94 4C 00    mov ecx, dword ptr [0x4c94f0]
00408C07: E8 A4 5A 00 00       call 0x40e6b0
00408C0C: C7 86 A8 00 00 00 FF FF FF FF mov dword ptr [esi + 0xa8], 0xffffffff
00408C16: 8B 0D F0 94 4C 00    mov ecx, dword ptr [0x4c94f0]
00408C1C: C7 81 90 D1 00 00 00 00 00 00 mov dword ptr [ecx + 0xd190], 0
00408C26: 8B 15 F0 94 4C 00    mov edx, dword ptr [0x4c94f0]
00408C2C: C7 82 94 D1 00 00 01 00 00 00 mov dword ptr [edx + 0xd194], 1
00408C36: 8B 0D 80 93 4C 00    mov ecx, dword ptr [0x4c9380]
00408C3C: E8 4F 8D FF FF       call 0x401990
00408C41: 8B CE                mov ecx, esi
00408C43: E8 C8 E1 FF FF       call 0x406e10
00408C48: A1 F0 94 4C 00       mov eax, dword ptr [0x4c94f0]
00408C4D: 68 E8 03 00 00       push 0x3e8
00408C52: 8D 48 18             lea ecx, [eax + 0x18]
00408C55: E8 E6 80 00 00       call 0x410d40
00408C5A: 5E                   pop esi
00408C5B: C3                   ret 
00408C5C: C7 86 A8 00 00 00 FF FF FF FF mov dword ptr [esi + 0xa8], 0xffffffff
00408C66: E8 C3 8E 09 00       call 0x4a1b2e
00408C6B: 85 C0                test eax, eax
00408C6D: 74 09                je 0x408c78
00408C6F: 8B 10                mov edx, dword ptr [eax]
00408C71: 8B C8                mov ecx, eax
00408C73: FF 52 7C             call dword ptr [edx + 0x7c]
00408C76: EB 02                jmp 0x408c7a
00408C78: 33 C0                xor eax, eax
00408C7A: 8B 40 20             mov eax, dword ptr [eax + 0x20]
00408C7D: 6A 00                push 0
00408C7F: 6A 00                push 0
00408C81: 6A 10                push 0x10
00408C83: 50                   push eax
00408C84: FF 15 74 73 4A 00    call dword ptr [0x4a7374]
00408C8A: 5E                   pop esi
00408C8B: C3                   ret 
00408C8C: 68 6C 48 4B 00       push 0x4b486c
00408C91: 8D 8E A4 D1 00 00    lea ecx, [esi + 0xd1a4]
00408C97: E8 B4 87 00 00       call 0x411450
00408C9C: 68 C8 00 00 00       push 0xc8
00408CA1: 8D 4E 18             lea ecx, [esi + 0x18]
00408CA4: C7 86 94 D1 00 00 01 00 00 00 mov dword ptr [esi + 0xd194], 1
00408CAE: C7 86 A4 00 00 00 00 00 00 00 mov dword ptr [esi + 0xa4], 0
00408CB8: E8 83 80 00 00       call 0x410d40
00408CBD: 6A 00                push 0
00408CBF: 8B CE                mov ecx, esi
00408CC1: C7 86 A8 00 00 00 FF FF FF FF mov dword ptr [esi + 0xa8], 0xffffffff
00408CCB: E8 00 5A 00 00       call 0x40e6d0
00408CD0: 5E                   pop esi
00408CD1: C3                   ret 
00408CD2: 68 C8 00 00 00       push 0xc8
00408CD7: 8D 4E 18             lea ecx, [esi + 0x18]
00408CDA: C7 86 90 D1 00 00 01 00 00 00 mov dword ptr [esi + 0xd190], 1
00408CE4: C7 86 A8 00 00 00 FF FF FF FF mov dword ptr [esi + 0xa8], 0xffffffff
00408CEE: E8 4D 80 00 00       call 0x410d40
00408CF3: 8B CE                mov ecx, esi
00408CF5: E8 16 E1 FF FF       call 0x406e10
00408CFA: 6A 00                push 0
00408CFC: 6A 00                push 0
00408CFE: 6A 00                push 0
00408D00: 6A 00                push 0
00408D02: 6A 00                push 0
00408D04: 6A 00                push 0
00408D06: 6A 00                push 0
00408D08: E8 33 56 05 00       call 0x45e340
00408D0D: 6A 00                push 0
00408D0F: 6A 00                push 0
00408D11: 6A 00                push 0
00408D13: 6A 00                push 0
00408D15: 6A 00                push 0
00408D17: 6A 00                push 0
00408D19: 6A 03                push 3
00408D1B: E8 80 45 06 00       call 0x46d2a0
00408D20: E8 BB 2B 07 00       call 0x47b8e0
00408D25: 6A 01                push 1
00408D27: E8 C4 81 06 00       call 0x470ef0
00408D2C: 8B 0D B0 10 4E 00    mov ecx, dword ptr [0x4e10b0]
00408D32: 83 C4 3C             add esp, 0x3c
00408D35: 6A 03                push 3
00408D37: E8 A4 89 02 00       call 0x4316e0
00408D3C: B8 10 27 00 00       mov eax, 0x2710
00408D41: C7 05 18 4C 4D 00 00 00 00 00 mov dword ptr [0x4d4c18], 0
00408D4B: 66 A3 C4 8A 4E 00    mov word ptr [0x4e8ac4], ax
00408D51: 66 A3 C6 8A 4E 00    mov word ptr [0x4e8ac6], ax
00408D57: 66 A3 C0 8A 4E 00    mov word ptr [0x4e8ac0], ax
00408D5D: 66 A3 C2 8A 4E 00    mov word ptr [0x4e8ac2], ax
00408D63: B8 E8 03 00 00       mov eax, 0x3e8
00408D68: 66 A3 B0 8A 4E 00    mov word ptr [0x4e8ab0], ax
00408D6E: 66 A3 B2 8A 4E 00    mov word ptr [0x4e8ab2], ax
00408D74: 66 A3 B4 8A 4E 00    mov word ptr [0x4e8ab4], ax
00408D7A: 66 A3 B6 8A 4E 00    mov word ptr [0x4e8ab6], ax
00408D80: 8B 8E 88 D1 00 00    mov ecx, dword ptr [esi + 0xd188]
00408D86: 51                   push ecx
00408D87: E8 24 BE 05 00       call 0x464bb0
00408D8C: 8B 0D B0 10 4E 00    mov ecx, dword ptr [0x4e10b0]
00408D92: 83 C4 04             add esp, 4
00408D95: 6A 00                push 0
00408D97: 6A 00                push 0
00408D99: E8 B2 58 02 00       call 0x42e650
00408D9E: 5E                   pop esi
00408D9F: C3                   ret 
00408DA0: 68 C8 00 00 00       push 0xc8
00408DA5: 8D 4E 18             lea ecx, [esi + 0x18]
00408DA8: C7 86 90 D1 00 00 01 00 00 00 mov dword ptr [esi + 0xd190], 1
00408DB2: C7 86 A8 00 00 00 FF FF FF FF mov dword ptr [esi + 0xa8], 0xffffffff
00408DBC: E8 7F 7F 00 00       call 0x410d40
00408DC1: 8B CE                mov ecx, esi
00408DC3: E8 48 E0 FF FF       call 0x406e10
00408DC8: 8B 15 B0 10 4E 00    mov edx, dword ptr [0x4e10b0]
00408DCE: C6 42 38 00          mov byte ptr [edx + 0x38], 0
00408DD2: E8 B9 38 00 00       call 0x40c690
00408DD7: E8 52 8D 09 00       call 0x4a1b2e
00408DDC: 85 C0                test eax, eax
00408DDE: 74 09                je 0x408de9
00408DE0: 8B 10                mov edx, dword ptr [eax]
00408DE2: 8B C8                mov ecx, eax
00408DE4: FF 52 7C             call dword ptr [edx + 0x7c]
00408DE7: EB 02                jmp 0x408deb
00408DE9: 33 C0                xor eax, eax
00408DEB: 8B 40 20             mov eax, dword ptr [eax + 0x20]
00408DEE: 68 05 01 00 00       push 0x105
00408DF3: 6A 00                push 0
00408DF5: 6A 00                push 0
00408DF7: 50                   push eax
00408DF8: FF 15 64 73 4A 00    call dword ptr [0x4a7364]
00408DFE: 68 5C 48 4B 00       push 0x4b485c
00408E03: 8B CE                mov ecx, esi
00408E05: E8 E6 35 00 00       call 0x40c3f0
00408E0A: 8B 0D 28 24 4F 00    mov ecx, dword ptr [0x4f2428]
00408E10: 8B 41 08             mov eax, dword ptr [ecx + 8]
00408E13: 50                   push eax
00408E14: 8B 10                mov edx, dword ptr [eax]
00408E16: FF 52 0C             call dword ptr [edx + 0xc]
00408E19: 3D 68 08 76 88       cmp eax, 0x88760868
00408E1E: 74 EA                je 0x408e0a
00408E20: A1 28 24 4F 00       mov eax, dword ptr [0x4f2428]
00408E25: 8B 40 08             mov eax, dword ptr [eax + 8]
00408E28: 50                   push eax
00408E29: 8B 08                mov ecx, dword ptr [eax]
00408E2B: FF 51 0C             call dword ptr [ecx + 0xc]
00408E2E: 3D 69 08 76 88       cmp eax, 0x88760869
00408E33: 75 37                jne 0x408e6c
00408E35: 57                   push edi
00408E36: BF 50 7B 4D 00       mov edi, 0x4d7b50
00408E3B: 8B 07                mov eax, dword ptr [edi]
00408E3D: 50                   push eax
00408E3E: 8B 10                mov edx, dword ptr [eax]
00408E40: FF 52 08             call dword ptr [edx + 8]
00408E43: 83 C7 04             add edi, 4
00408E46: 81 FF 60 7B 4D 00    cmp edi, 0x4d7b60
00408E4C: 7C ED                jl 0x408e3b
00408E4E: 8B 0D 28 24 4F 00    mov ecx, dword ptr [0x4f2428]
00408E54: 8B 01                mov eax, dword ptr [ecx]
00408E56: FF 50 28             call dword ptr [eax + 0x28]
00408E59: 8B 0D 28 24 4F 00    mov ecx, dword ptr [0x4f2428]
00408E5F: 8B 51 08             mov edx, dword ptr [ecx + 8]
00408E62: 52                   push edx
00408E63: E8 C8 02 02 00       call 0x429130
00408E68: 83 C4 04             add esp, 4
00408E6B: 5F                   pop edi
00408E6C: A1 78 4C 4D 00       mov eax, dword ptr [0x4d4c78]
00408E71: 50                   push eax
00408E72: 8B 08                mov ecx, dword ptr [eax]
00408E74: FF 91 88 00 00 00    call dword ptr [ecx + 0x88]
00408E7A: 8B 0D B0 10 4E 00    mov ecx, dword ptr [0x4e10b0]
00408E80: 6A 03                push 3
00408E82: E8 59 88 02 00       call 0x4316e0
00408E87: 6A 00                push 0
00408E89: 6A 00                push 0
00408E8B: 6A 00                push 0
00408E8D: 6A 00                push 0
00408E8F: 6A 00                push 0
00408E91: 6A 00                push 0
00408E93: 6A 00                push 0
00408E95: E8 A6 54 05 00       call 0x45e340
00408E9A: 6A 00                push 0
00408E9C: 6A 00                push 0
00408E9E: 6A 00                push 0
00408EA0: 6A 00                push 0
00408EA2: 6A 00                push 0
00408EA4: 6A 00                push 0
00408EA6: 6A 03                push 3
00408EA8: E8 F3 43 06 00       call 0x46d2a0
00408EAD: E8 2E 2A 07 00       call 0x47b8e0
00408EB2: 6A 01                push 1
00408EB4: E8 37 80 06 00       call 0x470ef0
00408EB9: 8B 0D B0 10 4E 00    mov ecx, dword ptr [0x4e10b0]
00408EBF: 83 C4 3C             add esp, 0x3c
00408EC2: 6A 00                push 0
00408EC4: 6A 00                push 0
00408EC6: E8 85 57 02 00       call 0x42e650
00408ECB: 68 CC 00 00 00       push 0xcc
00408ED0: 8B CE                mov ecx, esi
00408ED2: C6 05 5D 06 4F 00 09 mov byte ptr [0x4f065d], 9
00408ED9: E8 A2 02 00 00       call 0x409180
00408EDE: 5E                   pop esi
00408EDF: C3                   ret 
00408EE0: 8C 8C 40 00 A0 8D 40 mov word ptr [eax + eax*2 + 0x408da000], cs
00408EE7: 00 D2                add dl, dl
00408EE9: 8C 40 00             mov word ptr [eax], es
00408EEC: 5C                   pop esp
00408EED: 8C 40 00             mov word ptr [eax], es
