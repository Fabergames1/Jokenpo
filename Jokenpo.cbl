      ******************************************************************
      * Author: FABRICIO PERRONE
      * Date: 16/02/2023
      * Purpose: Study
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. JOKENPO.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 PLAYER1 PIC X(10) VALUE SPACES.
       01 PLAYER2 PIC X(10) VALUE SPACES.
       01 CHOICE1 PIC X(1) VALUE SPACES.
       01 CHOICE2 PIC X(1) VALUE SPACES.
       01 RESULT  PIC X(30) VALUE SPACES.
       PROCEDURE DIVISION.
       DISPLAY "Welcome to the game of Jokenpo!"
       DISPLAY "Please enter the name of Player1: "
       ACCEPT PLAYER1
       DISPLAY "Please enter the name of Player2: "
       ACCEPT PLAYER2
       DISPLAY "Player1, please select your choice: (R P OR S)"
       ACCEPT CHOICE1
       DISPLAY "Player2, please select your choice: (R P OR S)"
       ACCEPT CHOICE2
       PERFORM COMPARE

       DISPLAY RESULT

       STOP RUN.

       COMPARE.
       IF CHOICE1 = "R" AND CHOICE2 = "P"
       MOVE "Player2 Wins!" TO RESULT
       ELSE IF CHOICE1 = "P" AND CHOICE2 = "R"
       MOVE "Player1 Wins!" TO RESULT
       ELSE IF CHOICE1 = "R" AND CHOICE2 = "S"
       MOVE "Player1 Wins!" TO RESULT
       ELSE IF CHOICE1 = "S" AND CHOICE2 = "R"
       MOVE "Player2 Wins!" TO RESULT
       ELSE IF CHOICE1 = "P" AND CHOICE2 = "S"
       MOVE "Player2 Wins!" TO RESULT
       ELSE IF CHOICE1 = "S" AND CHOICE2 = "P"
       MOVE "Player1 Wins!" TO RESULT
       ELSE
       MOVE "Draw!" TO RESULT
       END-IF.
       END PROGRAM JOKENPO.
