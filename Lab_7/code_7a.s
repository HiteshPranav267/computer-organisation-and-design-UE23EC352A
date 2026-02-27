#For each of the following language code sequence, insert minimum number of NOP before each instruction such that no hazards occur within a pipelined processor doesn’t implement any hazards

#Program 1
#before
addi x2,x0,10
addi x3,x0,5
addi x5,x0,3
addi x1,x0,0
add x1,x2,x3
sub x4,x1,x5

#after
addi x2,x0,10
addi x3,x0,5
addi x5,x0,3
addi x1,x0,0
add x1,x2,x3
nop
nop
sub x4,x1,x5

#Program 2
#before
la x2,num
li x5,8
lw x1,0(x2)
sub x4,x1,x5

#after
la x2,num
li x5,8
lw x1,0(x2)
nop
nop
sub x4,x1,x5

#Program 3
#before
addi x1,x0,10
addi x3,x0,4
addi x5,x0,2
addi x6,x0,5
sub x2,x1,x3
and x12, x2,x5
or x13,x6,x2
add x14,x12,x2
sw x14,100(x13)

#after
addi x1,x0,10
addi x3,x0,4
addi x5,x0,2
addi x6,x0,5
sub x2,x1,x3
nop
nop
and x12, x2,x5
nop
nop
or x13,x6,x2
nop
nop
add x14,x12,x2
nop
nop
sw x14,100(x13)

#Program 4
#before
lw x2, 20(x1)
and x4,x2,x5
or x8,x2,x6
and x9,x4,x2
sub x1,x6,x7

#after
lw x2, 20(x1)
nop
nop
nop
and x4,x2,x5
or x8,x2,x6
nop
nop
and x9,x4,x2
nop
nop
sub x1,x6,x7