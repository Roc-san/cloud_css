	.intel_syntax noprefix
	.text
	.global strup
	.type strtup, @function
strup:	MOV AL, 'A'
	SUB AL, 'a'
L1:	CMP byte ptr[RDI], 0
	JE E1
	CMP byte ptr[RDI], 'a'
	JL I1
	CMP byte ptr[RDI], 'z'
	JG I1
	ADD byte ptr[RDI], AL
I1:	INC RDI
	JMP L1
E1:	RET
