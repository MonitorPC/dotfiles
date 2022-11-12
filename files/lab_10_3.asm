.data :
	pi : .float 3.14159
	e : .float 2.71828
.text
main :
	li a7, 6
	ecall
	
	jal f_x
	
	li a7, 2
	ecall
	
	li a7, 10
	ecall
f_x :
	flw f0, pi, t0
	flw f1, e, t0
	fmul.s f10, f10, f1
	fmul.s f10, f10, f1
	fdiv.s f10, f10, f0
	jalr zero, 0(ra)
