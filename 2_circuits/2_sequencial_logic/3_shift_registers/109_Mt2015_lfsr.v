// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 109_Mt2015_lfsr.v
// Create           : 2020-09-08 19:12:27
// Revision         : 2020-09-08 19:20:48
// Description      :
//
// -----------------------------------------------------------------------------

module top_module (
	input      [2:0] SW  , // R
	input      [1:0] KEY , // L and clk
	output reg [2:0] LEDR // Q
);

	always @(posedge KEY[0])
		begin : proc
			//ref fig.
			LEDR[0] <= (~KEY[1] & LEDR[2]) | (KEY[1] & SW[0]) ;
			LEDR[1] <= (~KEY[1] & LEDR[0]) | (KEY[1] & SW[1]);
			LEDR[2] <= (~KEY[1] & (LEDR[1] ^ LEDR[2])) | (KEY[1] & SW[2]);

		end
endmodule
