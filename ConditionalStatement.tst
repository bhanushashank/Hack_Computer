load HackComputer.hdl,
output-file ConditionalStatement.out,
compare-to ConditionalStatement.cmp,

output-list 
RAM64[16]%D1.10.1 
RAM64[17]%D1.10.1 
RAM64[18]%D1.10.1;

ROM32K load ConditionalStatement.hack,

// a = 13, b = 5
set RAM64[16] 13,
set RAM64[17] 5,

// No.of clock cycles must be more than the number of executed instructions in the program
repeat 12 {
    tick, tock,
}
output;

set reset 1, 
tick,tock;

set reset 0,

// a = -56, b = -30
set RAM64[16] -56,
set RAM64[17] -30,

repeat 12 {
    tick, tock,
}
output;

set reset 1, 
tick,tock;


set reset 0,

// a = 1000, b = 999
set RAM64[16] 1000,
set RAM64[17] 999,

repeat 12 {
    tick, tock,
}
output;


set reset 1, 
tick,tock;

set reset 0,

// a = 97, b = 1000
set RAM64[16] 97,
set RAM64[17] 1000,

repeat 12 {
    tick, tock,
}
output;

