// Implementing d = a + b - c  in the hack machine language

// Equivalent C Program:
//  d = a + b - c

@a
D = M       // D <-- a

@b
D = D + M   // D <-- D + b = a + b 

@c
D = D - M   // D <-- D - c = a + b - c

@d
M = D       // d <-- D = a + b - c
