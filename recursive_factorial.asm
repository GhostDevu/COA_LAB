addi $14,$0,100 // initialize the stack // start
br 20
subi $14,$14,2 // factorial
st $15,0($14)
st $1,1($14)
subi $4,$1,1
bz $4,2
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
bz $3,3 //loop
add $2,$2,$2
subi $3,$3,1
br -4
ret $15 // skip_loop
addi $1,$0,6 // main
call 2
halt
