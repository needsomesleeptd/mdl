# Пояснение про некоторые опции gcc:
# -m80387 - заставляет компилятор генерировать инструкции для операций с плавающей запятой
# -mno-80387 - заставляет компилятор генерировать инструкции, использующие библиотечные вызовы для операций с плавающей запятой
# -mno-sse - запрещаем компилятору использовать регистры XMM/MMX и инструкции SSE

# Ключ -mno-sse ОПЦИОНАЛЕН!!!!! (по крайней мере, на компьютере автора) Без него компилятор генерирует те же самые инструкции 
# (не используя регистры XMM/MMX и инструкции SSE), потому что ключ -m80387 уже заставляет компилятор отключить SSE.
# Из последней ссылки из readme к лабе: "При их компиляции с параметром -O0 gcc использует регистры XMM/MMX и инструкции SSE, 
# если специально не заданы параметры -mno-sse (и другие)".
# Слово "другие", видимо, является ключевым.

# Также по ходу дела выяснилось, что для распознавания интеловского синтаксиса (а не нативного под gcc) достаточно компиляции с опцией -masm=intel,
# и не обязательно в начале каждой вставки указывать ".intel_syntax noprefix".

_MAKE_OUT_DIR_ := $(shell mkdir -p out)
_MAKE_ASM_DIR_ := $(shell mkdir -p assembly)

TARGET := app.exe
OBJ_FILES := math_asm.o math_common.o comp_sin.o main.o


.PHONY: assembly clean


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

