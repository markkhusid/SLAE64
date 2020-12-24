	.file	"gdb_test.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"PentesterAcademyPass"
	.align 8
.LC1:
	.string	"\nWelcome to the SLAE 64-bit course! Please proceed to the next video!"
	.align 8
.LC2:
	.string	"\nIt's time to review those GDB videos again!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	QWORD PTR -32[rbp], rsi
	lea	rax, .LC0[rip]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L2
	lea	rdi, .LC1[rip]
	call	puts@PLT
	jmp	.L3
.L2:
	lea	rdi, .LC2[rip]
	call	puts@PLT
.L3:
	mov	eax, 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 10.2.0-19) 10.2.0"
	.section	.note.GNU-stack,"",@progbits
