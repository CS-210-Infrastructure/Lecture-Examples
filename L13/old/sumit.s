	.file	"sumit.c"
	.intel_syntax noprefix
	.text
	.globl	XARRAY
	.bss
	.align 32
	.type	XARRAY, @object
	.size	XARRAY, 8192
XARRAY:
	.zero	8192
	.text
	.globl	sumit
	.type	sumit, @function
sumit:
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR [rbp-24], rdi
	mov	DWORD PTR [rbp-12], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR [rbp-12]
	cdqe
	mov	rax, QWORD PTR XARRAY[0+rax*8]
	add	QWORD PTR [rbp-8], rax
	add	DWORD PTR [rbp-12], 1
.L2:
	mov	eax, DWORD PTR [rbp-12]
	cdqe
	cmp	QWORD PTR [rbp-24], rax
	jg	.L3
	mov	rax, QWORD PTR [rbp-8]
	pop	rbp
	ret
	.size	sumit, .-sumit
	.ident	"GCC: (Ubuntu 13.2.0-23ubuntu4) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
