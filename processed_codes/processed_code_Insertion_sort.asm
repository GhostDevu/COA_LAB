addi   $1,$0,0
addi   $2,$0,10
addi   $3, $1, 4
addi  $4, $1, 0
ld   $5, 0($3)
ld   $6, 0($4)
slt $7,$5,$6
bz  $7, 1
br  4
st   $6, 4($4)
subi  $4, $4, 4
slt $7,$1,$4
bz  $7, -8
st   $5, 4($4)
addi $3, $3, 4
subi  $2, $2, 1
bz $2, -14
halt