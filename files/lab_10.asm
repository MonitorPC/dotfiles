.data :
	c_5: .float 5.0
	c_9: .float 9.0
	c_32: .float 32.0
.text
main:
	li a7, 6
	ecall
	jal c2f
	li a7, 2
	ecall
	li a7, 10
	ecall

c2f:
	flw f0, c_5, t0
	flw f1, c_9, t0
	flw f2, c_32, t0
	
	fmul.s f10, f10, f1
	fdiv.s f10, f10, f0
	fadd.s f10, f10, f2
	jalr zero, 0(ra)
