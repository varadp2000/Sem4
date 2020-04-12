.model small
.data
        msg db 'Enter string(end input with 0):',13,10,'$'
        palin db 13,10,'It is a palindrome$'
        notpalin db 13,10,'It is not a palindrome$'
        inputstorage db 10 dup(?)
.code
 start: mov ax,@data
        mov ds,ax
        lea si,inputstorage
        lea dx,msg
        mov ah,09
        int 21h
    l1: mov ah,08
        int 21h
        cmp al,30h
        jz endin
        mov dl,al
        mov ah,02
        int 21h
        inc cl
        mov [si],al
        inc si
        jmp l1
 endin: lea di,inputstorage
        mov ax,cx
        mov cl,02h     
        div cl
        mov cx,ax
        dec si
 check: mov al,[si]
        cmp al,[di]
        jnz notp
        inc di
        dec si
        dec cl
        jnz check
        lea dx,palin
        mov ah,09
        int 21h
        jmp done
  notp: lea dx,notpalin
        mov ah,09
        int 21h
  done: mov ah,4ch
        int 21h
 end start






        
