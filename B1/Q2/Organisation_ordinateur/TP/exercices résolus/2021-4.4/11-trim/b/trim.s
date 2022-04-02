	.intel_syntax noprefix
	.text
	.global f
	.type f, @function
f:	CMP byte ptr[RDI], 0
	JE E1
	INC RDI
L1:	CMP byte ptr[RDI], 0
	JE I1
	INC RDI
	JMP L1
I1:	DEC RDI
	MOV byte ptr[RDI], 0
E1:	RET
