.8086                                                       
.model small
.data
        a db 06h
        b db 02h
        c db ?
.code
start:
        MOV AX,@data
        MOV DS,AX
        MOV AL,a
        MOV BL,b
        ADD AL,BL
        MOV c,AL
        MOV AH,4Ch
        INT 21h
        end start
