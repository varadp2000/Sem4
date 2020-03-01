.8086
.model small
.data
        a db 05h
        b db 02h
        c dw ?
.code
start:
        MOV AX,@data
        MOV DS,AX
        MOV AL,a
        MOV BL,b
        MUL BL
        MOV c,AX
        MOV AH,4Ch
        INT 21h
        end start
