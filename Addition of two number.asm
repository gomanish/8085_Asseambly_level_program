MVI C,00
LXI H,100    ;starting address of number
MOV A,M
INX H
MOV B,M
ADD B
STA 103       ;Result stored
JNC L1
INR C
L1: MOV A,C
STA 104       ;Carry stored
HLT
