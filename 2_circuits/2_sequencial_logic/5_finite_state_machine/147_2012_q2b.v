// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 147_2012_q2b.v
// Create                 : 2020-11-08 19:15:10
// Revision               : 2020-11-08 19:15:11
// url of que.            : https://hdlbits.01xz.net/wiki/Exams/2012_q2b
// Description            : one hot coding
//
// -----------------------------------------------------------------------------

module top_module (
    input [5:0] y,
    input w,
    output Y1,
    output Y3
);

//000001(A), 000010(B), 000100(C), 001000(D), 010000(E), 100000(F) 

assign Y1 = w & y[0];
assign Y3 = ~w & (y[1] | y[2] | y[4] |y[5]);
endmodule
