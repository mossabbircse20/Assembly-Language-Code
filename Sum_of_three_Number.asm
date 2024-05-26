.model small
.stack 100h
.data
a db 'input first number : $'
b db 10,13,'input second number : $'
c db 10,13,'input third number : $'
r db 10,13,'Result : $'
.code
main proc 
    ; 1-> single key input
    ; 2-> single key output
    ; 9-> character string output

    mov ax,@data
    mov ds,ax

    mov ah,9
    lea dx,a
    int 21h

    mov ah,1
    int 21h    
    mov bl,al


    mov ah,9
    lea dx,b
    int 21h

    mov ah,1
    int 21h
    mov bh,al
    
    mov ah,9
    lea dx,c 
    int 21h
    
    mov ah,1
    int 21h
    mov cl,al

    add bl,bh
    sub bl,48
    add cl,bl
    sub cl,48
    
    mov ah,9
    lea dx,r
    int 21h
    
    mov ah,2
    mov dl,cl
    int 21h

    mov ah,4ch
    int 21h
    main endp
end main

