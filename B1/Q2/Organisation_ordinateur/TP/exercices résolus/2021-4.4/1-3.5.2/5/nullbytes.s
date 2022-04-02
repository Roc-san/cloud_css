	.intel_syntax noprefix
	.text
	.global nullbytes
	.type nullbytes, @function
nullbytes:
	MOV RAX, 0
	MOV RCX, 0
L1:	CMP RCX, RSI
	JGE E1
	CMP byte ptr[RCX + RDI], 0
	JNE I1
	INC RAX
I1:	INC RCX
	JMP L1
E1:	RET
