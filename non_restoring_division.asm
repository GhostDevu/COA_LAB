addi $14,$0,0
addi $1,$0,15
ld $4,0($14)
ld $5,1($14)
slli $5,$5,15
slli $4,$4,1 //loop
bmi $4,2
sub $4,$4,$5
br 1
add $4,$4,$5 // add_loop
bmi $4,1     // after_add_sub
addi $4,$4,1
subi $1,$1,1 // skip_Q_1
bz $1,1
br -10
bpl $4,1 // end_loop
add $4,$4,$5
andi $2,$4,32767 // skip_correction
slri $4,$4,15
andi $3,$4,32767
halt