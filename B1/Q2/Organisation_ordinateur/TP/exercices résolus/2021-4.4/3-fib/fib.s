	.intel_syntax noprefix
	.text
	.global fibonacci
	.type fibonacci, @function
fibonacci:
	PUSH RBX	# RBX is a callee-saved register on x86_64
	MOV EBX, 1	# EBX: fibonacci index of number contained in EAX
	MOV EAX, 1	# EAX: stores fibonacci number EBX
	MOV ECX, 0	# ECX: stores fibonacci number EBX - 1
L1:	MOV EDX, EAX	# save current value of EAX to move it in ECX
	ADD EAX, ECX	# add fibonacci number EBX and EBX - 1 to get number EBX + 1
	MOV ECX, EDX	# store the prev. value of EAX into ECX
	INC EBX
	CMP EBX, EDI	# if RBX is not the queried index, continue
	JL L1
	POP RBX
	RET
	
	
