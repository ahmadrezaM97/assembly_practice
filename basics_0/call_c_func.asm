extern printf 
extern exit 

section .data 
    msg DD "Ahmad",0
    fmt db "output is %s",10,0

section .text 
global main 

main:
    PUSH msg 
    PUSH fmt 
    CALL printf
    PUSH 1
    CALL exit