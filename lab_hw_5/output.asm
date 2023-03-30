
EXTRN UDEC : BYTE
EXTRN SHEX : BYTE

EXTRN TO_UNSIGNED_DEC : NEAR
EXTRN TO_SIGNED_HEX : NEAR

EXTRN NewLinePrint : NEAR


PUBLIC OUTPUT_UDEC
public OUTPUT_SHEX

CODESEG SEGMENT PARA PUBLIC 'CODE'
    ASSUME CS:CODESEG



OUTPUT_UDEC PROC NEAR
    call NewLinePrint
    call NewLinePrint
    call TO_UNSIGNED_DEC
    mov ah, 09h
    mov dx, OFFSET UDEC
    int 21h
    call NewLinePrint
    call NewLinePrint
    ret


OUTPUT_UDEC endp


OUTPUT_SHEX PROC NEAR
    call NewLinePrint
    call NewLinePrint
    call TO_SIGNED_HEX
    mov ah, 09h
    mov dx, OFFSET SHEX
    int 21h
    call NewLinePrint
    call NewLinePrint
    ret


OUTPUT_SHEX endp



CODESEG ENDS
end