MVI C,00
LHLD 100           ;memory address of first 16-bit number
XCHG
LHLD 102           ;memory address of second 16-bit number
DAD D
JNC L1
INR C
L1: SHLD 104        ;16-bit addition result
MOV A,C
STA 106               ;carry
HLT
