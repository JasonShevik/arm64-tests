.global _start

.section .text

calculate_compound:
	// A = P (1 + r/n)^(nt)
	// Compute the exponent
	mul w9, w2, w1		// n*t

	// Compute inside parenthesis
	scvtf s10, w2		// Convert N_ANNUAL to a float
	ldr s0, [x3]		// Load Rate to a float register

	fdiv s0, s0, s10	// r/n

	fmov s11, #1.0
	fadd s0, s0, s11	// 1 + r/n

	cmp w9, #1
	b.eq exponent_done

	fmov s15, s0		// Store the parenthesis value
	mov w10, #1		// Create a counter

exponent_loop:
	fmul s0, s0, s15 	// Repeatedly multiply the parenthesis value

	add w10, w10, #1	// Update counter
	cmp w10, w9		// Compare the counter to the exponent
	b.ne exponent_loop

exponent_done:
	ldr s11, [x4]		// Load the principle
	fmul s0, s0, s11	// Multiply the exponentiated number by the principle

	ret

_start:
	// Load the data
	adr x1, TENURE
	ldr w1, [x1]
	adr x2, N_ANNUAL
	ldr w2, [x2]
	adr x3, RATE
	adr x4, PRINCIPLE

	bl calculate_compound

	// Exit and return the result
	fcvtzs x0, s0		// Convert to int

	// Here, I would like to convert the integer to a string and print the result

	mov x8, #93
	svc #0
	
.section .rodata
PRINCIPLE:
	.float 12000.00
RATE:
	.float 0.075
TENURE:
	.int 2
N_ANNUAL:	
	.int 1
