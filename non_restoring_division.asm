addi $2,$0, 24          // # Dividend (Q) // main
addi   $1,$0, 5         // # Divisor (M)
addi   $4,$0, 5         // # Number of bits (n)
addi $3, $0, 0          // # Initialize P (Partial Remainder) to 0
slli  $3, $3, 1         // # Shift P left by 1 // loop
slli  $2, $2, 1         // # Shift Q left by 1
or   $3, $3, $2         // # Merge with MSB of Q
bmi $3, 3               // # If P < 0, go to negative_case
sub  $3, $3, $1         // # P = P - M
addi $2, $2, 1          // # Set Q[0] = 1
br   1                  // # Continue to next iteration
add  $3, $3, $1         // # P = P + M // negative_case
subi $4, $4, 1          // # Decrement bit counter //continue_loop
bz $4,1                 // # If counter != 0, repeat loop
br -11                  // 
bmi $3, 1               // # If P < 0, perform correction
br  1                   // 
add  $3, $3, $1         // # Add divisor to correct remainder // correct
halt                    // # End program // done
