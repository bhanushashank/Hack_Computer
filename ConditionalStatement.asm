// Implementing an alternative statement in the hack machine language

// Equivalent C Program:
//     if(a > b)
//         c = a - b;
//     else
//         c = b - a;

    @a
    D = M         // D <-- a

    @b
    D = D - M     // D <-- a - b

    @ENDIF  
    D; JGT        // if (a - b > 0) jump to ENDIF
    
    @b
    D = M         // D <-- b
    @a
    D = D - M     // D <-- D - a = (b - a)

(ENDIF)
    @c
    M = D         // c = D

