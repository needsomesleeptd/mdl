.686
.model flat, c
.stack
.code

public my_strcpy

my_strcpy proc
                ; my_strcpy(edx, ecx, eax)
	;push ebp  
	;mov ebp, esp
	;mov ecx,[ebp - 20]
	;pop edi
	;pop esi
	
	;pop edx ; Сохраняем адрес возврата(при попах ломается стэк вызовов)
	;pop edi
	;pop esi
	;pop ecx
	mov edi,[esp + 4] ; 32 битная система скипаем адрес возврата поэтому + 4
	mov esi,[esp + 8] ; 32 битная система нужно пропустить предыдущий адрес и данный
	mov ecx,[esp + 12]; sizeof(int) == 4 так что еще + 4
	
	
    ;mov esi, ecx; ecx = src
    ;mov edi, edx; edx = dst
    ;mov ecx, eax; eax = len

    cmp edi, esi; если указатели равны то ничего копировать не нужно
    je exit

not_equal : ; строки не перекрываются
    cmp edi, esi; dest < src
	jl copy; если dest < src то все в порядке так как ничего не перекрывается

	mov eax, edi
	sub eax, esi ;Банально считаем разность указателей

	cmp eax, ecx ;Сравниваем дельту с длинной строк(если перекрываются то нужно думать)
	jge copy

complicated_copy : 
	add edi, ecx
	add esi, ecx ;Смещаем все  указатели в конец
	dec esi
	dec edi
	std; df = 1 Необходимо чтобы теперь мы шли с конца в начало

	copy:
    rep movsb ; Побайтово копируем одну строку в другую в зависимости от df
    cld; df = 0 
exit:
    ret
my_strcpy endp

end