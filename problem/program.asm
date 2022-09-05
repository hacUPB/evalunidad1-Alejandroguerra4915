//Alejandro Guerra Betancur
//000446650
//alejandro.guerrab@upb.edu.co
(INICIO)                             
@KBD                         
D=M                          
@84
D=D-A
@PINTAR
D;JEQ

@KBD
D=M
@67
D=D-A 
@CLEAR
D;JEQ

@INICIO
0;JMP

(CLEAR)
    @16384 
    D=A
    @coord1 
    M=D 
    @8192
    D=A
    @contador1
    M=D
    @1
    D=A 
    @salto1
    M=D
    @color1
    M=0
    @DIBUJAR
    0;JMP

(PINTAR)
    @16399
    D=A
    @coord 
    M=D 
    @256
    D=A
    @cont
    M=D
    @32
    D=A 
    @salto
    M=D
        @256
        D=A
    @color
    M=D

    @INICIARPINTURA
    0;JMP

(HORIZONTAL)

    @20480
    D=A
    @coord1
    M=D
    @32
    D=A
    @contador1
    M=D
    @1
    D=A
    @salto1
    M=D
    @color1
    M=-1

        @DIBUJAR
    0;JMP

(INICIARPINTURA)
        @coord
        D=M
        @Screen
        M=D

(INICIARPINTURA2)
        @cont
        D=M
        @HORIZONTAL
        D;JEQ

        @color
        D=M
        @Screen
        A=M
        M=D

        @cont
        M=M-1

        @salto
        D=M

        @Screen 
        M=M+D

        @INICIARPINTURA2
        0;JMP

(DIBUJAR)
        @coord1
        D=M
        @Screen
        M=D

(DIBUJAR2)
        @contador1
        D=M
        @FINAL
        D;JEQ

        @color1
        D=M
        @Screen
        A=M
        M=D

        @contador1
        M=M-1

        @salto1
        D=M

        @Screen
        M=M+D

        @DIBUJAR2
        0;JMP


(FINAL)
        @INICIO
        0;JMP