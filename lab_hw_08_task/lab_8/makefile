# Пояснение про некоторые опции gcc:
# -m80387 - заставляет компилятор генерировать инструкции для операций с плавающей запятой
# -mno-80387 - заставляет компилятор генерировать инструкции, использующие библиотечные вызовы для операций с плавающей запятой
# -mno-sse - запрещаем компилятору использовать регистры XMM/MMX и инструкции SSE

#div

#fld DWORD PTR -36[rbp]
#fld DWORD PTR -40[rbp]
#fdivp %ST(1), %ST(0)
#fstp DWORD PTR -32[rbp]


#call	clock@PLT
 #	movq	%rax, -8(%rbp)
 #	flds	16(%rbp)
 #	flds	24(%rbp)
 #	fdivrp	%st, %st(1)
 #	fstps	-12(%rbp)
 #	call	clock@PLT
 #	subq	-8(%rbp), %rax
 #	movq	%rax, %rdx
 #	movq	-24(%rbp), %rax
 #	movq	(%rax), %rax
 #	addq	%rax, %rdx
 #	movq	-24(%rbp), %rax
 #	movq	%rdx, (%rax)
 #	addl	$1, -16(%rbp)


#add
#	fld QWORD PTR -56[rbp]
 #fld QWORD PTR -64[rbp]
 #faddp %ST(1), %ST(0)
 #fstp QWORD PTR -32[rbp]

#.L3:
 #	call	clock@PLT
 #	movq	%rax, -8(%rbp)
 #	flds	16(%rbp)
 #	flds	24(%rbp)
 #	faddp	%st, %st(1)
 #	fstps	-12(%rbp)
 #	call	clock@PLT
 #	subq	-8(%rbp), %rax
 #	movq	%rax, %rdx
 #	movq	-24(%rbp), %rax
 #	movq	(%rax), %rax
 #	addq	%rax, %rdx
 #	movq	-24(%rbp), %rax
 #	movq	%rdx, (%rax)
 #	addl	$1, -16(%rbp)

_MAKE_OUT_DIR_ := $(shell mkdir -p out)
_MAKE_ASM_DIR_ := $(shell mkdir -p assembly)

TARGET := app.exe
OBJ_FILES := math_asm.o math_common.o comp_sin.o main.o


.PHONY: assembly clean

math.exe : math_asm.o math_common.o  main.o comp_sin.o
	@gcc -std=c11 math_asm.o math_common.o comp_sin.o main.o -o $@

main.o: main.c
	@gcc -std=c11 -o $@ -c $<


math_asm.o: math_asm.c math_asm.h measurements.h
	@gcc -std=c11 -masm=intel -O0 -c $<


math_common.o: math_common.c math_common.h measurements.h
	@gcc -std=c11 -m80387 -mno-sse -O0 -c $<


comp_sin.o: comp_sin.c comp_sin.h
	@gcc -std=c11 -masm=intel -O0 -c $<


$(TARGET): $(OBJ_FILES)
	gcc -o $(TARGET) $(OBJ_FILES) -lm


assembly:
	gcc -S math_asm.c -std=c11 -masm=intel -O0 -o assembly/math_asm.s
	gcc -S math_common.c -std=c11 -m80387 -mno-sse -O0 -o assembly/math_common.s




clean:
	rm -rf *.exe *.o assembly/*

