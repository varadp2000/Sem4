.8086
.model  small
.data
        STR1 db 01h,02h,03h,04h,05h,06h,07h,08h,09h,10h
        STR2 db ?
.code
start:
      MOV AX,@data
      MOV DS,AX
      MOV ES,AX
      LEA SI,STR1
      LEA DI,STR2
      MOV CX,0Ah
      CLD
      REP MOVSB
      INT 21h
      end start
