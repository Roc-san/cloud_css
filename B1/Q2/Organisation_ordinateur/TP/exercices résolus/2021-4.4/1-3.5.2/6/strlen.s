	.intel_syntax noprefix
	.text
	.global strlen
	.type strlen, @function
strlen:	MOV RAX, 0
L1:	CMP byte ptr[RDI], 0
	JE E1
	INC RAX
	INC RDI
	JMP L1
E1:	RET
