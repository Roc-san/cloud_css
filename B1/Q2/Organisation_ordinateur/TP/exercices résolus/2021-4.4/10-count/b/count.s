	.intel_syntax noprefix
	.text
	.global f
	.type f, @function
f:	MOV RAX, 0
L1:	MOV ECX, dword ptr[RDI]	# t[RDI]
	CMP ECX, 0		# is RDI the last index?
	JE E1			# if yes, we are finished
	CMP ECX, ESI		# if not, let's check if t[RDI] < c
	JGE I1			
	INC RAX			# t[RDI] is < c, we add 1 to RAX
I1:	ADD RDI, 4		# in any case we add 4 bytes (32 bits) to array pointer to point to
	JMP L1			# next element, then we jump back to L1
E1:	RET
