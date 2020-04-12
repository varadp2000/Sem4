.model small
.data
        phrase db 13,10,'Enter password: ',13,10,'$'
        correct db 13,10,'Password is correct$'
        incorrect db 13,10,'Entered password is wrong$'
        pwd db 'password123'
.code
 start: mov ax,@data
        mov ds,ax
        mov cl,0bh
        lea bx,pwd
        lea dx,phrase
        mov ah,09
        int 21h
    l1: mov ah,08h
        int 21h
        cmp al,[bx]
        jnz wrong
        mov dl,2ah
        mov ah,02
        int 21h
        inc bx
        dec cl
        jnz l1
        lea dx,correct
        mov ah,09
        int 21h
        jmp over
 wrong: lea dx,incorrect
        mov ah,09
        int 21h
  over: mov ah,4ch
        int 21h
 end start




