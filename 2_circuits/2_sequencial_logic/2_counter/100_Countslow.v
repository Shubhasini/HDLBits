// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 100_Countslow.v
// Create           : 2020-09-01 22:02:27
// Revision         : 2020-09-01 22:14:10
// Description      :
// 
// -----------------------------------------------------------------------------


module top_module (
	input            clk    ,
	input            slowena,
	input            reset  ,
	output reg [3:0] q
);

	always @(posedge clk)
		begin : count_slow
			//out is 0 when reset or (out = 9 & slowena)
			if(reset || (q == 4'h9 && slowena))
				begin
					q <= 4'h0;
				end
			else if (slowena)
				begin
					q <= q + 4'h1; //counting
				end
			else
				begin
					q <= q; //default
				end
		end
endmodule