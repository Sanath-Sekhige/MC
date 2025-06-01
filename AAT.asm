    AREA reverse_string, CODE, READONLY
    ENTRY

    LDR R1, =STR1
    LDR R2, =STR2

    MOV R3, R1

find_null
    LDRB R4, [R3], #1
    CMP R4, #0
    BNE find_null

    SUBS R3, R3, R1
    SUBS R3, R3, #1

    ADD R4, R1, R3
    MOV R5, R2

reverse_loop
    LDRB R6, [R4, #-1]!
    STRB R6, [R5], #1
    SUBS R3, R3, #1
    BNE reverse_loop

    MOV R6, #0
    STRB R6, [R5]

stop
    B stop

STR1    DCB "Hello", 0

    AREA data1, DATA, READWRITE
STR2    SPACE 6

    END
