#For the same code apply the following
#without forwarding or hazard detection
lw x2, 20(x1)
nop
nop
and x4,x2,x5
or x8,x2,x6
nop
and x9,x4,x2
sub x1,x6,x7

#without hazard detection
lw x2,20(x1)
nop
and x4,x2,x5
or x8,x2,x6
and x9,x4,x2
sub x1,x6,x7

#without forwarding
lw x2,20(x1)
and x4,x2,x5
or x8,x2,x6
and x9,x4,x2
sub x1,x6,x7

#with forwarding and hazard detection
lw x2,20(x1)
and x4,x2,x5
or x8,x2,x6
and x9,x4,x2
sub x1,x6,x7