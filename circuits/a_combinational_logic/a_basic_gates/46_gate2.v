// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 46_gate2.v
// Create   : 2020-08-30 15:52:42
// Revise   : 2020-08-30 15:52:43
// Comments :
// -----------------------------------------------------------------------------


module top_module (
    input in1,
    input in2,
    input in3,
    output out);
    assign out = ~(in1 ^ in2) ^ in3 ;
endmodule
