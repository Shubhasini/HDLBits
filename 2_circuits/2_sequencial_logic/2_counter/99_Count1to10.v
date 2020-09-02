// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 99_Count1to10.v
// Create           : 2020-09-01 22:01:08
// Revision         : 2020-09-01 22:01:44
// Description      :
// 
// -----------------------------------------------------------------------------

module top_module (
    input clk,
    input reset,
    output reg [3:0] q);
    
    //count 1 to 10
    //The reset input is synchronous, and should reset the counter to 1.

always @(posedge clk)
	begin : count
        if(reset || q == 4'ha) //out is one if reset or out = a
			begin
				q <= 4'h1;
			end
		else
			begin
				q <= q + 4'b1 ;
			end
    end
endmodule
