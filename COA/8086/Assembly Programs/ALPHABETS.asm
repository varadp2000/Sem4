.model small
.data
        a db 41h,42h,43h,44h,45h,46h,47h,48h,49h,4ah,4bh,4ch,4dh,4eh,4fh,50h,51h,52h,53h,54h,55h,56h,57h,58h,59h,5ah
.code
 start: mov ax,@data
        mov ds,ax
        lea si,a
        mov cl,1ah
    l1: mov dl,[si]
        mov ah,02
        int 21h
        inc si
        dec cl
        jnz l1
        mov ah,4ch
        int 21h
 end start
