// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 157_mux2.v
// Create                 : 2020-11-29 11:19:49
// Revision               : 2020-11-29 11:19:50
// url of que.            : https://hdlbits.01xz.net/wiki/Bugs_mux2
// Description            : bug in 2:1 mux
//
// -----------------------------------------------------------------------------

module top_module (
    input sel,
    input [7:0] a,
    input [7:0] b,
    output [7:0] out  );

    assign out = sel ? a : b; //fix me

endmodule