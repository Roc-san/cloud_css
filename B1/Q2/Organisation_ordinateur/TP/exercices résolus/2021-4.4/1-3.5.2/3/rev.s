	.intel_syntax noprefix
	.text
	.global rev
	.type rev, @function
rev:	ADD RSI, RDI
	DEC RSI
L1:	CMP RDI, RSI
	JGE E1
	MOV AL, byte ptr[RDI]
	MOV AH, byte ptr[RSI]
	MOV byte ptr[RSI], AL
	MOV byte ptr[RDI], AH
	INC RDI
	DEC RSI
	JMP L1
E1:	RET
