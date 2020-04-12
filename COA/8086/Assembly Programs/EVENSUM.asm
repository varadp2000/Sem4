.model small
.data
        a db 01h,02h,03h,04h,05h,06h,07h,08h,09h,0ah
.code
 start: mov ax,@data
        mov ds,ax
        lea si,a
        mov bx,02h
        mov ch,0ah
        xor cl,cl
        xor ax,ax
    l1: mov al,[si]
        div bl
        cmp ah,00h
        jnz odd
        add cl,[si]
   odd: inc si
        dec ch        
        jnz l1
        mov ah,4ch
        int 21h
 end start
