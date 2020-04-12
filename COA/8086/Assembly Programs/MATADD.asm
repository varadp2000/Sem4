.model small
.data
        mat1 db 01h,99h,01h,67h,01h,01h,01h,01h,01h
        mat2 db 01h,87h,01h,01h,01h,01h,01h,01h,01h
        mat3 dw 9 dup(?)
.code
 start: mov ax,@data
        mov ds,ax
        lea si,mat1
        lea bx,mat2
        lea di,mat3
        mov cl,09h
        xor ax,ax
   l1:  mov al,[si]
        add al,[bx]
        mov dl,al
        jnc ncarry
        inc dh
ncarry: mov [di],dx
        inc si
        inc bx
        inc di
        dec cl
        jnz l1
        mov ah,4ch
        int 21h
 end start

