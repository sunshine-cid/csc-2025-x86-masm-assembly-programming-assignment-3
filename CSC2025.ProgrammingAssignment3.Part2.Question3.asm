; Student
; Professor
; Class: CSC 2025 XXX
; Week 3 - Programming HW #3 Part 2 Question 3
; Date
; Program contains symbolic names for several string literals. Each symbolic name is used in a variable definition.

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	; Set symbolic names for several string literals
	strHello	TEXTEQU <"Hello World!?">
	strName		TEXTEQU <"My name is Michael">
	strColor	TEXTEQU <"My favorite color is Blue">
	strExit		TEXTEQU <"Exiting the program">
	
	; Each symbolic name is then used to define a variable
	helloMsg	BYTE strHello, 0
	nameMsg		BYTE strName, 0
	colorMsg	BYTE strColor, 0
	exitMsg		BYTE strExit, 0


.code
main proc
	; This code uses no registers, performs no artithmetic, takes no input, and produces no output. 	
	invoke ExitProcess,0
main endp
end main
