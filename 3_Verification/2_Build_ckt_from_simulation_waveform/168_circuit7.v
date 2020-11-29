// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 168_circuit7.v
// Create                 : 2020-11-29 11:54:06
// Revision               : 2020-11-29 11:54:07
// url of que.            : https://hdlbits.01xz.net/wiki/Sim/circuit7
// Description            :
//
// -----------------------------------------------------------------------------

module top_module (
	input      clk,
	input      a  ,
	output reg q
);

    always @ (posedge clk)
        begin
            q <= ~a;
        end
endmodule
