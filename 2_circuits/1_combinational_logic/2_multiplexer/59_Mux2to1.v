// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 59_Mux2to1.v
// Create   : 2020-08-30 15:54:29
// Revise   : 2020-08-30 15:54:31
// Comments :
// -----------------------------------------------------------------------------


module top_module (
	input      a, b, sel,
	output reg out
);
	always @(*)
		case(sel)
			1'b0: out = a;
			1'b1: out = b;
		endcase
	endmodule
