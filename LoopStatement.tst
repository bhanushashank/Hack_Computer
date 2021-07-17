load HackComputer.hdl,
output-file LoopStatement.out,
compare-to LoopStatement.cmp,

output-list 
RAM64[16]%D1.10.1 
RAM64[18]%D1.10.1 
RAM64[19]%D1.10.1 
RAM64[20]%D1.10.1;

ROM32K load LoopStatement.hack,

// start = 1, inc = 1, end = 100
set RAM64[16] 1,
set RAM64[18] 1,
set RAM64[19] 100,

// No.of clock cycles must be more than the number of executed instructions in the program
repeat 2450 {
    tick, tock,
}
output;

set reset 1,
tick, tock,

set reset 0,

// start = 1, inc = 2, end = 100
set RAM64[16] 1,
set RAM64[18] 2,
set RAM64[19] 100,

repeat 1300 {
    tick, tock,
}
output;

set reset 1,
tick, tock,

set reset 0,

// start = 50, inc = 1, end = 100
set RAM64[16] 50,
set RAM64[18] 1,
set RAM64[19] 100,

repeat 1250 {
    tick, tock,
}
output;

set reset 1,
tick, tock,

set reset 0,

// start = -100, inc = 10, end = 500
set RAM64[16] -100,
set RAM64[18] 10,
set RAM64[19] 500,

repeat 2700 {
    tick, tock,
}
output;