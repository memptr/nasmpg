section .data
f: db "./d", 0

section .bss
buf: resb 64

section .text
global _start

_start:
    mov rax, 2
    mov rdi, f
    mov rsi, 0
    mov rdx, 0
    syscall

    mov rbx, rax

    mov rax, 0
    mov rdi, rbx
    mov rsi, buf
    mov rdx, 64
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, buf
    mov rdx, 64
    syscall

    mov rax, 3
    mov rdi, rbx
    syscall

    mov rax, 60
    mov rdi, 0
    syscall