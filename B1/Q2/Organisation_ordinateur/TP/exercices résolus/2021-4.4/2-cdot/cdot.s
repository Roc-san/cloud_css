	.intel_syntax noprefix
	.text
	.global produit_scalaire
	.type produit_scalaire, @function
produit_scalaire:
	MOV CX, 0
	MOV R8, RDX
L1:	MOV AX, 0
	MOV AL, byte ptr[RDI + R8]
	IMUL byte ptr[RSI + R8]
	ADD CX, AX
	DEC R8
	JNS L1
	MOV AX, CX
	RET
