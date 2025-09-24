        .intel_syntax noprefix

        .section .text

        .global _start
_start:
        popcnt rax, rbx

        int3
	
