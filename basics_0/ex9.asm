section .data 
    num DB 1
    num2 DB 2 


section .text
    global _start 

; eax
; ebx
; ecx
; edx

_start:
    MOV bh, [num]
    MOV ch, [num2]
    MOV eax, 1
    INT 80h

