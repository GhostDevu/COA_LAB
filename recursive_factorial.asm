addi $14,$0,100 // initialize the stack // start
addi $13,$0,0
br 23
subi $14,$14,2 // factorial
st $15,0($14)
st $1,1($14)
subi $4,$1,1
bz $4,3
subi $1,$1,1
call 2
br 4
ld $15,0($14) // return_1
addi $14,$14,2
addi $2,$0,1
ret $15
ld $15,0($14) //skip_ret_here
ld $1,1($14)
addi $14,$14,2
add $3,$0,$1
add $4,$0,$2
subi $3,$3,1
bz $3,3 //loop
add $2,$2,$4
subi $3,$3,1
br -4
ret $15 // skip_loop
ld $1,0($13) // main
call 2
halt
