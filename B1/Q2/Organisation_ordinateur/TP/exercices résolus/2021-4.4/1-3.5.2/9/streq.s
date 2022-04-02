	.intel_syntax noprefix
	.text
	.global streq
	.type streq, @function
streq:	MOV RAX, 1
L1:	MOV CL, byte ptr[RDI]
	MOV CH, byte ptr[RSI]
	CMP CL, CH
	JNE E1
	CMP CL, 0
	JE E2
	CMP CH, 0
	JE E2
	INC RDI
	INC RSI
	JMP L1
E1:	MOV RAX, 0
E2:	RET
