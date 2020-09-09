// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 113_2013_q12.v
// Create           : 2020-09-09 18:49:32
// Revision         : 2020-09-09 18:49:43
// Description      : 8x1 memory,
// 
// -----------------------------------------------------------------------------

module top_module (
	input  clk   ,
	input  enable,
	input  S     ,
	input  A, B, C,
	output Z
);

	reg [7:0] Q = 0;

	always @(posedge clk)
		begin : shift_reg
			if(enable) begin
				Q <= {Q[6:0], S};
			end
		end

	assign Z = Q[{A, B, C}];

endmodule
