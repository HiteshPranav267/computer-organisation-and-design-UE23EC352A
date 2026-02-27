#Write an ALP to find Factorial of a number without recursion
.data
fact_result: .word 0
.text
.globl main
main:
	addi x5,0,5
	addi x10,x0,1
iter_loop:
	blez x5,done
	mul x10,x10,x5
	addi x5,x5,-1
	j iter_loop
done:
	la x8, fact_result
	sw x10,0(x8)
	nop