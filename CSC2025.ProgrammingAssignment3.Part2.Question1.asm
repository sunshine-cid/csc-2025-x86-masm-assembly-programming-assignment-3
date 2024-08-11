; Student
; Professor
; Class: CSC 2025 XXX
; Week 3 - Programming HW #3 Part 2 Question 1
; Date
; Programs loads 'A' 'B' 'C' 'D' into eax, ebx, ecx, edx respectively and completed equation A = (A + B) - (C + D)

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

; **********************************************************************;
; Functional description of the main program				;
;	Inputs (None)							;
;	Outputs	(None)							;
;	Registers used and associated purpose of each			;
;	EAX: Holds initial value of 'A', then calculated value of EAX+EBX, and eventually final calculated value of ;
;	EBX: Holds initial value of 'B' 				;
;	ECX: Holds initial value of 'C' and calculated value of ECX+EDX ;
;	EAX: Holds initial value of 'D'					;
;	Memory locations use and associated purpose of each		;
;	Functional details						;
; There should be a similar block prior to procedures, functions, or    ;
;	otherwise major sections of code				;
; **********************************************************************;

.code
main proc
	mov	eax,'A' ; Set EAX to 41
	mov ebx,'B' ; Set EBX to 42
	mov ecx,'C' ; Set ECX to 43
	mov edx,'D' ; Set EDX to 44
	add eax,ebx ; Set EAX to 41 + 42 (83)
	add ecx,edx ; Set ECX to 43 + 44 (87)
	sub eax,ecx ; Set EAX to 83 - 87 (-4)

	invoke ExitProcess,0
main endp
end main
