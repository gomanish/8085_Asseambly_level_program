MVI B,00
MVI C,0A
LXI H,100     ;Starting address of list of 10 number
MOV A,M
DCR C
INX H
L2: MOV B,M
CMP B
JNC L1
MOV A,M
L1: INX H
DCR C
JNZ L2
STA 111        ;result stored in memory location
HLT
