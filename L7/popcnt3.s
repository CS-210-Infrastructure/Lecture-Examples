        .intel_syntax noprefix

        .section .text

        .global _start
_start:
        popcnt rax, rbx

        mov rax, 60
        mov rdi, 0
        syscall
	
