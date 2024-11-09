addi   $1,$0,0              // # $t0 = address of array # main branch
addi   $2,$0,10             // # $t1 = size of the array
addi   $3, $1, 4            // # $t2 = address of second element (current element)
addi  $4, $1, 0             // # $t3 = address of previous element (sorted part) #outer_loop
ld   $5, 0($3)              // # $t4 = current element
ld   $6, 0($4)              // # $t5 = element from sorted part #inner_loop branch
slt $7,$5,$6                // 
bz  $7, 1                   // # If sorted element > current, shift it right
br  4                       // # Else, insert current element
st   $6, 4($4)              // # Shift sorted element right # shift right_branch
subi  $4, $4, 4             // # Move to previous element in sorted part
slt $7,$1,$4                //         
bz  $7, -8                  // # Continue inner loop if not reached start 
st   $5, 4($4)              // # Insert current element #insert branch
addi $3, $3, 4              // # Move to next element in the array
subi  $2, $2, 1             // # Decrement counter
bz $2, -14                  // # Repeat until all elements are sorted
ld $1,0($0)
ld $2,1($0)
ld $3,2($0)
ld $4,3($0)
ld $5,4($0)
ld $6,5($0)
ld $7,6($0)
ld $8,7($0)
ld $9,8($0)
ld $10,9($0)
halt                        // # Infinite loop after sorting # end
