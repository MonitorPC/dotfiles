.data:
	myArray: .space 10 # allocate 10 bytes (array size)
.text # program instructions start next
main: # labeled block of code
	li t3, 10 # t3 = 10 (size of the array)
	la t0, myArray # load the address of array 1st element
	li t1, 1 # value to be filled inside the array
fill_array: # labeled block of code
	sb t1, 0(t0) # put in memory cell with address t0 and offset 0
		     # the value from t1 (which is “1”)
	addi t0, t0, 1 # increment the address in t0 by 1 byte
		       # (1 byte - the size of an array element)
	addi t3, t3, -1 # decrement the number of elements to be filled
	bgtz t3, fill_array # branch if t3 > 0
	li a7, 10
	ecall # exit from the program