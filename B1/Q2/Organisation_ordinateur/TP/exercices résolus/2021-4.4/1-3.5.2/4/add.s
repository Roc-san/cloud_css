	.intel_syntax noprefix
	.text
	.global add
	.type add, @function
add:	MOV CH, byte ptr[RSI]
TE:	MOV CL, byte ptr[RDI]
	ADD CL, CH
	MOV byte ptr[RDI], CL
	JC CM
E1:	RET
CM:	PUSH RDI
	PUSH RSI
	ADD RDI, 1
	MOV CL, byte ptr[RDI]
	MOV CH, 1
	CALL TE
	POP RSI
	POP RDI
	JMP E1
