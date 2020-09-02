// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 98_Count10.v
// Create           : 2020-09-01 19:39:55
// Revision         : 2020-09-01 21:56:53
// Description      :
// 
// -----------------------------------------------------------------------------

module top_module (
    input clk,
    input reset,        // Synchronous active-high reset
    output reg [3:0] q);

// counter that counts from 0 through 9

always @(posedge clk)
	begin : count
		if(reset || q == 4'h9) //out is zero if reset or out = 9
			begin
				q <= 4'b0;
			end
		else
			begin
				q <= q + 4'b1 ;
			end
	end

endmodule
