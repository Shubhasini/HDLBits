// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 92_2013_q7.v
// Create   : 2020-08-31 19:36:53
// Revise   : 2020-08-31 19:44:41
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input      clk,
	input      j  ,
	input      k  ,
	output reg Q
);

	// wire Qold;
	always @(posedge clk)
		begin : jk_ff
			Q <= (j & ~Q) | (~k & Q);
		end
endmodule
