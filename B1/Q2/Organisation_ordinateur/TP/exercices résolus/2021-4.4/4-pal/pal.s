	.intel_syntax noprefix
	.text
	.global est_palindrome
	.type est_palindrome, @function
est_palindrome:
	MOV RAX, 0
	MOV RDX, RDI
	DEC RDX
L1:	INC RDX			# L1: first loop to get to last char
	CMP byte ptr[RDX], 0	# if not '\0' char, RDX++ continue
	JNE L1
	DEC RDX			# decrement to get last char
L2:	CMP RDI, RDX		# L2: palindrome check loop. if RDI gets past RDX, we finished, exit with success
	JGE E1
	MOV CL, byte ptr[RDX]	# (CMP cannot take 2 memory places)
	CMP byte ptr[RDI], CL	# compare str[RDI] and str[RDX]
	JNE E2			# if not equal, exit with 0
	INC RDI
	DEC RDX
	JMP L2			# RDI++, RDX--, continue
E1:	MOV RAX, 1		# exits with 1
E2:	RET			# exits with 0
	
