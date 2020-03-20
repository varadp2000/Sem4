.8086
.model small
.data
    a db 08h
    b db 04h
    c db ?
.code
        start:MOV AX,@data
              MOV DS,AX
              MOV AH,a
              MOV BH,b
              SUB AH,BH
              MOV c,AH
              MOV AH,4Ch
              int 21h
        end start
