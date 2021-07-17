load HackComputer.hdl,
output-file AssignmentStatement.out,
compare-to AssignmentStatement.cmp,

output-list 
RAM64[16]%D1.10.1
RAM64[17]%D1.10.1 
RAM64[18]%D1.10.1 
RAM64[19]%D1.10.1;

ROM32K load AssignmentStatement.hack,

// a = 3, b = 4, c = 5
set RAM64[16] 3,
set RAM64[17] 4,
set RAM64[18] 5,

// No.of clock cycles must be more than the number of executed instructions in the program
repeat 8 {
    tick, tock,
}

output;

set reset 1, 
tick,tock;

set reset 0,

// a = -34, b = 134, c = 100
set RAM64[16] -34,
set RAM64[17] 134,
set RAM64[18] 100,
repeat 8 {
    tick, tock,
}
output;

set reset 1, 
tick,tock;


set reset 0,

// a = 28, b = 72, c = 200
set RAM64[16] 28,
set RAM64[17] 72,
set RAM64[18] 200,
repeat 8 {
    tick, tock,
}
output;


set reset 1, 
tick,tock;

set reset 0,

// a = 10000, b = 1356, c = 356
set RAM64[16] 10000,
set RAM64[17] 1356,
set RAM64[18] 356,
repeat 8 {
    tick, tock,
}
output;

