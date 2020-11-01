// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 28_alwaysblock2.v
// Create   : 2020-08-30 15:40:33
// Revise   : 2020-08-30 15:40:38
// Comments :
// -----------------------------------------------------------------------------


module top_module (
    input       clk            ,
    input       a              ,
    input       b              ,
    output wire out_assign     ,
    output reg  out_always_comb,
    output reg  out_always_ff
);
    // Combinational: always @(*)
    // Clocked      : always @(posedge clk)

    // Continuous assignments (assign x       = y;). Can only be used when not inside a procedure ("always block").
    // Procedural blocking assignment: (x     = y;). Can only be used inside a procedure.
    // Procedural non-blocking assignment: (x <= y;). Can only be used inside a procedure.


    //xor gate
    assign out_assign = a ^b;

    always @(*)
        out_always_comb = a ^ b;

    always @(posedge clk)
        out_always_ff <= a ^ b;
        
endmodule
