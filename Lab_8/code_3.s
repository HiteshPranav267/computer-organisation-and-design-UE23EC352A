#Multiplication and Division
.data
num1: .word 20
num2: .word 6
res: .word 0,0,0
.text
	la x1,num1
	la x2,num2
	lw x3,0(x1)
	lw x4,0(x2)
	mul x5,x3,x4
	la x6,res
	sw x5,0(x6)
	div x7,x3,x4
	sw x7,4(x6)
	rem x8,x3,x4
	sw x8,8(x6)
	nop