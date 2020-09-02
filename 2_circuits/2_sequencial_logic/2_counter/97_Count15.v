// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 97_Count15.v
// Create           : 2020-09-01 19:34:18
// Revision         : 2020-09-01 19:39:06
// Description      :
// 
// -----------------------------------------------------------------------------

module top_module (
    input clk,
    input reset,      // Synchronous active-high reset
    output reg [3:0] q);

//a 4-bit binary counter that counts from 0 through 15, 

always @(posedge clk)
	begin : count
		if (reset)
			begin
				q <= 4'b0; //reset condition
			end
		else
			begin
				q <= q + 4'b1; //counting
			end
	end

endmodule
