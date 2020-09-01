// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 74_Kmap4.v
// Create   : 2020-08-30 17:00:32
// Revise   : 2020-08-30 17:01:05
// Comments :
// -----------------------------------------------------------------------------

module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  );
    //odd number of 1's in input
 assign out = a ^ b ^ c ^ d;
endmodule
