// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 167_circuit6.v
// Create                 : 2020-11-29 11:53:16
// Revision               : 2020-11-29 11:53:17
// url of que.            : https://hdlbits.01xz.net/wiki/Sim/circuit6
// Description            :
//
// -----------------------------------------------------------------------------

module top_module (
	input  [ 2:0] a,
	output reg [15:0] q
);
	always @(*)
		begin
			case (a)
				3'h0 : q = 16'h1232;
				3'h1 : q = 16'haee0;
				3'h2 : q = 16'h27d4;
				3'h3 : q = 16'h5a0e;
				3'h4 : q = 16'h2066;
				3'h5 : q = 16'h64ce;
				3'h6 : q = 16'hc526;
				3'h7 : q = 16'h2f19;
			endcase
		end
endmodule
