addi $2,$0, 24
addi   $1,$0, 5
addi   $4,$0, 32
addi $3, $0, 0
slli  $3, $3, 1
slli  $2, $2, 1
or   $3, $3, $2
bmi $3, 3
sub  $3, $3, $1
addi $2, $2, 1
br   1
add  $3, $3, $1
subi $4, $4, 1
bz $4,1
br -11
bmi $3, 1
br  1
add  $3, $3, $1
halt