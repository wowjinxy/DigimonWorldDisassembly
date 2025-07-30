sub_004A1F8Ah PROC
    push ebp
    mov ebp, esp
    push -1
    push 4AA838h
    push 4A2162h
    mov eax, dword ptr fs:[0]
    push eax
    mov dword ptr fs:[0], esp
    sub esp, 68h
    push ebx
    push esi
    push edi
    mov dword ptr [ebp - 18h], esp
    xor ebx, ebx
    mov dword ptr [ebp - 4], ebx
    push 2
    call dword ptr [4A7324h]
    pop ecx
    or dword ptr [4F4C78h], FFFFFFFFh
    or dword ptr [4F4C7Ch], FFFFFFFFh
    call dword ptr [4A7330h]
    mov ecx, dword ptr [4F4C3Ch]
    mov dword ptr [eax], ecx
    call dword ptr [4A72A0h]
    mov ecx, dword ptr [4F4C38h]
    mov dword ptr [eax], ecx
    mov eax, dword ptr [4A72A4h]
    mov eax, dword ptr [eax]
    mov dword ptr [4F4C74h], eax
    call 4A2195h
    cmp dword ptr [4C9370h], ebx
    jne 4A200Dh
    push 4A2192h
    call dword ptr [4A72A8h]
    pop ecx
    call 4A2180h
    push 4B01ECh
    push 4B01E8h
    call 4A217Ah
    mov eax, dword ptr [4F4C34h]
    mov dword ptr [ebp - 6Ch], eax
    lea eax, [ebp - 6Ch]
    push eax
    push dword ptr [4F4C30h]
    lea eax, [ebp - 64h]
    push eax
    lea eax, [ebp - 70h]
    push eax
    lea eax, [ebp - 60h]
    push eax
    call dword ptr [4A72B0h]
    push 4B01E4h
    push 4B0000h
    call 4A217Ah
    add esp, 24h
    mov eax, dword ptr [4A72B4h]
    mov esi, dword ptr [eax]
    mov dword ptr [ebp - 74h], esi
    cmp byte ptr [esi], 22h
    jne 4A20A0h
    inc esi
    mov dword ptr [ebp - 74h], esi
    mov al, byte ptr [esi]
    cmp al, bl
    je 4A2074h
    cmp al, 22h
    jne 4A2066h
    cmp byte ptr [esi], 22h
    jne 4A207Dh
    inc esi
    mov dword ptr [ebp - 74h], esi
    mov al, byte ptr [esi]
    cmp al, bl
    je 4A2087h
    cmp al, 20h
    jbe 4A2079h
    mov dword ptr [ebp - 30h], ebx
    lea eax, [ebp - 5Ch]
    push eax
    call dword ptr [4A7064h]
    test byte ptr [ebp - 30h], 1
    je 4A20ABh
    movzx eax, word ptr [ebp - 2Ch]
    jmp 4A20AEh
    cmp byte ptr [esi], 20h
    jbe 4A207Dh
    inc esi
    mov dword ptr [ebp - 74h], esi
    jmp 4A20A0h
    push Ah
    pop eax
    push eax
    push esi
    push ebx
    push ebx
    call dword ptr [4A7054h]
    push eax
    call 4A219Ch
    mov dword ptr [ebp - 68h], eax
    push eax
    call dword ptr [4A72D4h]
    mov eax, dword ptr [ebp - 14h]
    mov ecx, dword ptr [eax]
    mov ecx, dword ptr [ecx]
    mov dword ptr [ebp - 78h], ecx
    push eax
    push ecx
    call 4A2174h
    pop ecx
    pop ecx
    ret
    ret
sub_004A1F8Ah ENDP