// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 79_dff.v
// Create   : 2020-08-30 17:57:22
// Revise   : 2020-08-30 18:01:08
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input      clk, // Clocks are used in sequential circuits
	input      d  ,
	output reg q
);

	always @ (posedge clk)
		q <= d; //non-blocking
endmodule
