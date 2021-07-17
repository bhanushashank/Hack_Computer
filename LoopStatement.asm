// Implementation of a Loop Statement in the Hack Machine Language

// Calculates the sum of all numbers in the sequence [start, stop] with step size 'inc'
// sum = start + (start + inc) + (start + 2*inc) + ..  (till end is reached)

// e.g. start = 1, inc = 2 calculates the sum 1 + 3 + 5 + ... + 99

// Equivalent C program:

//      i = start
//      sum = 0
//      while(i <= end)
//      {
//          sum = sum + i;
//          i = i + inc;
//      }

@start      // Memory Location 16
D = M       // D <-- start

@i          // Memory Location 17
M = D       // i <-- D = start

@inc        // Memory Location 18
@end        // Memory Location 19

@sum        // Memory Location 20
M = 0       // sum <-- 0


(LOOP)
    @i
    D = M       // D <-- i

    @end
    D = D - M   // D <-- i - end

    @END
    D;JGT       // Exit the loop if (i - end) > 0

    @i
    D = M       // D = i
    @sum 
    M = D + M   // sum <-- sum + i
    @inc
    D = M
    @i
    M = M + D   // i = i + inc
    @LOOP
    0;JMP       // Repeat the instructions of LOOP

(END)
    @END
    0;JMP   // Infinite loop, program termination