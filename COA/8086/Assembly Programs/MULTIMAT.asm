.model small
.data
        mat1 db 02h,01h,01h,01h,01h,01h,01h,01h,01h
        mat2 db 01h,02h,01h,01h,01h,01h,01h,01h,01h
        mat3 db 9 DUP(0)
.code
 start: mov ax,@data
        mov ds,ax
        mov ch,03h
        mov cl,03h
        mov bp,03h
        lea bx,mat3
        lea si,mat1
        lea di,mat2
  mul3: mov al,[si]
        mov bh,[di]
        mul bh
        mov bh,00h
        add [bx],al
        inc si
        add di,03h
        dec cl
 done1: jnz mul3
        mov dl,[bx]
        add dl,30h
        mov ah,02
        int 21h
        mov dl,20h
        mov ah,02
        int 21h
        inc bx
        mov cl,03h
        sub si,03h
        sub di,08h
        dec bp
 rdone: jnz mul3
        mov dl,0ah
        mov ah,02
        int 21h
        mov dl,0dh
        mov ah,02
        int 21h
        add si,03h
        sub di,03h
        mov bp,03h
        dec ch
        jnz mul3
        mov ah,4ch
        int 21h
 end start



        


