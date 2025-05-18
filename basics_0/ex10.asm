section .data
    string1 db "ABA",0
    string2 db "CDE",0
    list db 1,2,3


section .text 
global _start 


_start:
    MOV bl, [string1]
    MOV eax, 1
    INT 80h