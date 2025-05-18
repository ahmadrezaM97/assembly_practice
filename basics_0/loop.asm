section .data 
    list db 1,2,3,4

section .text 
global _start 



_start:
    MOV eax, 0
    MOV cl, 0
    call loop 

loop:
    MOV bl, [list + eax]
    ADD cl, bl
    INC eax
    CMP eax, 3
    JGE end 
    jmp loop 

end:
    MOV eax, 1
    mov rax, 1
    xor rbx, rbx
    INT 80h 

    