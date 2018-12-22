	.file	"gdb_test.c"
	.text
	.section	.rodata
.LC0:
	.string	"PentesterAcademyPass"
	.align 4
.LC1:
	.string	"\nWelcome to the SLAE 64-bit course! Please proceed to the next video!"
	.align 4
.LC2:
	.string	"\nIt's time to review those GDB videos again!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$4, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	pushl	-8(%ebp)
	pushl	%eax
	call	strcmp@PLT
	addl	$8, %esp
	testl	%eax, %eax
	jne	.L2
	leal	.LC1@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$4, %esp
	jmp	.L3
.L2:
	leal	.LC2@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$4, %esp
.L3:
	movl	$0, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB1:
	.cfi_startproc
	movl	(%esp), %ebx
	ret
	.cfi_endproc
.LFE1:
	.ident	"GCC: (Debian 8.2.0-12) 8.2.0"
	.section	.note.GNU-stack,"",@progbits
