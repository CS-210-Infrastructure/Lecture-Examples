	.file	"sumit.c"
	.intel_syntax noprefix
	.text
	.globl	sumit
	.type	sumit, @function
sumit:
	mov	ecx, 0
	mov	eax, 0
.L2:
	mov	rdx, rcx
	add	rdx, QWORD PTR XARRAY[0+rax*8]
	mov	rcx, rdx
	add	rax, 1
	cmp	rax, 10
	jne	.L2
	mov	rax, rdx
	ret
	.size	sumit, .-sumit
	.globl	XARRAY
	.bss
	.align 32
	.type	XARRAY, @object
	.size	XARRAY, 8192
XARRAY:
	.zero	8192
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
