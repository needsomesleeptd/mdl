	.file	"main_with_asm.cpp"
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.text
	.globl	_Z8get_timelPKc
	.type	_Z8get_timelPKc, @function
_Z8get_timelPKc:
.LFB1751:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$999, -8(%rbp)
	jle	.L2
	movq	-8(%rbp), %rcx
	movabsq	$4835703278458516699, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$18, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm0
	jmp	.L3
.L2:
	cvtsi2sdq	-8(%rbp), %xmm0
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1751:
	.size	_Z8get_timelPKc, .-_Z8get_timelPKc
	.section	.rodata
.LC2:
	.string	"ms"
.LC3:
	.string	" - time_float_sum"
.LC4:
	.string	" - time_float_mul"
.LC5:
	.string	" - time_double_sum"
.LC6:
	.string	" - time_double_mul"
.LC7:
	.string	" - time_float_sum_asm"
.LC8:
	.string	" - time_float_mul_asm"
.LC9:
	.string	" - time_double_sum_asm"
.LC10:
	.string	" - time_double_mul_asm"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1757:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	$1000, -100(%rbp)
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	.LC1(%rip), %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	.LC1(%rip), %xmm0
	movsd	%xmm0, -72(%rbp)
	cvtsd2ss	-72(%rbp), %xmm1
	cvtsd2ss	-80(%rbp), %xmm0
	movl	-100(%rbp), %eax
	movl	%eax, %esi
	leaq	_Z3sumIfET_S0_S0_(%rip), %rdi
	call	_Z12measure_timeIfPFfffEElT0_T_S3_i
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -64(%rbp)
	movl	-100(%rbp), %edx
	movsd	-88(%rbp), %xmm0
	movq	-96(%rbp), %rax
	movl	%edx, %esi
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	_Z3sumIdET_S0_S0_(%rip), %rdi
	call	_Z12measure_timeIdPFdddEElT0_T_S3_i
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -56(%rbp)
	cvtsd2ss	-72(%rbp), %xmm1
	cvtsd2ss	-80(%rbp), %xmm0
	movl	-100(%rbp), %eax
	movl	%eax, %esi
	leaq	_Z3mulIfET_S0_S0_(%rip), %rdi
	call	_Z12measure_timeIfPFfffEElT0_T_S3_i
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-100(%rbp), %edx
	movsd	-88(%rbp), %xmm0
	movq	-96(%rbp), %rax
	movl	%edx, %esi
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	_Z3mulIdET_S0_S0_(%rip), %rdi
	call	_Z12measure_timeIdPFdddEElT0_T_S3_i
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -40(%rbp)
	cvtsd2ss	-72(%rbp), %xmm1
	cvtsd2ss	-80(%rbp), %xmm0
	movl	-100(%rbp), %eax
	movl	%eax, %esi
	leaq	_Z7sum_asmIfET_S0_S0_(%rip), %rdi
	call	_Z12measure_timeIfPFfffEElT0_T_S3_i
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -32(%rbp)
	movl	-100(%rbp), %edx
	movsd	-88(%rbp), %xmm0
	movq	-96(%rbp), %rax
	movl	%edx, %esi
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	_Z7sum_asmIdET_S0_S0_(%rip), %rdi
	call	_Z12measure_timeIdPFdddEElT0_T_S3_i
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -24(%rbp)
	cvtsd2ss	-72(%rbp), %xmm1
	cvtsd2ss	-80(%rbp), %xmm0
	movl	-100(%rbp), %eax
	movl	%eax, %esi
	leaq	_Z7mul_asmIfET_S0_S0_(%rip), %rdi
	call	_Z12measure_timeIfPFfffEElT0_T_S3_i
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	-100(%rbp), %edx
	movsd	-88(%rbp), %xmm0
	movq	-96(%rbp), %rax
	movl	%edx, %esi
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	_Z7mul_asmIdET_S0_S0_(%rip), %rdi
	call	_Z12measure_timeIdPFdddEElT0_T_S3_i
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEd@PLT
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEd@PLT
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEd@PLT
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEd@PLT
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEd@PLT
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEd@PLT
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEd@PLT
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEd@PLT
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC10(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1757:
	.size	main, .-main
	.section	.text._Z3sumIfET_S0_S0_,"axG",@progbits,_Z3sumIfET_S0_S0_,comdat
	.weak	_Z3sumIfET_S0_S0_
	.type	_Z3sumIfET_S0_S0_, @function
_Z3sumIfET_S0_S0_:
.LFB1994:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	movss	-4(%rbp), %xmm0
	addss	-8(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1994:
	.size	_Z3sumIfET_S0_S0_, .-_Z3sumIfET_S0_S0_
	.section	.text._Z12measure_timeIfPFfffEElT0_T_S3_i,"axG",@progbits,_Z12measure_timeIfPFfffEElT0_T_S3_i,comdat
	.weak	_Z12measure_timeIfPFfffEElT0_T_S3_i
	.type	_Z12measure_timeIfPFfffEElT0_T_S3_i, @function
_Z12measure_timeIfPFfffEElT0_T_S3_i:
.LFB1995:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movss	%xmm0, -44(%rbp)
	movss	%xmm1, -48(%rbp)
	movl	%esi, -52(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -24(%rbp)
.L10:
	movl	-24(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.L9
	call	clock@PLT
	movq	%rax, -8(%rbp)
	movss	-48(%rbp), %xmm0
	movl	-44(%rbp), %eax
	movq	-40(%rbp), %rdx
	movaps	%xmm0, %xmm1
	movd	%eax, %xmm0
	call	*%rdx
	movd	%xmm0, %eax
	movl	%eax, -20(%rbp)
	call	clock@PLT
	subq	-8(%rbp), %rax
	addq	%rax, -16(%rbp)
	addl	$1, -24(%rbp)
	jmp	.L10
.L9:
	cmpq	$999, -16(%rbp)
	jle	.L11
	movq	-16(%rbp), %rcx
	movabsq	$4835703278458516699, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$18, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	jmp	.L12
.L11:
	movq	-16(%rbp), %rax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1995:
	.size	_Z12measure_timeIfPFfffEElT0_T_S3_i, .-_Z12measure_timeIfPFfffEElT0_T_S3_i
	.section	.text._Z3sumIdET_S0_S0_,"axG",@progbits,_Z3sumIdET_S0_S0_,comdat
	.weak	_Z3sumIdET_S0_S0_
	.type	_Z3sumIdET_S0_S0_, @function
_Z3sumIdET_S0_S0_:
.LFB1996:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	-8(%rbp), %xmm0
	addsd	-16(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1996:
	.size	_Z3sumIdET_S0_S0_, .-_Z3sumIdET_S0_S0_
	.section	.text._Z12measure_timeIdPFdddEElT0_T_S3_i,"axG",@progbits,_Z12measure_timeIdPFdddEElT0_T_S3_i,comdat
	.weak	_Z12measure_timeIdPFdddEElT0_T_S3_i
	.type	_Z12measure_timeIdPFdddEElT0_T_S3_i, @function
_Z12measure_timeIdPFdddEElT0_T_S3_i:
.LFB1997:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm1, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
.L17:
	movl	-28(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.L16
	call	clock@PLT
	movq	%rax, -16(%rbp)
	movsd	-56(%rbp), %xmm0
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	*%rdx
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	call	clock@PLT
	subq	-16(%rbp), %rax
	addq	%rax, -24(%rbp)
	addl	$1, -28(%rbp)
	jmp	.L17
.L16:
	cmpq	$999, -24(%rbp)
	jle	.L18
	movq	-24(%rbp), %rcx
	movabsq	$4835703278458516699, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$18, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	jmp	.L19
.L18:
	movq	-24(%rbp), %rax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1997:
	.size	_Z12measure_timeIdPFdddEElT0_T_S3_i, .-_Z12measure_timeIdPFdddEElT0_T_S3_i
	.section	.text._Z3mulIfET_S0_S0_,"axG",@progbits,_Z3mulIfET_S0_S0_,comdat
	.weak	_Z3mulIfET_S0_S0_
	.type	_Z3mulIfET_S0_S0_, @function
_Z3mulIfET_S0_S0_:
.LFB1998:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	movss	-4(%rbp), %xmm0
	mulss	-8(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1998:
	.size	_Z3mulIfET_S0_S0_, .-_Z3mulIfET_S0_S0_
	.section	.text._Z3mulIdET_S0_S0_,"axG",@progbits,_Z3mulIdET_S0_S0_,comdat
	.weak	_Z3mulIdET_S0_S0_
	.type	_Z3mulIdET_S0_S0_, @function
_Z3mulIdET_S0_S0_:
.LFB1999:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	-8(%rbp), %xmm0
	mulsd	-16(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1999:
	.size	_Z3mulIdET_S0_S0_, .-_Z3mulIdET_S0_S0_
	.section	.text._Z7sum_asmIfET_S0_S0_,"axG",@progbits,_Z7sum_asmIfET_S0_S0_,comdat
	.weak	_Z7sum_asmIfET_S0_S0_
	.type	_Z7sum_asmIfET_S0_S0_, @function
_Z7sum_asmIfET_S0_S0_:
.LFB2000:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movss	%xmm0, -20(%rbp)
	movss	%xmm1, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
#APP
# 74 "main_with_asm.cpp" 1
	fld -20(%rbp)
fld -24(%rbp)
faddp %ST(1), %ST(0)
fstp -12(%rbp)

# 0 "" 2
#NO_APP
	movl	-12(%rbp), %eax
	movd	%eax, %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEf@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movss	-12(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L26
	call	__stack_chk_fail@PLT
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2000:
	.size	_Z7sum_asmIfET_S0_S0_, .-_Z7sum_asmIfET_S0_S0_
	.section	.text._Z7sum_asmIdET_S0_S0_,"axG",@progbits,_Z7sum_asmIdET_S0_S0_,comdat
	.weak	_Z7sum_asmIdET_S0_S0_
	.type	_Z7sum_asmIdET_S0_S0_, @function
_Z7sum_asmIdET_S0_S0_:
.LFB2001:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
#APP
# 74 "main_with_asm.cpp" 1
	fld -24(%rbp)
fld -32(%rbp)
faddp %ST(1), %ST(0)
fstp -16(%rbp)

# 0 "" 2
#NO_APP
	movq	-16(%rbp), %rax
	movq	%rax, %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEd@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movsd	-16(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L29
	call	__stack_chk_fail@PLT
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2001:
	.size	_Z7sum_asmIdET_S0_S0_, .-_Z7sum_asmIdET_S0_S0_
	.section	.text._Z7mul_asmIfET_S0_S0_,"axG",@progbits,_Z7mul_asmIfET_S0_S0_,comdat
	.weak	_Z7mul_asmIfET_S0_S0_
	.type	_Z7mul_asmIfET_S0_S0_, @function
_Z7mul_asmIfET_S0_S0_:
.LFB2002:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movss	%xmm0, -20(%rbp)
	movss	%xmm1, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
#APP
# 57 "main_with_asm.cpp" 1
	fld -20(%rbp)
fld -24(%rbp)
fmulp %ST(1), %ST(0)
fstp -12(%rbp)

# 0 "" 2
#NO_APP
	movss	-12(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L32
	call	__stack_chk_fail@PLT
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2002:
	.size	_Z7mul_asmIfET_S0_S0_, .-_Z7mul_asmIfET_S0_S0_
	.section	.text._Z7mul_asmIdET_S0_S0_,"axG",@progbits,_Z7mul_asmIdET_S0_S0_,comdat
	.weak	_Z7mul_asmIdET_S0_S0_
	.type	_Z7mul_asmIdET_S0_S0_, @function
_Z7mul_asmIdET_S0_S0_:
.LFB2003:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
#APP
# 57 "main_with_asm.cpp" 1
	fld -24(%rbp)
fld -32(%rbp)
fmulp %ST(1), %ST(0)
fstp -16(%rbp)

# 0 "" 2
#NO_APP
	movsd	-16(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L35
	call	__stack_chk_fail@PLT
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2003:
	.size	_Z7mul_asmIdET_S0_S0_, .-_Z7mul_asmIdET_S0_S0_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2258:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L38
	cmpl	$65535, -8(%rbp)
	jne	.L38
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L38:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2258:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z8get_timelPKc, @function
_GLOBAL__sub_I__Z8get_timelPKc:
.LFB2259:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2259:
	.size	_GLOBAL__sub_I__Z8get_timelPKc, .-_GLOBAL__sub_I__Z8get_timelPKc
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z8get_timelPKc
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1079574528
	.align 8
.LC1:
	.long	0
	.long	1090027360
	.hidden	__dso_handle
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
