// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 67_Adder.v
// Create   : 2020-08-30 15:51:21
// Revise   : 2020-08-30 15:51:22
// Comments :
// -----------------------------------------------------------------------------


module top_module (
    input  [3:0] x, y,
    output [4:0] sum
);
    wire [3:0] cout;
    full_adder i_full_adder1 (x[0],y[0],1'b0,cout[0],sum[0]);
    full_adder i_full_adder2 (x[1],y[1],cout[0],cout[1],sum[1]);
    full_adder i_full_adder3 (x[2],y[2],cout[1],cout[2],sum[2]);
    full_adder i_full_adder4 (x[3],y[3],cout[2],cout[3],sum[3]);

    assign sum[4] = cout[3];

endmodule


module full_adder (
    input  a, b,
    input  cin ,
    output cout, sum
);
    assign {cout,sum} = a+b+cin;
endmodule
