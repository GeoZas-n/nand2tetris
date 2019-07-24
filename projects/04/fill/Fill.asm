// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

(LOOP)
@KBD
D=M

@NOINPUT
D;JEQ

@val
M=-1
@BODY
0;JMP

(NOINPUT)
@val
M=0

(BODY)
@val
D=M


@SCREEN
D=A
@addr
M=D

(LOOPSCR)
@addr
D=M
@KBD
D=D-A

@LOOP
D;JGE


@val
D=M

@addr
A=M

M=D

@addr
M=M+1

@LOOPSCR
0;JMP


