MVI C,10
MVI B,00
DCR C
MVI D,00
K2: LXI H,100   ;100(Starting address of 10 byte of data)
MOV B,C
K1: MOV A,M
INX H
CMP M
JC L1
MOV D,A
MOV A,M
MOV M,D
DCX H
MOV M,A
INX H
L1: DCR B
JNZ K1
DCR C
JNZ K2
HLT
