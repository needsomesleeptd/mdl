	.file	"math_common.c"
	.text
	.section	.rodata
	.align 8
.LC2:
	.string	"To prevent optimization. %f %lf"
	.text
	.globl	sum_no_asm
	.type	sum_no_asm, @function
sum_no_asm:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	fldz
	fstps	-28(%rbp)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, -24(%rbp)
	jmp	.L2
.L3:
	call	clock@PLT
	movq	%rax, -8(%rbp)
	flds	16(%rbp)
	flds	24(%rbp)
	faddp	%st, %st(1)
	fstps	-28(%rbp)
	call	clock@PLT
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	addl	$1, -24(%rbp)
.L2:
	cmpl	$999999, -24(%rbp)
	jle	.L3
	fldz
	fstpl	-16(%rbp)
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, -20(%rbp)
	jmp	.L4
.L5:
	call	clock@PLT
	movq	%rax, -8(%rbp)
	fldl	32(%rbp)
	fldl	40(%rbp)
	faddp	%st, %st(1)
	fstpl	-16(%rbp)
	call	clock@PLT
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	addl	$1, -20(%rbp)
.L4:
	cmpl	$999999, -20(%rbp)
	jle	.L5
	flds	-28(%rbp)
	pushq	-16(%rbp)
	leaq	-8(%rsp), %rsp
	fstpl	(%rsp)
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$16, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	sum_no_asm, .-sum_no_asm
	.globl	mul_no_asm
	.type	mul_no_asm, @function
mul_no_asm:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	fldz
	fstps	-28(%rbp)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, -24(%rbp)
	jmp	.L7
.L8:
	call	clock@PLT
	movq	%rax, -8(%rbp)
	flds	16(%rbp)
	flds	24(%rbp)
	fmulp	%st, %st(1)
	fstps	-28(%rbp)
	call	clock@PLT
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	addl	$1, -24(%rbp)
.L7:
	cmpl	$999999, -24(%rbp)
	jle	.L8
	fldz
	fstpl	-16(%rbp)
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, -20(%rbp)
	jmp	.L9
.L10:
	call	clock@PLT
	movq	%rax, -8(%rbp)
	fldl	32(%rbp)
	fldl	40(%rbp)
	fmulp	%st, %st(1)
	fstpl	-16(%rbp)
	call	clock@PLT
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	addl	$1, -20(%rbp)
.L9:
	cmpl	$999999, -20(%rbp)
	jle	.L10
	flds	-28(%rbp)
	pushq	-16(%rbp)
	leaq	-8(%rsp), %rsp
	fstpl	(%rsp)
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$16, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	mul_no_asm, .-mul_no_asm
	.globl	sub_no_asm
	.type	sub_no_asm, @function
sub_no_asm:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	fldz
	fstps	-28(%rbp)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, -24(%rbp)
	jmp	.L12
.L13:
	call	clock@PLT
	movq	%rax, -8(%rbp)
	flds	16(%rbp)
	flds	24(%rbp)
	fsubrp	%st, %st(1)
	fstps	-28(%rbp)
	call	clock@PLT
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	addl	$1, -24(%rbp)
.L12:
	cmpl	$999999, -24(%rbp)
	jle	.L13
	fldz
	fstpl	-16(%rbp)
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, -20(%rbp)
	jmp	.L14
.L15:
	call	clock@PLT
	movq	%rax, -8(%rbp)
	fldl	32(%rbp)
	fldl	40(%rbp)
	fsubrp	%st, %st(1)
	fstpl	-16(%rbp)
	call	clock@PLT
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	addl	$1, -20(%rbp)
.L14:
	cmpl	$999999, -20(%rbp)
	jle	.L15
	flds	-28(%rbp)
	pushq	-16(%rbp)
	leaq	-8(%rsp), %rsp
	fstpl	(%rsp)
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$16, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	sub_no_asm, .-sub_no_asm
	.globl	div_no_asm
	.type	div_no_asm, @function
div_no_asm:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	fldz
	fstps	-28(%rbp)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, -24(%rbp)
	jmp	.L17
.L18:
	call	clock@PLT
	movq	%rax, -8(%rbp)
	flds	16(%rbp)
	flds	24(%rbp)
	fdivrp	%st, %st(1)
	fstps	-28(%rbp)
	call	clock@PLT
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	addl	$1, -24(%rbp)
.L17:
	cmpl	$999999, -24(%rbp)
	jle	.L18
	fldz
	fstpl	-16(%rbp)
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, -20(%rbp)
	jmp	.L19
.L20:
	call	clock@PLT
	movq	%rax, -8(%rbp)
	fldl	32(%rbp)
	fldl	40(%rbp)
	fdivrp	%st, %st(1)
	fstpl	-16(%rbp)
	call	clock@PLT
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	addl	$1, -20(%rbp)
.L19:
	cmpl	$999999, -20(%rbp)
	jle	.L20
	flds	-28(%rbp)
	pushq	-16(%rbp)
	leaq	-8(%rsp), %rsp
	fstpl	(%rsp)
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$16, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	div_no_asm, .-div_no_asm
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
