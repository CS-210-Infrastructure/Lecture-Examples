	.file	"recurse.c"
	.intel_syntax noprefix
	.text
	.globl	mul
	.type	mul, @function
mul:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR [rbp-8], rdi
	mov	QWORD PTR [rbp-16], rsi
	cmp	QWORD PTR [rbp-16], 0
	jne	.L2
	mov	eax, 0
	jmp	.L3
.L2:
	mov	rax, QWORD PTR [rbp-16]
	lea	rdx, [rax-1]
	mov	rax, QWORD PTR [rbp-8]
	mov	rsi, rdx
	mov	rdi, rax
	call	mul
	mov	edx, eax
	mov	rax, QWORD PTR [rbp-8]
	add	eax, edx
.L3:
	leave
	ret
	.size	mul, .-mul
	.section	.rodata
.LC0:
	.string	"final: %lld\n"
	.text
	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	esi, 3
	mov	edi, 3
	call	mul
	cdqe
	mov	QWORD PTR [rbp-8], rax
	mov	rax, QWORD PTR [rbp-8]
	mov	rsi, rax
	mov	edi, OFFSET FLAT:.LC0
	mov	eax, 0
	call	printf
	mov	eax, 0
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
