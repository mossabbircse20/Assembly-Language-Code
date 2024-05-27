.model small
.stack 100h
.data
lp db 'Printing a to z : $'
.code
main proc 
    ; 1-> single key input
    ; 2-> single key output
    ; 9-> character string output

    mov ax,@data
    mov ds,ax

    mov ah,9
    lea dx,lp
    int 21h

    mov cx,26
    mov ah,2
    mov dl,'a'

    level1:
    int 21h
    inc dl
    loop level1

    mov ah,4ch
    int 21h
    main endp
    end main

