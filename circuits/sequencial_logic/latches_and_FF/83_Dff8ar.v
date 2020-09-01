// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 83_Dff8ar.v
// Create   : 2020-08-31 15:07:07
// Revise   : 2020-08-31 15:12:59
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input            clk   ,
	input            areset, // active high asynchronous reset
	input      [7:0] d     ,
	output reg [7:0] q
);

       //Create 8 D flip-flops with active high asynchronous reset. All DFFs should
				//be triggered by the positive edge of clk.

	always @(posedge clk or posedge areset)
		begin : d_ff
			if(areset)
				q <= 8'b0;
			else
				q <= d;

		end
endmodule