.text
main:
	li t0, 1
	li t1, 1
	li t2, 32
	li t3, 10
read:
	li a7, 12
	ecall
	beq a0, t3, end
	beq a0, t2, addition
	li t0, 1
	j read
addition:
	add t1, t1, t0
	sub t0, t0, t0
	j read
end:
	li a7, 1
	mv a0, t1
	ecall
	li a7, 10
	ecall
	