	.intel_syntax noprefix

	.data

MYBYTES:    
	.quad 0xdeadbeefdeadbeef
	
	.text
	
	.global _start

_start:
	mov rax, 0b1000
	mov rax, QWORD PTR[MYBYTES]
	xor rax, rax
	mov QWORD PTR [MYBYTES], rax

	int3
	
