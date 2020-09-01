// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 82_Dff8p.v
// Create   : 2020-08-30 18:19:45
// Revise   : 2020-08-30 18:20:07
// Comments : synchronous reset
// -----------------------------------------------------------------------------

module top_module (
	input        clk  ,
	input        reset,
	input  [7:0] d    ,
	output reg [7:0] q
);


	//The flip-flops must be reset to 0x34 rather than zero. All DFFs should be
	//triggered by the negative edge of clk.

	always @(negedge clk ) //output will only change at negative edge of clk
		begin
			if (reset)
				q <= 8'h34;
			else
				q <= d;
		end
endmodule

