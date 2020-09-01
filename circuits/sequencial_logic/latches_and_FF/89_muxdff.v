// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 89_muxdff.v
// Create   : 2020-08-31 16:05:07
// Revise   : 2020-08-31 16:27:29
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input clk,
	input L,
	input r_in,
	input q_in,
	output reg Q);

always @(posedge clk)
	begin : d_ff
		Q <= L ? r_in : q_in;
	end
endmodule
