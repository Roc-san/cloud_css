	.intel_syntax noprefix
	.text
	.global histogramme
	.type histogramme, @function
histogramme:
	MOV RAX, 0
L1:	CMP RAX, 256
	JGE E1
	MOV RCX, 0
	MOV R8, 0
L2:	CMP RCX, RSI
	JGE I1
	CMP RAX, qword ptr[8*RCX + RDI]
	JNE I2
	INC R8
I2:	INC RCX
	JMP L2
I1:	MOV qword ptr[8*RAX + RDX], R8
	INC RAX
	JMP L1
E1:	RET
