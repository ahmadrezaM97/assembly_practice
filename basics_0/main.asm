%include "in_out.asm"


section .data 
    msg db "enter the number"
    len equ $-msg 
    no db "NO", 0
    yes db "YES",0

section .bss 
    num: resb 4
section .text 
    global _start

_start:
    call readNum
    mov [num], rax 

    xor r8, r8 ; set counter to zero
    call loop

loop:
    cmp r8, [num]
    jge printNo   
    mov rax, r8 
    imul rax, rax 
    cmp [num], rax 
    je printYes 
    call loop

printYes:
    mov rsi, r8
    call writeNum 
    jmp Exit 

printNo:
    mov rsi, no 
    call printString
    jmp Exit 


print:
    mov rax, 1
    mov rbx, r8 
    int 0x80

Exit:
    mov rax, 1
    mov rbx, 0
    int 0x80