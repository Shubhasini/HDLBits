// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 40_adder100i.v
// Create   : 2020-08-30 15:49:49
// Revise   : 2020-08-30 15:49:50
// Comments :
// -----------------------------------------------------------------------------


module top_module (
    input      [99:0] a, b,
    input             cin ,
    output reg [99:0] cout,
    output reg [99:0] sum
);
    integer i;
    always @(*)begin
        // generate
        for (i = 0 ; i<100; i = i+1)
            begin
                sum = a+b+cin;
                if(!i)
                    cout[i] = (a[i]&b[i]) | (b[i]&cin) | (cin &a[i]);
                else
                    cout[i] = (a[i]&b[i]) | (b[i]&cout[i-1]) | (cout[i-1] &a[i]);
            end
        //endgenerate
    end
endmodule
