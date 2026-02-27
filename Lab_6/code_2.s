#Write an ALP to find Factorial of a number with recursion
.data
base: .word 0x12000000
n: .word 5
result: .word 0
.text
.globl main
main:
	la x8,base
	lw x9,0(x8)
	lw x10,4(x8)
	jal x1,fact
	sw x10,8(x8)
	j exit
fact:
	addi sp,sp,-8
	sw x1,4(sp)
	sw x10,0(sp)
	addi x5,x10,-1
	bge x5,0,L1
	addi x10,x0,1
	addi sp,sp,8
	jr x1
L1:
	addi x10,x10,-1
	jal x1,fact
	addi x6,x10,0
	lw x10,0(sp)
	lw x1,4(sp)
	addi sp,sp,8
	mul x10,x10,x6
	jr x1
exit: nop