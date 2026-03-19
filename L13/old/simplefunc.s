	.file	"simplefunc.c"
	.intel_syntax noprefix
	.text
	.globl	func1
	.type	func1, @function
func1:
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR [rbp-20], edi
	mov	DWORD PTR [rbp-24], esi
	mov	DWORD PTR [rbp-28], edx
	mov	edx, DWORD PTR [rbp-20]
	mov	eax, DWORD PTR [rbp-28]
	add	edx, eax
	mov	eax, DWORD PTR [rbp-24]
	add	eax, edx
	mov	DWORD PTR [rbp-4], eax
	mov	edx, DWORD PTR [rbp-4]
	mov	eax, DWORD PTR [rbp-28]
	add	eax, edx
	pop	rbp
	ret
	.size	func1, .-func1
	.section	.rodata
.LC0:
	.string	"%d %d %d\n"
	.text
	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR [rbp-4], 3
	mov	DWORD PTR [rbp-8], 4
	mov	ecx, DWORD PTR [rbp-8]
	mov	eax, DWORD PTR [rbp-4]
	mov	edx, 20
	mov	esi, ecx
	mov	edi, eax
	call	func1
	mov	DWORD PTR [rbp-12], eax
	mov	ecx, DWORD PTR [rbp-12]
	mov	edx, DWORD PTR [rbp-8]
	mov	eax, DWORD PTR [rbp-4]
	mov	esi, eax
	mov	edi, OFFSET FLAT:.LC0
	mov	eax, 0
	call	printf
	mov	eax, 0
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.2.0-23ubuntu4) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
