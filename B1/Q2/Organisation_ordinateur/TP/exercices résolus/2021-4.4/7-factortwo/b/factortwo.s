	.intel_syntax noprefix
	.text
	.global factortwo
	.type factortwo, @function
factortwo:	
	MOV RAX, 0
L1:	MOV RCX, RDI
	AND RCX, 1
	JNZ E1
	INC RAX
	SHR RDI, 1
	JMP L1
E1:	RET
