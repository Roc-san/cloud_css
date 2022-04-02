	.intel_syntax noprefix
	.text
	.global sequence
	.type sequence, @function
sequence:
	MOV RAX, 0
	MOV R8, 1
	CMP RSI, 0
	JE E1
	ADD RSI, RDI
	MOV CL, byte ptr[RDI]
L1:	CMP RDI, RSI
	JGE E1
	CMP byte ptr[RDI], CL
	JE I1
I2:	MOV CL, byte ptr[RDI]
	MOV R8, 0
I1:	INC R8
	INC RDI
	CMP R8, RAX
	JLE N2
	MOV RAX, R8
N2:	JMP L1
E1:	RET
