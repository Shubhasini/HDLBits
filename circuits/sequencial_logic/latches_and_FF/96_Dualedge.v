// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 96_Dualedge.v
// Create           : 2020-09-01 16:14:45
// Revision         : 2020-09-01 17:33:54
// Description      :
// 
// -----------------------------------------------------------------------------

module top_module (
	input      clk,
	input      d  ,
	output reg q
);
	reg q1,q2;
	always @(posedge clk )
		begin : p
			q1 <= d^q2;
		end
	always @(negedge clk )
		begin : n
			q2 <= d^q1;
		end
	assign q = q1 ^ q2;

endmodule
