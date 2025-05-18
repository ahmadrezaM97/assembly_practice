section .data
    ; Define inialized data 
    msg db 'Hello , x86', 0xA
    len equ $ - msg
section .bss
    ; Define uninitialized variables
section .text
    global _start
_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg 
    mov edx, len
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80