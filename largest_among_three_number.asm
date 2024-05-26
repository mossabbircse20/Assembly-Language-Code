.model small
.stack 100h
.data
f db 'Input first number : $'
s db 10,13,'Input second number : $'
t db 10,13,'Input third number : $'
g db 10,13,'Greatest number : $'
num1 db ?
num2 db ?
num3 db ?

.code

main proc
    mov ax,@data
    mov ds,ax

    mov ah,9
    lea dx,f
    int 21h
    mov ah,1
    mov bl,al
    int 21h
    
     
    mov ah,9
    lea dx,s
    int 21h
    mov ah,1
    mov bh,al
    int 21h
    
    mov ah,9
    lea dx,t
    int 21h
    mov ah,1
    mov cl,al
    int 21h
    
    cmp bl,bh
    jge a
    
    b:
    cmp bh,cl
    jge c
    
    mov ah,9
    lea dx,g
    int 21h
    mov ah,2
    mov num3,cl
    add num3,15
    mov dl,num3
    int 21h
    jmp exit
    
    c:
    mov ah,9
    lea dx,g
    int 21h
    mov ah,2
    mov num2,bh
    add num2,15
    mov dl,num2
    int 21h
    jmp exit
    
    a:
    cmp bl,cl
    jge d
    
    mov ah,9
    lea dx,g
    int 21h
    mov ah,2
    mov num3,cl
    add num3,15
    mov dl,num3
    int 21h
    jmp exit
    
    d:
    mov ah,9
    lea dx,g
    int 21h
    mov ah,2
    mov num1,bl
    add num1,15
    mov dl,num1
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main




