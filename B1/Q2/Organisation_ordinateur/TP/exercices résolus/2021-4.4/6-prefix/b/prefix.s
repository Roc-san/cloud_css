	.intel_syntax noprefix
	.text
	.global prefixe_commun
	.type prefixe_commun, @function
prefixe_commun:
	MOV RAX, 0
L1:	CMP RAX, RDX
	JGE E1
	MOV CL, byte ptr[RDI + RAX]
	CMP CL, byte ptr[RSI + RAX]
	JNE E1
	INC RAX
	JMP L1
E1:	RET
