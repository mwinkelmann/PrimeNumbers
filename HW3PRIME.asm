MOV R0, #0x2F
MOV R1, #0x00 ;result
MOV R2, #0x02 ;even
MOV R3, #0x03 ;odd

;check if even
;loop through odds to check
;if none it's prime

MOV A, R0
MOV B, R2

CLR c
DIV AB ;check even
;B will hold the remainder
MOV A, B ;store result

EVEN:
	; if result = 0 its not prime
	JNZ ODD ;is not even maybe prime
	LJMP DONE ;NOT PRIME

ODD:
	WHILE:
		MOV A, R0
		CLR c
		SUBB A, R3
		JZ ENDWHILE
		MOV A, R0
		MOV B, R3
		CLR c
		DIV AB ;check odd
		MOV A, B
		;if result = 0 NOT PRIME DONE
		;if reslut != 0 possibly prime 
		;loop through rest of numbers
		JZ ENDWHILE ;NOT PRIME
		MOV A, R3
		CLR c
		ADD A, #0x02
		MOV R3, A ;store new odd number
		MOV A, R0
		CLR c
		SUBB A, R3 ;if result=0 PRIME
		
		JZ PRIME ;PRIME
		JMP WHILE
		
ENDWHILE:
	MOV R1, #0x00 ;NOT PRIME
	JMP e
DONE:
	MOV R1, #0x00 ;NOT PRIME
	JMP e
PRIME: 
	MOV R1, #0x01 ;PRIME
	JMP e
e:
	END


