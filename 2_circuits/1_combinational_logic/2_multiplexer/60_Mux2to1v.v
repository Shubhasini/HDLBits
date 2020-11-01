// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 60_Mux2to1v.v
// Create   : 2020-08-30 15:54:38
// Revise   : 2020-08-30 15:54:39
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input      [99:0] a, b,
	input             sel,
	output reg [99:0] out
);

	always @(*)
		case(sel)
			1'b0: out = a;
			1'b1: out = b;
		endcase

		//can use ternary operator
		//assign out = sel ? b : a;
	endmodule
