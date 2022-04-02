	.intel_syntax noprefix
	.data
PNB:	.asciz "%d\n"			# reserve memory for number format in printf
	.text
	.global division
	.type division, @function
division:				# question 5 (a) 
	MOV RAX, 0
L1:	INC RAX
	SUB RDI, RSI
	CMP RDI, RSI
	JGE L1
	RET
	.global factoriser
	.type factoriser, @function
factoriser:				# question 5(b)
	SUB RSP, 8			# skip 8 bytes (see note 1) to respect calling conventions (16 bytes alignment)
	PUSH R12			# R12, R13, R14 and R15 are callee-saved registers (see note 2)
	PUSH R13			# we must thus save them if we want to use them
	PUSH R14
	PUSH R15
	MOV RCX, RDI			# RCX: stores RDI (current dividend) before calling division
	MOV R13, 2			# R13: divider to try to divide with
B1:	CMP RDI, 1			# loop begins, finish if argument is 1
	JE E1
	MOV RSI, R13
	CALL division			# call division. after this, RDI=modulo, RSI=unchanged
	MOV R12, RAX			# store quotient in R12 for next iteration in case the division was exact
	CMP RDI, 0
	JNE A1
I1:	MOV R15, RSI			# I1: division exact => print divisor, recurse using quotient and same divider
	MOV RDI, offset flat:PNB
	MOV AL, 0			# specify that we have no variadic arguments in stack (calling convention)
	CALL printf
	MOV RSI, R15			# Restore RDI and RSI after print
	MOV RDI, R12
	MOV RCX, RDI			# recurse using quotient as new dividantd
	JMP B1
A1:	MOV RDI, RCX			# A1: division not whole
	INC R13				# increment divider
	JMP B1				# retry with same dividand
E1:	POP R15				# E1: finished
	POP R14				# unpop
	POP R13
	POP R12
	ADD RSP, 8			# realign to 16 bytes
	RET

	# note 1: the Unix calling convention for the amd64 requires that the stack must be aligned by 16 bytes. this
	#	  is important to follow because it can cause `Bus Errors`.
	#	  we are using 4 registers, but we also issue subroutine calls, so we offset the stack of 5*8 bytes, which
	#	  is not multiple of 16: we thus skip 8 stack bytes manually when entering and leaving the subroutine.

	# note 2: callee-saved registers are registers for which the architecture convention has
	# 	defined that their value must be preserved across subroutine calls.
	#	subroutines willing to use them must save them and restore them before returning.
	#	common callee-saved registers are RBX, R12-15, RBP (and RSP).
