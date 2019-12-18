MVI C,10       ;initialize counter
LXI H,100      ;initial address of 10 byte data
LXI D,110      ;destination address
L1: MOV A,M
STAX D
INX H
INX D
DCR C
JNZ L1
HLT
