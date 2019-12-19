;Addition of positive number from 10 given number


MVI B,00
MVI C,0AH      ;initialized counter
MVI D,00
MVI E,00
LXI H,100        ;starting address of given number
L2: MOV A,M
ANI 80H          ;check number is positive or negative
JZ L1
INX H
DCR C
JNZ L2
L1: MOV A,B
ADD M
MOV B,A
JNC K1
INR D
K1: INX H
DCR C
JNZ L2
MOV A,B
STA 111         ;storing result
MOV A,D
STA 112         ;storing carry
HLT
