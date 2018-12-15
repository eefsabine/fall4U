TITLE fall4u (GAME EXE)
.MODEL SMALL
.STACK  64
;---------------------------------------------
.DATA  
   MESSAGE1 DB '______________________________________________________________________________',0ah,0dh
           DB ' |     |\_____\ |\______\ |\___\   |\___\                 |\___\  |\___\      |',0ah,0dh
           DB ' |     ||      |||   _   |||   |   ||   |          ____   ||   |  ||   |      |',0ah,0dh
           DB ' |     ||  ____|||  /|\  |||   |   ||   |         /    |  ||   |  ||   |      |',0ah,0dh
           DB ' |     || |__\  || |__\| |||   |   ||   |        / /_\ |  ||   |  ||   |      |',0ah,0dh
           DB ' |     ||   __| ||  ___  |||   |_  ||   |_      |___   |  ||   |_ ||   |      |',0ah,0dh
           DB ' |     ||  |    ||   |   |||   |__\||   |__\        |__|  ||   |__||   |      |',0ah,0dh
           DB ' |     ||  |    ||   |   |||      |||      |              ||           |      |',0ah,0dh
           DB ' |     \|__|    \|___|___|\|______|\|______|              \|___________|      |',0ah,0dh
           DB ' |____________________________________________________________________________|',0ah,0dh,'$'

  GAMEOVER DB '______________________________________________________________________________',0ah,0dh
           DB ' ||\_____\ |\______\ |\__\     /\__\|\________\                               |',0ah,0dh
           DB ' |||      |||   _   |||   \   //   |||   _____|_____                          |',0ah,0dh
           DB ' |||  ____|||  /|\  |||    \ //    |||  |_\ |\______\  ______  ______  _____  |',0ah,0dh
           DB ' ||| |\__\ || |__\| |||     \/  /| |||   __|||  ___  ||\__\__||\_____\|\____\ |',0ah,0dh
           DB ' ||| |\|_ |||  ___  |||  \     /|| |||  |___|| |   | |||  |  |||  ___|||  _  ||',0ah,0dh
           DB ' ||| |_\| |||   |   |||  |\___/ || |||  |___|| |   | |||  |  |||   _| || |_/ ||',0ah,0dh
           DB ' |||      |||   |   |||  |      || |||      || |___| |\|  |  |||  |_\ ||    < |',0ah,0dh
           DB ' |\|______|\|___|___|\|__|      \|_|\|______\|_______| \____/ \|_____|\|_|\__\|',0ah,0dh
           DB ' |____________________________________________________________________________|',0ah,0dh
           DB ' ',0ah,0dh
           DB ' ',0ah,0dh
           DB ' ',0ah,0dh
           DB 'Press ESC to return to menu...',0ah,0dh,'$'



  MESSAGE2  DB '------------------------------------------------------------------------------',0ah,0dh,'$'
  MESSAGE3  DB '------------------------------------------------------------------------------',0ah,0dh,'$'


  LAVA1 DB '/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\',0ah,0dh,'$'
  LAVA2 DB '\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/',0ah,0dh,'$'


  INSTRUCT  DB 'INSTRUCTIONS',0ah,0dh
        DB '------------------------------------------------------------------------------',0ah,0dh
        DB "This game is desgined only for those who knows how to love and doesn't want to",0ah,0dh
        DB 'get broken. The mechanics are simple. Use left and right arrow keys to catch and',0ah,0dh
        DB 'receive the love you deserve and avoid getting hurt in the process. Catch all ',0ah,0dh
        DB 'love (H) you can get to earn your place in the Love List. The game will end once',0ah,0dh
        DB ' you catch a broken heart (B). Give love and have fun!',0ah,0dh
        DB ' ',0ah,0dh
        DB 'Press ESC to return to menu... ',0ah,0dh,'$'

STAR    DB '-------------------------------------------------------------------------------',0ah,0dh
        DB '                               |      /\      |                                ',0ah,0dh
        DB '                               |  ___/  \___  |                                ',0ah,0dh
        DB '                               |  \  _()_  /  |                                ',0ah,0dh
        DB '                               |   \/    \/   |                                ',0ah,0dh
        DB '                               |   /  /\  \   |                                ',0ah,0dh
        DB '                               |  /__/  \__\  |                                ',0ah,0dh
        DB '-------------------------------------------------------------------------------',0ah,0dh,'$'

  PRESSESC  DB 'Press ESC to return to menu... ',0ah,0dh,'$'


  OPTION1 DB  'START$'
  OPTION2 DB  'INSTRUCTIONS$'
  OPTION3 DB  'HIGHEST SCORE$'
  OPTION4 DB  'QUIT$'
  
  TITLECURSORCOL DB 0BH  
  TITLECURSORROW DB 0FH
  BIRDPOSCOL DB 0AH 
  BIRDPOSROW DB 0AH   
  
  TEMP    DB    ?
  TEMP2   DB    1
  CHECKER   DB    0
  BUTTON_PRESSED    DB    ?
  BUTTON_PRESSED2   DB    ?
  
  LOAD_STR  DB    'Loading...$'
  COMPLETE_STR  DB    'Complete!     $'
  
  FLAG  DB  0
  FLAG2 DB  0
  DELAY DB 0
  
  LAVACOUNT DB 0
  PIPEROW DB 0
  PIPECOL DB 4FH
  PIPECOL2 DB 0
  PIPECOL3 DB 0
  PIPECOL4 DB 0
  CTR DB 0
  COUNT DB 0
  TEMPER DB 0
  HOLE DB 4
  HOLE2 DB 4
  HOLE3 DB 4
  HOLE4 DB 4
  TEMPHOLE DB 0
  UPPERBOUND DB 04H
  LOWERBOUND DB 0DH
  VALUE DB ?
  VALUE2 DB ?
  VALUE3 DB ?
  VALUE4 DB ?
  CONTAINER DB ?
  TEMPVALUE DB ?
  PIPETEMP DB ?
  HOLETEMP DB ?
  HOLEGAP DB 4
  RANDVALBOUNDS DW 09


  BEAT DB "YOU'VE BEATEN THE HIGHSCORE!$"
  SCORE_TEXT DB 'SCORE: $'
  HIGHSCORE_TEXT DB 'HIGHSCORE: $'
  SCORE DW ?
  SCORE1 DB 0
  SCORE2 DB 0
  STRLEN DW 3
  SCORECTR DB "0000$"
  PATHFILENAME  DB 'Hscore.txt', 00H
  FILEHANDLE    DW ?
  RECORD_STR    DB 4H DUP('$')             ;length = original length of record + 1 (for $)
  READED_STR    DB 4H DUP('$')             ;length = original length of record + 1 (for $)
  RECORD_STR1   DB '000'
  LAVABOTTOM DB 14H
;---------------------------------------------
.CODE
MAIN PROC FAR
  MOV AX, @data
  MOV DS, AX
  MOV ES, AX

  CALL _LOADING
  JMP MENU

MAIN ENDP
;---------------------------------------------
FILEWRITE PROC NEAR
  MOV AH, 3CH                              ;request create file
  MOV CX, 00                               ;normal attribute
  LEA DX, PATHFILENAME                     ;load path and file name
  INT 21H
  ;JC DISPLAY_ERROR1                       ;if there's error in creating file, carry flag = 1, otherwise 0
  MOV FILEHANDLE, AX

  LEA SI, SCORECTR
  LEA DI, RECORD_STR
  MOV CX, 3

  LOOPLOOP:
  MOV AL, [SI]
  MOV [DI], AL
  INC SI
  INC DI

  LOOP LOOPLOOP

  ;write file
  MOV AH, 40H                              ;request write record
  MOV BX, FILEHANDLE                       ;file handle
  MOV CX, STRLEN                           ;record length
  LEA DX, RECORD_STR                       ;address of output area
  INT 21H
  ;JC DISPLAY_ERROR2                       ;if carry flag = 1, there's error in writing (nothing is written)
  ;CMP AX, 35                              ;after writing, set AX to size of chars nga na write
  ;JNE DISPLAY_ERROR3

  ;close file handle
  MOV AH, 3EH                              ;request close file
  MOV BX, FILEHANDLE                       ;file handle
  INT 21H

RET
FILEWRITE ENDP
;---------------------------------------------
FILEREAD PROC NEAR
  ;open file
  MOV AH, 3DH           ;requst open file
  MOV AL, 00            ;read only; 01 (write only); 10 (read/write)
  LEA DX, PATHFILENAME
  INT 21H
  ;JC DISPLAY_ERROR1
  MOV FILEHANDLE, AX

  ;read file
  MOV AH, 3FH           ;request read record
  MOV BX, FILEHANDLE    ;file handle
  MOV CX, STRLEN            ;record length
  LEA DX, READED_STR    ;address of input area
  INT 21H
  ;JC DISPLAY_ERROR2
  ;CMP AX, 00            ;zero bytes read?
  ;JE DISPLAY_ERROR3


  ;close file handle
  MOV AH, 3EH           ;request close file
  MOV BX, FILEHANDLE    ;file handle
  INT 21H

RET
FILEREAD ENDP
;---------------------------------------------
_GEN PROC NEAR
  MOV PIPEROW, 0
  MOV COUNT, 0
  MOV TEMPER, BL
  MOV AL, TEMPVALUE
  ADD TEMPHOLE, AL

  TOP:
  MOV AL, TEMPHOLE
  CMP PIPEROW, AL
  JNE GG
  CMP COUNT, 1
  JNE GG2
  JE REZT

  GG2:
  MOV COUNT, 1
  MOV PIPEROW, 0
  INC TEMPER

  GG:
  MOV DL, TEMPER
  MOV DH, PIPEROW
  CALL _SET_CURSOR

  MOV AL, 'T'
  MOV AH, 02H
  MOV DL, AL
  INT 21H

  INC PIPEROW
  JMP TOP

  REZT:
  MOV AL, HOLEGAP
  ;ADD TEMPHOLE, AL
  ;MOV AL, TEMPHOLE
  ADD PIPEROW, AL
  MOV AL, PIPEROW
  MOV TEMPHOLE, AL
  MOV COUNT, 0
  MOV TEMPER, BL

  BOT:
  MOV CL, LAVABOTTOM
  CMP PIPEROW, CL
  JNE GG3
  CMP COUNT, 1
  JNE GG4
  JE GENEN

  GG4:
  MOV COUNT, 1
  MOV AL, TEMPHOLE
  MOV PIPEROW, AL
  INC TEMPER

  GG3:
  MOV DL, TEMPER
  MOV DH, PIPEROW
  CALL _SET_CURSOR

  MOV AL, 'T'
  MOV AH, 02H
  MOV DL, AL
  INT 21H

  INC PIPEROW
  JMP BOT

  GENEN:
  RET
_GEN ENDP
;---------------------------------------------
_GENERATE_PIPE PROC NEAR
  DEC BL
  JMP GENP2

  RESET:
  ;MOV BL, 4FH
  JMP RET3

  GENP2:
  CALL _GEN
  
  GENEND:
  CMP BL, 0
  JE RESET

  RET3:
  RET
_GENERATE_PIPE ENDP
;---------------------------------------------
_GAMEOVER:
      MOV FLAG, 03

      CALL _CLEAR_SCREEN_LOAD

      MOV DL, 22H
      MOV DH, 14H
      CALL _SET_CURSOR

      LEA DX, SCORE_TEXT
      CALL _PRINT_TEXT

      MOV AH, 09H
      LEA DX, SCORECTR
      INT 21H

      CALL FILEREAD
      ;MOV AL, SCORE1
      ;CMP READED_STR(TO INT), AL
      JL OLDHSCORE

      NEWHSCORE:
      MOV DL, 1DH
      MOV DH, 16H
      CALL _SET_CURSOR    
      CALL FILEWRITE

      OLDHSCORE:
      MOV DL, 00
      MOV DH, 05
      CALL _SET_CURSOR

      LEA DX, GAMEOVER
      CALL _PRINT_TEXT

      GAMEOVER_LOOP:
        CALL _GET_KEY
      JMP GAMEOVER_LOOP
      
;-------------------------------------------
_FLY PROC NEAR
    CMP DELAY, 4
    JNE INCRE
    MOV DELAY, 0
    MOV FLAG2, 0

    INCRE:
    DEC BIRDPOSROW
    RET
_FLY ENDP
;---------------------------------------------
_GRAVITY PROC NEAR
    MOV DELAY, 0
    INC BIRDPOSROW
    RET
_GRAVITY ENDP
;---------------------------------------------
START_GAME:
    MOV FLAG, 1

    ;initialize bird position
    MOV BIRDPOSCOL, 0AH
    MOV BIRDPOSROW, 0AH
    MOV DELAY, 0
    MOV FLAG2, 0
    
    GAME_LOOP:

    CALL _CLEAR_SCREEN_GAME
    CALL _GET_KEY
    CALL _DISPLAY_SCORE

      MOV DL, BIRDPOSCOL
      MOV DH, BIRDPOSROW
      CALL _SET_CURSOR

      CMP BIRDPOSROW, 0
      JNE CHECK2
      JMP _GAMEOVER

      CHECK2:
      MOV CL, LAVABOTTOM
      CMP BIRDPOSROW, CL
      JNE MOVE_ON
      JMP _GAMEOVER

      MOVE_ON:
      MOV AL, '>'
      MOV AH, 02H
      MOV DL, AL
      INT 21H

      INC DELAY
      ;INC BIRDPOSCOL

      CALL _DELAY_GAME

      CMP BUTTON_PRESSED, 39H
      JE FLY
      CMP FLAG2, 1
      JE FLY

      CMP DELAY, 2
      JNE DUNZO
      CALL _GRAVITY
      JMP DUNZO

      FLY:
      MOV FLAG2, 1
      CMP DELAY, 2
      JL DUNZO
      CALL _FLY

      DUNZO:
      JMP GAME_LOOP
;---------------------------------------------
CHECK_OPTION:
    CMP TEMP2, 1
    JNE CHECKT2
    JMP START_GAME

    CHECKT2:
    CMP TEMP2, 2
    JE INSTRUCTIONS
    CMP TEMP2, 3
    JE  HIGHSCOREPAGE
    JMP EXIT
;---------------------------------------------
HIGHSCOREPAGE PROC NEAR
  MOV FLAG, 04
  CALL _CLEAR_SCREEN_LOAD

  MOV DL, 0
  MOV DH, 0
  CALL _SET_CURSOR
  
  LEA DX, STAR
  MOV AH, 09H
  INT 21H

  MOV DL, 1FH
  MOV DH, 08H
  CALL _SET_CURSOR

  LEA DX, HIGHSCORE_TEXT
  MOV AH, 09H
  INT 21H

  CALL FILEREAD
  LEA DX, READED_STR
  MOV AH, 09H
  INT 21H

  MOV DL, 0
  MOV DH, 14H
  CALL _SET_CURSOR

  LEA DX, PRESSESC
  MOV AH, 09H
  INT 21H

  LOOPER:
  CALL _GET_KEY
  JMP LOOPER

HIGHSCOREPAGE ENDP
;---------------------------------------------
INSTRUCTIONS:
    MOV FLAG, 2
    CALL _CLEAR_SCREEN_LOAD
    MOV DL, 00
    MOV DH, 00
    CALL _SET_CURSOR
    LEA DX, INSTRUCT
    CALL _PRINT_TEXT

    INSTRUCTION_LOOP:
        CALL _GET_KEY
      JMP INSTRUCTION_LOOP
;---------------------------------------------
MENU:
      MOV FLAG, 0
      CALL _TITLE
      MOV HOLE, 4
      MOV HOLE2, 4
      MOV HOLE3, 4
      MOV HOLE4, 4
      MOV PIPECOL, 0
      MOV PIPECOL2, 0
      MOV PIPECOL3, 0
      MOV PIPECOL4, 0
      MOV SCORE1, 0
      MOV SCORE2, 0
      MOV SCORE, 0

  _LOOP_TITLE:
      CALL _GET_KEY

  MOV   DL, TITLECURSORCOL ;col
  MOV   DH, TITLECURSORROW ;row
  CALL  _SET_CURSOR

  MOV   AL, '*'
  MOV   AH, 02H
  MOV   DL, AL
  INT   21H

  CALL  _DELAY      

  CMP BUTTON_PRESSED2, 0DH ;enter key is pressed
    JNE NEXTU
    JMP CHECK_OPTION

    NEXTU:
  CMP BUTTON_PRESSED, 4BH ;cursor moves left when left key is pressed
    JE _LEFT
    CMP BUTTON_PRESSED, 4DH ;cursor moves right when right key is pressed
    JE _RIGHT

  
      JMP _LOOP_TITLE

  JMP EXIT
;---------------------------------------------
_RIGHT:                               ;when right button is pressed(from right to left)
    CMP TEMP2, 4
    JE  ENDR
      INC TEMP2
    CMP TEMP2, 1
    JE FIRSTR
    CMP TEMP2, 2
    JE FRIGHT
    CMP TEMP2, 3
    JE SRIGHT
    CMP TEMP2, 4
    JE TRIGHT

    FIRSTR:                           ;moves cursor to the first option at the menu
    MOV TITLECURSORROW, 0FH
    CALL _TITLE
    JMP ENDR

    FRIGHT:                           ;moves cursor to the second option at the menu
    ADD TITLECURSORROW, 02H
    CALL _TITLE
    JMP ENDR

    SRIGHT:                           ;moves cursor to the third option at the menu
    ADD TITLECURSORROW, 02H
    CALL _TITLE
    JMP ENDR

    TRIGHT:                           ;moves cursor to the last option at the menu
    ADD TITLECURSORROW, 02H
    CALL _TITLE
    JMP ENDR

    ENDR:
    JMP _LOOP_TITLE
;-------------------------------------------
_LEFT:;when left button is pressed(from left to right)
    CMP TEMP2, 1
    JE  ENDL
    DEC TEMP2
    CMP TEMP2, 1
    JE FIRSTL
    CMP TEMP2, 2
    JE FLEFT
    CMP TEMP2, 3
    JE SLEFT
    CMP TEMP2, 4
    JE TLEFT

    FIRSTL:;moves cursor to the first option at the menu
    MOV TITLECURSORROW, 0FH
    CALL _TITLE
    JMP ENDL

    FLEFT:;moves cursor to the second option at the menu
    SUB TITLECURSORROW, 02H
    CALL _TITLE
    JMP ENDL

    SLEFT:;moves cursor to the third option at the menu
    SUB TITLECURSORROW, 02H
    CALL _TITLE
    JMP ENDL

    TLEFT:;moves cursor to the last option at the menu
    SUB TITLECURSORROW, 02H
    CALL _TITLE
    JMP ENDL

    ENDL:
    JMP _LOOP_TITLE
;-------------------------------------------
_PRINT_TEXT PROC NEAR
  MOV AH, 09H
  INT 21H
  RET
_PRINT_TEXT ENDP
;---------------------------------------------
_TITLE PROC NEAR
  CALL _CLEAR_SCREEN_TITLE
 ;title
  MOV DL, 01
  MOV DH, 03H
  CALL _SET_CURSOR
  LEA DX, MESSAGE1
  CALL _PRINT_TEXT


 ;selection 
  MOV DL, 01
  MOV DH, 0FH
  CALL _SET_CURSOR
  LEA DX, MESSAGE2
  CALL _PRINT_TEXT 
  MOV DL, 0CH
  MOV DH, 10H
  CALL _SET_CURSOR
  LEA DX, OPTION1
  CALL _PRINT_TEXT
  MOV DL, 0CH
  MOV DH, 12H
  CALL _SET_CURSOR
  LEA DX, OPTION2
  CALL _PRINT_TEXT  
  MOV DL, 0CH
  MOV DH, 14H
  CALL _SET_CURSOR
  LEA DX, OPTION3
  CALL _PRINT_TEXT
  MOV DL, 0CH
  MOV DH, 16H
  CALL _SET_CURSOR
  LEA DX, OPTION4
  CALL _PRINT_TEXT
  MOV DL, 01
  MOV DH, 18H
  CALL _SET_CURSOR
  LEA DX, MESSAGE3
  CALL _PRINT_TEXT


  RET
_TITLE ENDP
;---------------------------------------------
_LOADING  PROC NEAR     
      CALL _CLEAR_SCREEN_LOAD

      MOV   DL, 22H
      MOV   DH, 11
      CALL  _SET_CURSOR

      ;display loading
      MOV   AH, 09H
      LEA   DX, LOAD_STR
      INT   21H

      MOV   TEMP, 00

  __ITERATE:
      ;set cursor
      MOV   DL, TEMP
      MOV   DH, 12
      CALL  _SET_CURSOR

      MOV   AL, 0DBH
      MOV   AH, 02H
      MOV   DL, AL
      INT   21H

      CALL  _DELAY

      INC   TEMP
      CMP   TEMP, 50H
      JE    DONE

      JMP   __ITERATE

    DONE:
      RET


_LOADING    ENDP
;-------------------------------------------
_CLEAR_SCREEN_LOAD PROC NEAR
      MOV AX, 0600H
      MOV BH, 07H
      MOV CX, 0000H
      MOV DX, 184FH
      INT 10H
      RET
_CLEAR_SCREEN_LOAD ENDP
;-------------------------------------------
_COLLISION PROC NEAR
   MOV DL, BIRDPOSCOL
  MOV DH, BIRDPOSROW

  CMP DL, PIPETEMP
  JNE RET5

  CMP DH, HOLETEMP
  JG CHECKBOT
  JMP _GAMEOVER

  CHECKBOT:
  MOV AL, HOLEGAP
  ADD HOLETEMP, AL
  CMP DH, HOLETEMP
  JL SCORER
  JMP _GAMEOVER

  SCORER:
  INC SCORE1

RET5:
RET
_COLLISION ENDP
;-------------------------------------------
_DISPLAY_SCORE PROC NEAR
    
    XOR AX, AX
    MOV AL, SCORE1
    ADD AL, SCORE2
    ADC AH, 0
    MOV SCORE, AX
    MOV AX, SCORE
    CALL _CONVERTER

    RET
_DISPLAY_SCORE ENDP
;-------------------------------------------
_CONVERTER PROC NEAR
        MOV BX, 10              ; divisor
        XOR CX, CX              ; CX=0 (number of digits)

    FIRST_LOOP:
        XOR DX, DX              ; Attention: DIV applies also DX!
        DIV BX                 ; DX:AX / BX = AX remainder: DX
        PUSH DX                 ; LIFO
        INC CX                  ; increment number of digits
        TEST AX, AX            ; AX = 0?
        JNZ FIRST_LOOP          ; no: once more

        MOV DI, OFFSET SCORECTR  ; target string SCORECTR
    SECOND_LOOP:
        POP AX                 ; get back pushed digit
        OR AX, 00110000b        ; to ASCII
        MOV BYTE PTR [di], AL   ; save AL
        INC di                  ; DI points to next character in string SCORECTR
        LOOP SECOND_LOOP        ; until there are no digits left

        MOV BYTE ptr [di], '$'  ; End-of-string delimiter for INT 21 / FN 09h
        RET
_CONVERTER ENDP
;-------------------------------------------
_CLEAR_SCREEN_GAME PROC NEAR
      MOV AX, 0600H
      MOV BH, 07H
      MOV CX, 0000H
      MOV DX, 184FH
      INT 10H
      MOV AX, 0600H
      MOV BH, 47H
      MOV CX, 1400H
      MOV DX, 184FH
      INT 10H

      MOV DH, 18H
      MOV DL, 35H
      CALL _SET_CURSOR
      MOV AH, 09H
      LEA DX, SCORE_TEXT
      INT 21H

      MOV DH, 18H ;LOCATION SA SCORE
      MOV DL, 60
      CALL _SET_CURSOR
      MOV AH, 09H
      LEA DX, SCORECTR
      INT 21H

      MOV DH, 14H
      MOV DL, 00H
      CALL _SET_CURSOR
      CMP LAVACOUNT,0 
      JNE LAVA2P

      LAVAP:
      MOV LAVACOUNT, 1
      LEA DX, LAVA1
      MOV AH, 09H
      INT 21H
      JMP PIPER

      LAVA2P:
      MOV LAVACOUNT, 0
      LEA DX, LAVA2
      MOV AH, 09H
      INT 21H

  PIPER:
  CMP PIPECOL, 0
  JG ZKIP

  CALL RANDGEN
  MOV BL, CONTAINER
  MOV VALUE, BL
  MOV PIPECOL, 4FH
  ZKIP:
  MOV AL, VALUE
  MOV BL, HOLE
  MOV TEMPHOLE, BL
  MOV HOLETEMP, BL
  MOV TEMPVALUE, AL
  ADD HOLETEMP, AL
  MOV BL, PIPECOL
  MOV PIPETEMP, BL
  CALL _GENERATE_PIPE
  CALL _COLLISION
  MOV PIPECOL, BL

  CMP PIPECOL2, 0
  JG GENY

  MOV BL, PIPECOL
  ADD BL, 13H
  CMP BL, 4FH
  JL GENER
  JMP RETTTT

  GENER:
  ;MOV PIPECOL2, BL
  CALL RANDGEN
  MOV BL, CONTAINER
  MOV VALUE2, BL
  MOV PIPECOL2, 4FH
  GENY:
  MOV AL, VALUE2
  MOV TEMPVALUE, AL
  ;MOV HOLE2, 4
  MOV BL, HOLE2
  MOV TEMPHOLE, BL
  MOV HOLETEMP, BL
  ADD HOLETEMP, AL
  MOV BL, PIPECOL2
  MOV PIPETEMP, BL
  CALL _GENERATE_PIPE
  CALL _COLLISION
  MOV PIPECOL2, BL

  CMP PIPECOL3, 0
  JG GENY2

  MOV BL, PIPECOL2
  ADD BL, 14H
  CMP BL, 4FH
  JL GENER2
  JMP RETTTT

  GENER2:
  ;MOV PIPECOL3, BL
  CALL RANDGEN
  MOV BL, CONTAINER
  MOV VALUE3, BL
  MOV PIPECOL3, 4FH
  GENY2:
  MOV AL, VALUE3
  MOV TEMPVALUE, AL
  ;MOV HOLE3, 4
  MOV BL, HOLE3
  MOV TEMPHOLE, BL
  MOV HOLETEMP, BL
  ADD HOLETEMP, AL
  MOV BL, PIPECOL3
  MOV PIPETEMP, BL
  CALL _GENERATE_PIPE
  CALL _COLLISION
  MOV PIPECOL3, BL

  CMP PIPECOL4, 0
  JG GENY3

  MOV BL, PIPECOL3
  ADD BL, 15H
  CMP BL, 4FH
  JL GENER3
  JMP RETTTT

  GENER3:
  ;MOV PIPECOL4, BL
  CALL RANDGEN
  MOV BL, CONTAINER
  MOV VALUE4, BL
  MOV PIPECOL4, 4FH
  GENY3:
  MOV AL, VALUE4
  MOV TEMPVALUE, AL
  ;MOV HOLE4, 4
  MOV BL, HOLE4
  MOV TEMPHOLE, BL
  MOV HOLETEMP, BL
  ADD HOLETEMP, AL
  MOV BL, PIPECOL4
  MOV PIPETEMP, BL
  CALL _GENERATE_PIPE
  CALL _COLLISION
  MOV PIPECOL4, BL

  RETTTT:
  RET
_CLEAR_SCREEN_GAME ENDP
;-------------------------------------------
_CLEAR_SCREEN_TITLE PROC NEAR         ;title screen color
      MOV AX, 0600H
      MOV BH, 07H
      MOV CX, 0000H
      MOV DX, 184FH
      INT 10H
      MOV AX, 0600H
      MOV BH, 57H                     ;title 
      MOV CX, 0301H
      MOV DX, 0D4EH
      INT 10H
;      MOV AX, 0600H
;      MOV BH, 57H                     ;menu
;      MOV CX, 0F01H
;      MOV DX, 114EH
;      INT 10H
      RET
_CLEAR_SCREEN_TITLE ENDP
;---------------------------------------------
_SET_CURSOR PROC NEAR
      ;MOV DL,  ;column
      ;MOV DH,  ;row
      MOV AH, 02H
      MOV BH, 00H
      INT 10H
      RET
_SET_CURSOR ENDP
;---------------------------------------------
_DELAY PROC NEAR
      MOV BP, 2 ;lower value faster
      MOV SI, 2 ;lower value faster
    DELAY2:
      DEC BP
      NOP
      JNZ DELAY2
      DEC SI
      CMP SI, 0
      JNZ DELAY2
      RET
_DELAY ENDP
;-------------------------------------------
_DELAY_GAME PROC  NEAR
      MOV BP, 3 ;lower value faster
      MOV SI, 3 ;lower value faster
    DELAYZ:
      DEC BP
      NOP
      JNZ DELAYZ
      DEC SI
      CMP SI, 0
      JNZ DELAYZ
      RET
_DELAY_GAME ENDP
;-------------------------------------------
RANDGEN PROC NEAR         ; generate a rand no using the system time

RANDSTART:
   MOV AH, 00h  ; interrupts to get system time        
   INT 1AH      ; CX:DX now hold number of clock ticks since midnight      

   MOV  AX, DX
   XOR  DX, DX
   MOV  CX, RANDVALBOUNDS    
   DIV  CX       ; here dx contains the remainder of the division - from 0 to 9
   MOV CONTAINER, DL   
RET
RANDGEN ENDP
;-------------------------------------------
_GET_KEY  PROC  NEAR
      MOV   AH, 01H   ;check for input
      INT   16H

      JZ    __LEAVETHIS

      MOV   AH, 00H   ;get input  MOV AH, 10H; INT 16H
      INT   16H
      CMP AL, 1BH     ;compares AL to 'esc'
      ;JE CHECK_2       ;exits when 'esc' is pressed
      JNE __LEAVETHIS
      
      CHECK_2:
      CMP FLAG, 1
      JLE __LEAVETHIS
      JMP MENU

  __LEAVETHIS:
      MOV   BUTTON_PRESSED2, AL
      MOV   BUTTON_PRESSED, AH
      RET
_GET_KEY  ENDP
;-------------------------------------------
EXIT:
      MOV AX, 0600H
      MOV BH, 07H
      MOV CX, 0F01H
      MOV DX, 184FH
      INT 10H   
  MOV DL, 00
  MOV TITLECURSORROW, 10H
  MOV DH, TITLECURSORROW
  CALL _SET_CURSOR

  MOV AH, 4CH
  INT 21H
;-------------------------------------------
END MAIN