	AREA PROG, CODE, READONLY
	ENTRY
		;Data Transfer Operations
		LDR R0, =0x40000000
		MOV R1, #5
		STR R1, [R0]
		
		;Arithmetic Operations
		MOV R2, #7
		MOV R3, #8
		ADD R4, R2, R3
		SUB R5, R3, R2
		
		;Logical Operations
		AND R6, R2, R3;
		ORR R7, R2, R3;
	END