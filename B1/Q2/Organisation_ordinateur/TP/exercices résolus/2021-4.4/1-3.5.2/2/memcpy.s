	.intel_syntax noprefix
	.text
	.global memcpy
	.type memcpy, @function
memcpy:
	CMP RDI, RSI		# RDI: destination, RSI: source, RDX: length
	JLE C2	
C1:	ADD RDX, RSI		# C1: destination is after source	
L1:	CMP RSI, RDX
	JGE E1
	MOV AL, byte ptr[RSI]
	MOV byte ptr[RDI], AL
	INC RSI
	INC RDI
	JMP L1
C2:	ADD RDI, RDX		# C2: destination is before source (or is source)
	DEC RDI
	ADD RDX, RSI
	DEC RDX
L2:	CMP RDX, RSI
	JL E1
	MOV AL, byte ptr[RDX]
	MOV byte ptr[RDI], AL
	DEC RDX
	DEC RDI
	JMP L2
E1:	RET
