// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 80_dff8.v
// Create   : 2020-08-30 18:01:51
// Revise   : 2020-08-30 18:03:13
// Comments :
// -----------------------------------------------------------------------------


module top_module (
	input            clk,
	input      [7:0] d  ,
	output reg [7:0] q
);

	always @(posedge clk)
		q <= d;
endmodule
