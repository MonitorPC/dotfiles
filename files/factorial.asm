.text
main:
	li t1, 1
	li t2, 1
	li a7, 5
	ecall
	mul t1, t1, a0
fac:
	mul t1, t1, t2
	addi t2, t2, 1
	blt t2, a0, fac
	mv a0, t1
	li a7, 1
	ecall
	li a7, 10
	ecall
	
