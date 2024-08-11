; Student
; Professor
; Class: CSC 2025 XXX
; Week 3 - Programming HW #3 Part 2 Question 2
; Date
; Program contains a definition of each data type listed in Table 3-2 in Section 3.4. Initializes to appropriate value, performs at least 4 operations.

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword


.data
	; Create variables in each data type listed on Table 3-2 in Section 3.4 with an appropriate value
	myByte			BYTE 1
	mySignedByte	SBYTE -2
	myWord			WORD 7EEEh
	mySignedWord	SWORD 8112h
	myDword			DWORD 00007EEEh
	mySignedDword	SDWORD -32494
	myFword			FWORD 123456789ABCh
	myQword			QWORD 1234567890ABCDEFh
	myTbyte			TBYTE 12345678901234567890h
	myReal4			REAL4 -1.2
	myReal8			REAL8 3.2E-260
	MyReal10		REAL10 4.6E+4096

; **********************************************************************;
; Functional description of the main program				;
;	Inputs - This porogram uses mySignedByte (SBYTE equal to -2), 	;
;	myByte (BYTE equal to 1), mySignedDword (SDWORD equal to -32494);
;	myDword (DWORD equal to 32494).
;	Outputs - No explicit output					;
;	Registers used and associated purpose of each - AL is used to 	;
;	hold mySignedByte, and then used to hold the sum of mySignedByte;
;	and myByte.							;
;	EBX is used to hold mySignedDword, and then hold that minus 	;
;	myDword.							;
;	EAX is set to -1, and then holds itself multiplied by EBX which ;
;	flips the sign.							;
;	Memory locations use and associated purpose of each - No 	;
;	explicit memory locations are used.				;					
;	Functional details - Math using speciifc data types is done in 	;
;	CPU registers.							;
; **********************************************************************;

.code
main proc
	mov al, mySignedByte ; Set AL to mySignedByte. Then AL should equal -2 (FEh)

	add al, myByte ; Add myByte(1) to AL. Then AL should equal -1 (FFh)

	mov ebx, mySignedDword ; Set EBX to mySignedDword. Then EBX should equal -32494 (FFFF8112h)
	sub ebx, myDword ; Set EBX to -32494 minus 32494. Then EBX should equal  -64988 (FFFF0224h) 

	mov eax, -1 ; Set EAX to -1
	imul ebx, eax ; Set EBX to -64998 multiplied by -1; Then EBX should equal 64998 (0000FDDCh)

	invoke ExitProcess,0
main endp
end main
