TITLE ASM1 (GAME EXE)
.MODEL SMALL
.STACK  64
;---------------------------------------------
.DATA
   MESSAGE1 DB '______________________________________________________________________________',0ah,0dh
           DB ' |  |\_____\ |\______\ |\___\   |\___\                      |\___\  |\___\    |',0ah,0dh
           DB ' |  ||      |||   _   |||   |   ||   |     .:::.    .:::.   ||   |  ||   |    |',0ah,0dh
           DB ' |  ||  ____|||  /|\  |||   |   ||   |    ::::::____::::::  ||   |  ||   |    |',0ah,0dh
           DB ' |  || |__\  || |__\| |||   |   ||   |    :::: /    |:::::  ||   |  ||   |    |',0ah,0dh
           DB ' |  ||   __| ||  ___  |||   |_  ||   |_   ::::/ /_\ |:::::  ||   |_ ||   |    |',0ah,0dh
           DB ' |  ||  |    ||   |   |||   |__\||   |__\  ::|__    |::::   ||   |__||   |    |',0ah,0dh
           DB ' |  ||  |    ||   |   |||      |||      |    :::|_ _|:::    ||           |    |',0ah,0dh
           DB ' |  \|__|    \|___|___|\|______|\|______|        :::        \|___________|    |',0ah,0dh
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



 INSTRUCT  DB 0ah,0dh 'INSTRUCTIONS',0ah,0dh
        DB '------------------------------------------------------------------------------',0ah,0dh
        DB "This game is desgined only for those who know how to love and doesn't want to" ,0ah,0dh
        DB 'get broken. The mechanics are simple. Use left and right arrow keys to catch  ',0ah,0dh
        DB 'and receive the love you deserve and avoid getting hurt in the process. Catch ',0ah,0dh
        DB 'all love (♥) you can get to earn your place in the LoveList. The game will end',0ah,0dh
        DB 'once you catch a broken heart (B). Give love and have fun!',0ah,0dh
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

GAME_CONT_ROW DB "TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT$"
GAME_CONT_FRAME DB 'TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT',0ah,0dh
        DB '                T                                              T',0ah,0dh
        DB '                T                                              T',0ah,0dh
        DB '                T                                              T',0ah,0dh
        DB '                T                                              T',0ah,0dh
        DB '                T                                              T',0ah,0dh
        DB '                T                                              T',0ah,0dh
        DB '                T                                              T',0ah,0dh
        DB '                T                                              T',0ah,0dh
        DB '                T                                              T',0ah,0dh
        DB '                T                                              T',0ah,0dh
        DB '                T                                              T',0ah,0dh
        DB '                T                                              T',0ah,0dh
        DB '                T                                              T',0ah,0dh
        DB '                T                                              T',0ah,0dh
        DB '                T                                              T',0ah,0dh
        DB '                TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT',0ah,0dh,'$'

  PRESSESC  DB 'Press ESC to return to menu... ',0ah,0dh,'$'


  OPTION1 DB  'START$'
  OPTION2 DB  'INSTRUCTIONS$'
  OPTION3 DB  'HIGHEST SCORE$'
  OPTION4 DB  'QUIT$'
  
  TITLECURSORCOL DB 0BH 
  TITLECURSORROW DB 0FH 
  POSCOL DB 21H 
  POSROW DB 13H 
  
  TEMP    DB    ?
  TEMP2   DB    1
  CHECKER   DB    0
  BUTTON_PRESSED    DB    ?
  BUTTON_PRESSED2   DB    ?
  
  LOAD_STR  DB    'Loading...$'
  COMPLETE_STR  DB    'Complete!     $'
  
  FLAG  DB  0
  FLAG2 DB  0
  DELAY DB  0
  FLOG DB 2


  BEAT DB "YOU'VE BEATEN THE HIGHSCORE!$"
  SCORE_TEXT DB 'SCORE: $'
  HIGHSCORE_TEXT DB 'HIGHSCORE: $'
  STRLEN DW 3
  SCORECTR DB "0000$"
  PATHFILENAME  DB 'Hscore.txt', 00H
  FILEHANDLE    DW ?
  RECORD_STR    DB 4H DUP('$')  ;length = original length of record + 1 (for $)
  READED_STR    DB 4H DUP('$')  ;length = original length of record + 1 (for $)
  RECORD_STR1   DB '000'
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
  MOV AH, 3CH           ;request create file
  MOV CX, 00            ;normal attribute
  LEA DX, PATHFILENAME  ;load path and file name
  INT 21H
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
  MOV AH, 40H           ;request write record
  MOV BX, FILEHANDLE    ;file handle
  MOV CX, STRLEN        ;record length
  LEA DX, RECORD_STR    ;address of output area
  INT 21H

;close file handle
  MOV AH, 3EH           ;request close file
  MOV BX, FILEHANDLE    ;file handle
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
  MOV FILEHANDLE, AX

;read file
  MOV AH, 3FH           ;request read record
  MOV BX, FILEHANDLE    ;file handle
  MOV CX, STRLEN            ;record length
  LEA DX, READED_STR    ;address of input area
  INT 21H


  ;close file handle
  MOV AH, 3EH           ;request close file
  MOV BX, FILEHANDLE    ;file handle
  INT 21H

RET
FILEREAD ENDP
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
START_GAME:
      MOV FLAG, 1
      MOV AX, 0600H
      MOV BH, 57H
      MOV CX, 0000H
      MOV DX, 184FH
      INT 10H

      MOV DL, 10H
      MOV DH, 04H
      CALL _SET_CURSOR

      LEA DX, GAME_CONT_FRAME
      CALL _PRINT_TEXT

  REE:
  CALL GAME_SCREEN
  CALL _GET_KEY



      MOV DL, POSCOL
      MOV DH, POSROW
      CALL _SET_CURSOR


      MOV AL, 'U'
      MOV AH, 02H
      MOV DL, AL
      INT 21H

      CMP POSCOL, 3EH                  ;rightmost boundary
      JE CHECKKEY
      CMP POSCOL, 11H                ;leftmost boundary
      JE CHECKKEY



      CALL _DELAY


      CMP FLOG, 1
      JE DEC_POS_LEFT


      INC POSCOL
      JMP CHECKKEY

      DEC_POS_LEFT:
      DEC POSCOL

      CHECKKEY:

    CMP BUTTON_PRESSED, 4BH           ;cursor moves left when left key is pressed
    JE LEFTER
    CMP BUTTON_PRESSED, 4DH           ;cursor moves right when right key is pressed
    JE RIGHTER
    JMP EZKATOSHKA

    LEFTER:                           ;U continuously goes to the left
    CMP FLOG, 2
    JNE OKAAY
    DEC POSCOL

    OKAAY:
    MOV FLOG, 1
    JMP EZKATOSHKA

    RIGHTER:                          ;U continuously goes to the right
    CMP FLOG, 1
    JNE OKAAAY
    INC POSCOL

    OKAAAY:
    MOV FLOG, 2

    EZKATOSHKA:

  JMP REE
;START_GAME ENDP
;---------------------------------------------
GAME_SCREEN PROC NEAR
      MOV AX, 0600H
      MOV BH, 07H
      MOV CX, 0511H
      MOV DX, 133EH
      INT 10H      

      ;CALL GENERATE_FRAME      
RET
GAME_SCREEN ENDP
;---------------------------------------------
GENERATE_FRAME PROC NEAR
MOV TEMP, 10H
      PRINT_BOUND:

      MOV DL, TEMP
      MOV DH, 04H
      CALL _SET_CURSOR

      MOV   AL, 'T'
      MOV   AH, 02H
      MOV   DL, AL
      INT   21H

      ;CALL  _DELAY

      INC   TEMP
      CMP   TEMP, 40H
      JE    DUNZO2

      JMP   PRINT_BOUND

DUNZO2:
RET
GENERATE_FRAME ENDP
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

  _LOOP_TITLE:
      CALL _GET_KEY

  MOV   DL, TITLECURSORCOL    ;col
  MOV   DH, TITLECURSORROW    ;row
  CALL  _SET_CURSOR

  MOV   AL, '*'
  MOV   AH, 02H
  MOV   DL, AL
  INT   21H

  CALL  _DELAY      

  CMP BUTTON_PRESSED2, 0DH     ;enter key is pressed
    JNE NEXTU
    JMP CHECK_OPTION

    NEXTU:
  CMP BUTTON_PRESSED, 48H      ;cursor moves left when left key is pressed
    JE UP
    CMP BUTTON_PRESSED, 50H    ;cursor moves right when right key is pressed
    JE DOWN

  
      JMP _LOOP_TITLE

  JMP EXIT
;---------------------------------------------
DOWN:                               ;when down arrow key is pressed
    CMP TEMP2, 4
    JE  ENDD
      INC TEMP2
    CMP TEMP2, 1
    JE FIRSTD
    CMP TEMP2, 2
    JE FDOWN
    CMP TEMP2, 3
    JE SDOWN
    CMP TEMP2, 4
    JE TDOWN

    FIRSTD:                        ;moves cursor to the first option at the menu
    MOV TITLECURSORROW, 0FH
    CALL _TITLE
    JMP ENDD

    FDOWN:                           ;moves cursor to the second option at the menu
    ADD TITLECURSORROW, 02H
    CALL _TITLE
    JMP ENDD

    SDOWN:                           ;moves cursor to the third option at the menu
    ADD TITLECURSORROW, 02H
    CALL _TITLE
    JMP ENDD

    TDOWN:                           ;moves cursor to the last option at the menu
    ADD TITLECURSORROW, 02H
    CALL _TITLE
    JMP ENDD

    ENDD:
    JMP _LOOP_TITLE
;-------------------------------------------
UP:                                  ;when up arrow key is pressed
    CMP TEMP2, 1
    JE  ENDU
    DEC TEMP2
    CMP TEMP2, 1
    JE FIRSTU
    CMP TEMP2, 2
    JE FUP
    CMP TEMP2, 3
    JE SUP
    CMP TEMP2, 4
    JE TUP

    FIRSTU:                          ;moves cursor to the first option at the menu
    MOV TITLECURSORROW, 0FH
    CALL _TITLE
    JMP ENDU

    FUP:                           ;moves cursor to the second option at the menu
    SUB TITLECURSORROW, 02H
    CALL _TITLE
    JMP ENDU

    SUP:                           ;moves cursor to the third option at the menu
    SUB TITLECURSORROW, 02H
    CALL _TITLE
    JMP ENDU

    TUP:                           ;moves cursor to the last option at the menu
    SUB TITLECURSORROW, 02H
    CALL _TITLE
    JMP ENDU

    ENDU:
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

_CLEAR_SCREEN_TITLE PROC NEAR
      MOV AX, 0600H
      MOV BH, 07H
      MOV CX, 0000H
      MOV DX, 184FH
      INT 10H
      MOV AX, 0600H
      MOV BH, 57H
      MOV CX, 0301H
      MOV DX, 0D4EH
      INT 10H
;     MOV AX, 0600H
;     MOV BH, 57H
;     MOV CX, 0F01H
;     MOV DX, 114EH
;     INT 10H
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
      MOV BP, 2              ;lower value faster
      MOV SI, 2              ;lower value faster
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
_GET_KEY  PROC  NEAR
      MOV   AH, 01H         ;check for input
      INT   16H

      JZ    __LEAVETHIS

      MOV   AH, 00H         ;get input  MOV AH, 10H; INT 16H
      INT   16H
      CMP AL, 1BH           ;compares AL to 'esc'
      JE CHECK_2            ;exits when 'esc' is pressed
      JNE __LEAVETHIS
      
      CHECK_2:
      CMP FLAG, 0
      JE __LEAVETHIS
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
      MOV CX, 0F00H
      MOV DX, 184FH                   ;cleared screen when quit
      INT 10H   
  MOV DL, 00
  MOV TITLECURSORROW, 14H
  MOV DH, TITLECURSORROW
  CALL _SET_CURSOR

  MOV AH, 4CH
  INT 21H
;-------------------------------------------
END MAIN