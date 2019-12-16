LXI H,100    ;starting address of number
MOV A,M
INX H
MOV B,M
SUB B
STA 103    ;result stored
HLT
