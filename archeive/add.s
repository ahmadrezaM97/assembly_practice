section .data 
    num1 dd 5
    num2 dd 3
    result dd 0 
section .text
    global _start 
_start:
    mov eax, [num1]
    add eax, [num2]
    mov [result], eax
    mov eax, 1
    xor ebx, ebx
    int 0x80 