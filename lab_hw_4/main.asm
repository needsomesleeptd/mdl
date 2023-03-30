
StkSeg SEGMENT PARA STACK 'STACK'
    DB 200h DUP ('S')
StkSeg ENDS

DataMatrix SEGMENT WORD  'DATA'
    N DB ?
	M DB ?
    Matrix DB 100 DUP ('$')
	N_MAX DB 1 DUP(9)
	M_MAX DB 1 DUP(9)
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

PrintNum proc            ; процедура вывода числа
 
   

	mov dl,al
	mov ah, 02h
	add dl,'0'
	int 21h

	mov ah, 02h
    mov dl, ' '; Вывод пробела
    int 21h
    ret
PrintNum endp



NewLinePrint proc            ; процедура считывания числа
	
	mov DL,0Ah; Записываем переход на новую строку
	mov AH,02h
	int 21h

 	mov DL,0Dh; Записываем возврат каретки
	mov AH, 02h
	int 21h
	mov dl,0
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
        add bl, M_MAX                   ; bx + M_MAX  
           
        pop cx                          ; достаем из стека cx
        loop read_row_loop              
       
    ret
InputMatrix endp


OutputMatrix proc           ; процедура чтения матрицы
	call NewLinePrint
    mov cx, 0              
    mov cl, N              ; сl присваиваем N
    mov bx, 0
    
    cmp cx, 0
    jle out_proc
    
    write_row_loop:         ; чтение строк
        push cx            ; cx предедущего цикла в стек
        mov cl, M
        mov si, 0
    
		cmp cx, 0
    	jle out_proc
      
        
        write_element_loop:       ; чтение элементов
		  	mov al,matrix[bx][si]
            call PrintNum
            inc si                      ; si++
            loop write_element_loop     
        call NewLinePrint             ; вывод новой строки
        add bl, M_MAX                   ; bx + M_MAX  
           
        pop cx                          ; достаем из стека cx
        loop write_row_loop              
       
    ret
OutputMatrix endp


IsOdd proc
	AND al,1b
	cmp al,0

	je not_odd; Если равен 0 то число не четное
	is_odd:
		mov ax,1; Число не четное
		jmp out_proc
	not_odd:
		mov ax,0;Число четное
		jmp out_proc

	 

IsOdd endp








DeleteRow proc
	push bx
	push si
	
	mov al,N
	dec al;индекс начала последней строки(в элементах)
	mul M_MAX
	cmp bx,ax
    je EndLoop


	mov ax,bx
	div N_MAX

	mov ch,0
	mov cl,N
	sub cl,al
	dec cl


	RowMoveLoop:
		push cx
		mov cl, M
		mov si,0
		ElemMoveLoop:       ; чтение элементов
			mov al,matrix[bx][si + 9]
			mov matrix[bx][si], al
			inc si                     
		loop ElemMoveLoop

		add bx,9

		pop cx
		
	loop RowMoveLoop

	EndLoop:
		pop bx
		pop si
		dec N; Уменьшаем количество имеющихся строк
		;sub bx,9
		ret
	
	
	
DeleteRow endp	



DeleteOddRows proc           ; удаление всех строк с четными числами
    mov cx, 0              
    mov cl, N              ; сl присваиваем N
    mov bx, 0
    
    cmp cx, 0
    jle out_proc
    
    check_row_loop:         ; чтение строк
        push cx            ; cx предедущего цикла в стек
        mov cl, M
        mov si, 0
    
		cmp cx, 0
		mov dx,0
    	jle out_proc

		
      
        
        check_element_loop:       ; чтение элементов
            
			mov al,matrix[bx][si];
			call IsOdd
			add dl,al
            inc si                      ; si++
            loop check_element_loop     
		
		cmp dl,M
		je call_delete_rows
		jmp end_deletion
		call_delete_rows:
			call DeleteRow
			pop cx
			jmp DeleteOddRows

		end_deletion:
		add bl, 9                   ; bx + M_MAX  
        
		

        pop cx
        loop check_row_loop              
       
    ret
DeleteOddRows endp





out_proc:   ; вывход из процедуры по неверным данным 
    ret


start_checking_over:
	mov bx,0
	mov si,0
	pop cx
	mov cx,0
	mov cl,N_MAX
	push cx
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
	call DeleteOddRows
	call OutputMatrix





	mov AX, 4c00h
	int 21h; Конец программы

	



	

Code ENDS
    END Prog