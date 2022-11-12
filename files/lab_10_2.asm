.data :
	pi : .float 3.14159
	c_4 : .float 4.0
	space : .word 32
	
.text
main :
	flw f0, c_4, t0
	flw f1, pi, t0
	
	li a7, 6
	ecall
	fmv.s f2, f10
	
	jal area
	li a7, 2
	ecall
	
	la t0, space
	mv a0, t0
	li a7, 4
	ecall
	
	jal volume
	li a7, 2
	ecall
	
	li a7, 10
	ecall
	
area :
	fmul.s f10, f2, f0
	fmul.s f10, f10, f1
	fmul.s f10, f10, f2
	jalr zero, 0(ra)

volume :
	fmul.s f10, f10, f2
	jalr zero, 0(ra)
