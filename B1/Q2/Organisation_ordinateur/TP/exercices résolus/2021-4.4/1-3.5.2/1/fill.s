	.intel_syntax noprefix
	.text
	.global fill
	.type fill, @function
fill:				# void fill(long)
	ADD RSI, RDI		# we make it so RSI contains the last address of the array + 1 (length + start)
L1:	CMP RDI, RSI		# is RDI >= RSI ?
	JGE E1			# if yes, we are finished
	MOV byte ptr[RDI], DL	# if no, we fill
	INC RDI
	JMP L1			# continue with RDI++
E1:	RET
