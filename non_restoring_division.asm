addi $1,$0,15
addi $4,$0,24
addi $5,$0,5
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
andi $2,$4,63 // skip_correction
andi $3,$4,4032
slri $3,$3,15
halt