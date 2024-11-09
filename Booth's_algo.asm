addi $1, $0, 4        // Multiplicand (A)
addi $2, $0, 5        // Multiplier (y)
addi $3, $0, 32       // Bit width
move $10, $3          // Counter for loop (no_of_bits)
addi $11, $3, -1      // no_of_bits - 1 for shift
addi $4, $0, 0        // A = 0
addi $5, $0, 0        // q(-1) = 0
andi $7, $2, 1        // Last bit of y ($2)
sub  $8, $7, $5       // Compare last bit of y and q(-1)
bz   $8, 4            //  If $8 == 0, jump to shift
bpl  $8, 2            //  # If $8 > 0, do subtraction
add  $4, $4, $1       //    # Add multiplicand if case (01)
br    1               //   Always jump to shift after operation
sub  $4, $4, $1       //    # Subtract multiplicand (case 10)
andi $6, $4, 1        //    # Get last bit of A
slri  $4, $4, 1       //     # Logical shift-right A
slri  $2, $2, 1       //     # Logical shift-right y
sll  $6, $6, $11     //      # Add last A bit as first for y
add  $2, $2, $6       // Merge into new y
move $5, $7           // Update q(-1) = last bit of y
subi $10, $10, 1      // Decrement counter
bpl  $10, -15         // Continue loop if $10 > 0
slli  $4, $4, 32      //  Shift A left to concatenate
add  $4, $4, $2       // Merge into final result
halt                  //  Infinite loop to halt