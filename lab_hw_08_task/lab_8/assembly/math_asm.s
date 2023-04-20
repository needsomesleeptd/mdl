	.file	"math_asm.c"
	.intel_syntax noprefix
	.text
	.globl	sum_asm_32
	.type	sum_asm_32, @function
sum_asm_32:
.LFB0:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	movss	DWORD PTR -36[rbp], xmm0
	movss	DWORD PTR -40[rbp], xmm1
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	pxor	xmm0, xmm0
	movss	DWORD PTR -32[rbp], xmm0
	mov	QWORD PTR -24[rbp], 0
	mov	DWORD PTR -28[rbp], 0
	jmp	.L2
.L3:
	call	clock@PLT
	mov	QWORD PTR -16[rbp], rax
#APP
# 18 "math_asm.c" 1
	fld DWORD PTR -36[rbp]
fld DWORD PTR -40[rbp]
faddp %ST(1), %ST(0)
fstp DWORD PTR -32[rbp]

# 0 "" 2
#NO_APP
	call	clock@PLT
	sub	rax, QWORD PTR -16[rbp]
	add	QWORD PTR -24[rbp], rax
	add	DWORD PTR -28[rbp], 1
.L2:
	cmp	DWORD PTR -28[rbp], 999999
	jle	.L3
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	xor	rdx, QWORD PTR fs:40
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	sum_asm_32, .-sum_asm_32
	.globl	sum_asm_64
	.type	sum_asm_64, @function
sum_asm_64:
.LFB1:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	movsd	QWORD PTR -56[rbp], xmm0
	movsd	QWORD PTR -64[rbp], xmm1
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	pxor	xmm0, xmm0
	movsd	QWORD PTR -32[rbp], xmm0
	mov	QWORD PTR -24[rbp], 0
	mov	DWORD PTR -36[rbp], 0
	jmp	.L7
.L8:
	call	clock@PLT
	mov	QWORD PTR -16[rbp], rax
#APP
# 42 "math_asm.c" 1
	fld QWORD PTR -56[rbp]
fld QWORD PTR -64[rbp]
faddp %ST(1), %ST(0)
fstp QWORD PTR -32[rbp]

# 0 "" 2
#NO_APP
	call	clock@PLT
	sub	rax, QWORD PTR -16[rbp]
	add	QWORD PTR -24[rbp], rax
	add	DWORD PTR -36[rbp], 1
.L7:
	cmp	DWORD PTR -36[rbp], 999999
	jle	.L8
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	xor	rdx, QWORD PTR fs:40
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	sum_asm_64, .-sum_asm_64
	.globl	mul_asm_32
	.type	mul_asm_32, @function
mul_asm_32:
.LFB2:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	movss	DWORD PTR -36[rbp], xmm0
	movss	DWORD PTR -40[rbp], xmm1
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	pxor	xmm0, xmm0
	movss	DWORD PTR -32[rbp], xmm0
	mov	QWORD PTR -24[rbp], 0
	mov	DWORD PTR -28[rbp], 0
	jmp	.L12
.L13:
	call	clock@PLT
	mov	QWORD PTR -16[rbp], rax
#APP
# 66 "math_asm.c" 1
	fld DWORD PTR -36[rbp]
fld DWORD PTR -40[rbp]
fmulp %ST(1), %ST(0)
fstp DWORD PTR -32[rbp]

# 0 "" 2
#NO_APP
	call	clock@PLT
	sub	rax, QWORD PTR -16[rbp]
	add	QWORD PTR -24[rbp], rax
	add	DWORD PTR -28[rbp], 1
.L12:
	cmp	DWORD PTR -28[rbp], 999999
	jle	.L13
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	xor	rdx, QWORD PTR fs:40
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	mul_asm_32, .-mul_asm_32
	.globl	mul_asm_64
	.type	mul_asm_64, @function
mul_asm_64:
.LFB3:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	movsd	QWORD PTR -56[rbp], xmm0
	movsd	QWORD PTR -64[rbp], xmm1
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	pxor	xmm0, xmm0
	movsd	QWORD PTR -32[rbp], xmm0
	mov	QWORD PTR -24[rbp], 0
	mov	DWORD PTR -36[rbp], 0
	jmp	.L17
.L18:
	call	clock@PLT
	mov	QWORD PTR -16[rbp], rax
#APP
# 91 "math_asm.c" 1
	fld QWORD PTR -56[rbp]
fld QWORD PTR -64[rbp]
fmulp %ST(1), %ST(0)
fstp QWORD PTR -32[rbp]

# 0 "" 2
#NO_APP
	call	clock@PLT
	sub	rax, QWORD PTR -16[rbp]
	add	QWORD PTR -24[rbp], rax
	add	DWORD PTR -36[rbp], 1
.L17:
	cmp	DWORD PTR -36[rbp], 999999
	jle	.L18
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	xor	rdx, QWORD PTR fs:40
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	mul_asm_64, .-mul_asm_64
	.globl	sub_asm_32
	.type	sub_asm_32, @function
sub_asm_32:
.LFB4:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	movss	DWORD PTR -36[rbp], xmm0
	movss	DWORD PTR -40[rbp], xmm1
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	pxor	xmm0, xmm0
	movss	DWORD PTR -32[rbp], xmm0
	mov	QWORD PTR -24[rbp], 0
	mov	DWORD PTR -28[rbp], 0
	jmp	.L22
.L23:
	call	clock@PLT
	mov	QWORD PTR -16[rbp], rax
#APP
# 116 "math_asm.c" 1
	fld DWORD PTR -36[rbp]
fld DWORD PTR -40[rbp]
fsubp %ST(1), %ST(0)
fstp DWORD PTR -32[rbp]

# 0 "" 2
#NO_APP
	call	clock@PLT
	sub	rax, QWORD PTR -16[rbp]
	add	QWORD PTR -24[rbp], rax
	add	DWORD PTR -28[rbp], 1
.L22:
	cmp	DWORD PTR -28[rbp], 999999
	jle	.L23
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	xor	rdx, QWORD PTR fs:40
	je	.L25
	call	__stack_chk_fail@PLT
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	sub_asm_32, .-sub_asm_32
	.globl	sub_asm_64
	.type	sub_asm_64, @function
sub_asm_64:
.LFB5:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	movsd	QWORD PTR -56[rbp], xmm0
	movsd	QWORD PTR -64[rbp], xmm1
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	pxor	xmm0, xmm0
	movsd	QWORD PTR -32[rbp], xmm0
	mov	QWORD PTR -24[rbp], 0
	mov	DWORD PTR -36[rbp], 0
	jmp	.L27
.L28:
	call	clock@PLT
	mov	QWORD PTR -16[rbp], rax
#APP
# 141 "math_asm.c" 1
	fld QWORD PTR -56[rbp]
fld QWORD PTR -64[rbp]
fsubp %ST(1), %ST(0)
fstp QWORD PTR -32[rbp]

# 0 "" 2
#NO_APP
	call	clock@PLT
	sub	rax, QWORD PTR -16[rbp]
	add	QWORD PTR -24[rbp], rax
	add	DWORD PTR -36[rbp], 1
.L27:
	cmp	DWORD PTR -36[rbp], 999999
	jle	.L28
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	xor	rdx, QWORD PTR fs:40
	je	.L30
	call	__stack_chk_fail@PLT
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	sub_asm_64, .-sub_asm_64
	.globl	div_asm_32
	.type	div_asm_32, @function
div_asm_32:
.LFB6:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	movss	DWORD PTR -36[rbp], xmm0
	movss	DWORD PTR -40[rbp], xmm1
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	pxor	xmm0, xmm0
	movss	DWORD PTR -32[rbp], xmm0
	mov	QWORD PTR -24[rbp], 0
	mov	DWORD PTR -28[rbp], 0
	jmp	.L32
.L33:
	call	clock@PLT
	mov	QWORD PTR -16[rbp], rax
#APP
# 166 "math_asm.c" 1
	fld DWORD PTR -36[rbp]
fld DWORD PTR -40[rbp]
fdivp %ST(1), %ST(0)
fstp DWORD PTR -32[rbp]

# 0 "" 2
#NO_APP
	call	clock@PLT
	sub	rax, QWORD PTR -16[rbp]
	add	QWORD PTR -24[rbp], rax
	add	DWORD PTR -28[rbp], 1
.L32:
	cmp	DWORD PTR -28[rbp], 999999
	jle	.L33
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	xor	rdx, QWORD PTR fs:40
	je	.L35
	call	__stack_chk_fail@PLT
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	div_asm_32, .-div_asm_32
	.globl	div_asm_64
	.type	div_asm_64, @function
div_asm_64:
.LFB7:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	movsd	QWORD PTR -56[rbp], xmm0
	movsd	QWORD PTR -64[rbp], xmm1
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	pxor	xmm0, xmm0
	movsd	QWORD PTR -32[rbp], xmm0
	mov	QWORD PTR -24[rbp], 0
	mov	DWORD PTR -36[rbp], 0
	jmp	.L37
.L38:
	call	clock@PLT
	mov	QWORD PTR -16[rbp], rax
#APP
# 191 "math_asm.c" 1
	fld QWORD PTR -56[rbp]
fld QWORD PTR -64[rbp]
fdivp %ST(1), %ST(0)
fstp QWORD PTR -32[rbp]

# 0 "" 2
#NO_APP
	call	clock@PLT
	sub	rax, QWORD PTR -16[rbp]
	add	QWORD PTR -24[rbp], rax
	add	DWORD PTR -36[rbp], 1
.L37:
	cmp	DWORD PTR -36[rbp], 999999
	jle	.L38
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	xor	rdx, QWORD PTR fs:40
	je	.L40
	call	__stack_chk_fail@PLT
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	div_asm_64, .-div_asm_64
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
