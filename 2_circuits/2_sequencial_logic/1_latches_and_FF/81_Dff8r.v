// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 81_Dff8r.v
// Create   : 2020-08-30 18:03:59
// Revise   : 2020-08-30 18:15:37
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input            clk  ,
	input            reset, // Synchronous reset
	input      [7:0] d    ,
	output reg [7:0] q
);

//Create 8 D flip-flops with active high synchronous reset.

	always @(posedge clk ) //output will only change at positive edge of clk
		begin 
			if (reset)
				q <= 8'd0;
			else
				q <= d;
		end
endmodule
