#Write ALP to check whether given string is palindrome (using stacks)
.data
str: .string "madam"
.text
.globl main
main:
	la x3,str
	li sp,0x500
	li x8,0
push_loop:
	lbu x4,0(x3)
	beq x4,x0,compare
	addi sp,sp,-1
	sb x4,0(sp)
	addi x3,x3,1
	addi x8,x8,1
	j push_loop
compare:
	la x3,str
compare_loop:
	lbu x6,0(sp)
	lbu x4,0(x3)
	bne x4,x6,not_pal
	addi sp,sp,1
	addi x3,x3,1
	addi x8,x8,-1
	bne x8,x0,compare_loop
pal:
	li x1,1
	j done
not_pal:
	li x1,0
done:
	j done