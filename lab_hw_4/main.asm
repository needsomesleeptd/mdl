
StkSeg SEGMENT PARA STACK 'STACK'
    DB 200h DUP ('S')
StkSeg ENDS

DataMatrix SEGMENT WORD  'DATA'
    N DB ?
	M DB ?
    Matrix DB 100 DUP ('$')
DataMatrix ENDS
;
Code SEGMENT WORD 'CODE'
    ASSUME CS:Code, DS:DataMatrix


ReadNum proc            ; процедура считывания числа
 
    mov AH, 01h
    int 21h

    mov DH, AL              ; в al cчитано само число как символ
    sub DH, '0'
	mov AH, 02h

    mov DL, ' '; Вывод пробела
    int 21h
    ret
ReadNum endp

NewLinePrint proc            ; процедура считывания числа
	
	mov DL,0Ah; Записываем переход на новую строку
	mov AH,02h
	int 21h

 	mov DL,0Dh; Записываем возврат каретки
	mov AH, 02h
	int 21h
	ret

NewLinePrint endp






InputMatrix proc           ; процедура чтения матрицы
    mov cx, 0              
    mov cl, N              ; сl присваиваем N
    mov bx, 0
    
    cmp cx, 0
    jle out_proc
    
    read_row_loop:         ; чтение строк
        push cx            ; cx предедущего цикла в стек
        mov cl, M
        mov si, 0
    
		 cmp cx, 0
    	jle out_proc
      
        
        read_element_loop:       ; чтение элементов
            call ReadNum
            mov matrix[bx][si], dh      ; записываем число в матрицу из dh, так как прочитали туда
            inc si                      ; si++
            loop read_element_loop     
        call NewLinePrint             ; вывод новой строки
        add bl, 9                   ; bx + M_MAX  
           
        pop cx                          ; достаем из стека cx
        loop read_row_loop              
       
    ret
InputMatrix endp



DeleteOddRows proc           ; удаление всех строк с четными числами
    mov cx, 0              
    mov cl, N              ; сl присваиваем N
    mov bx, 0
    
    cmp cx, 0
    jle out_proc
    
    read_row_loop:         ; чтение строк
        push cx            ; cx предедущего цикла в стек
        mov cl, M
        mov si, 0
    
		 cmp cx, 0
    	jle out_proc
      
        
        read_element_loop:       ; чтение элементов
            call ReadNum
            mov matrix[bx][si], dh      ; записываем число в матрицу из dh, так как прочитали туда
            inc si                      ; si++
            loop read_element_loop     
        call NewLinePrint             ; вывод новой строки
        add bl, 9                   ; bx + M_MAX  
           
        pop cx                          ; достаем из стека cx
        loop read_row_loop              
       
    ret
InputMatrix endp





out_proc:   ; вывход из процедуры по неверным данным 
    ret




Prog:
	mov AX, DataMatrix
	mov DS, AX
    ; ввод размера матрицы

    mov AH, 01h
    int 21h
	sub AL,30h; Вычитание нуля
    mov N, AL;считываем N матрицы

	mov DL,20h; записываем пробел
	mov AH, 02h
	int 21h

    mov AH, 01h
    int 21h
	sub AL,30h
    mov M, AL; считываем M матрицы

	call NewLinePrint

	call InputMatrix





	mov AX, 4c00h
	int 21h; Конец программы

	



	

Code ENDS
    END Prog