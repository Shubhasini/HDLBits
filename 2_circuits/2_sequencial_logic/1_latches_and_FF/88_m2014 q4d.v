// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 88_m2014 q4d.v
// Create   : 2020-08-31 15:59:51
// Revise   : 2020-08-31 16:01:53
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input      clk,
	input      in ,
	output reg out
);

	always @(posedge clk)
		begin : dff_gate
			out <= out ^ in;
		end
endmodule
