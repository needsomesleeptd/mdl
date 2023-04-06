.MODEL TINY

CodeSeg SEGMENT
	ASSUME CS:CodeSeg, DS:CodeSeg              
    ORG 100h                                    
                                               
main:   
    jmp init         

    time_passed db 0     
    speed db 01fh     ; скорость автоповтора
    old_interupt dd ? ; адрес старого прерывания  
    
my_interupt:
    pushf    
    call CS:old_interupt
    
    mov ah, 02h       
    int 1ah           
                       
    cmp dh, time_passed   ; Прошла ли секунда?
	je end_my_interupt ; Нет
    mov time_passed, dh   
    
    mov al, 0F3h        
	out 60h, al       

	mov al, speed     ; новая скорость автоповтора
	out 60h, al       
    
    dec speed         
	test speed, 01fh  
	jz reset        
	jmp end_my_interupt     
    
    reset:
        mov speed, 01fh 
    
    end_my_interupt:
        IRET
    
init:
    mov ax, 3508h     ; Ловим прерырвание на ввод символа
    int 21h ; ES – сегмент обработчика прерывания BX – смещение обработчика прерывания
    
    mov dx, offset my_interupt ;выход если програм запущена 2 раз
	cmp bx, dx
    je uninstall
    
    jmp install
    
install:      
    mov word ptr old_interupt, BX 	   

	mov word ptr old_interupt + 2, ES
    
    mov ax, 2508h

	mov dx, offset my_interupt  ; Сегмент у нас и так тот что нужен
    int 21h ; DS – сегмент обработчика прерывания DX – смещение обработчика прерывания  
    
    mov dx, offset init ; Удалить все после init 
	int 27h
    
uninstall:    
    pushf 

    mov dx, word ptr ES:old_interupt
	mov ds, word ptr ES:old_interupt + 2
	
	mov ax, 2508h
	int 21h
    
    mov al, 0F3h
	out 60h, al
	mov al, 0 ; Установим скорость в 0000
	out 60h, al
    
    popf
    
    mov ah, 49h ; Освободим память
	int 21h
    
    mov ax, 4c00h
    int 21h
CodeSeg ENDS    
END main