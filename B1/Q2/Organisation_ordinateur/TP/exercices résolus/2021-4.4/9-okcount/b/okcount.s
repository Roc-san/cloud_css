	.intel_syntax noprefix
	.text
	.global count_ok
	.type count_ok, @function
count_ok:
	MOV RAX, 0
L1:	MOV CL, byte ptr[RDI]
	CMP CL, 0
	JE E1
	INC RDI
	CMP CL, 'o'
	JNE L1
	MOV CL, byte ptr[RDI]
	CMP CL, 0
	JE E1
	CMP CL, 'k'
	JE I1
	JMP L1
I1:	INC RAX
	INC RDI
	JMP L1
E1:	RET
