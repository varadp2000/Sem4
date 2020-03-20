.8086
.model small
.data
        a db 02h,01h,06h,03h
        b db ?
.code
        start:MOV AX,@data
              MOV DS,AX
              MOV ch,04h
              Loop2:MOV CL,04h
                    LEA SI,a
              Loop1:MOV AL,[SI]
                    MOV BL,[SI+1]
                    CMP AL,BL
                    JC DOWN
                    MOV DL,[SI+1]
                    XCHG [SI],DL
                    MOV [SI+1],DL

                    DOWN:INC SI
                         DEC CL
                         JNZ Loop1
                         DEC CH
                         JNZ Loop2

              MOV AH,4Ch
              INT 21h
              end start

