addi $1,$0,6
addi $4,$0,25
addi $5,$0,5
slli $5,$5,6
slli $4,$4,1 //loop
bmi $4,2
sub $4,$4,$5
br 2
add $4,$4,$5 // add_loop
addi $4,$4,1
subi $1,$1,1 // after_add_sub
bz $1,1
br -9
bpl $4,1 // end_loop
add $4,$4,$5
andi $2,$4,63 // skip_correction
andi $3,$4,4032