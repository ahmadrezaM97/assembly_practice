section	.data
msg db 'Hello, world!', 0xa  ;string to be printed
len equ $ - msg     ;length of the string


section .bss           ;Uninitialized data

	
section .text          ;Code Segment
   global _start
	
_start:                ;User prompt
    mov [msg], byte 'A'v
    mov rax, 4
    mov rbx, 1
    mov rcx, msg
    mov rdx, len
    int 0x80  
   
    mov	eax,1       ;system call number (sys_exit)
    int	0x80        ;call kernel

  