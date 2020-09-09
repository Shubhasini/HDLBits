// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 111_m2014_q4k.v
// Create           : 2020-09-08 20:03:44
// Revision         : 2020-09-08 20:12:26
// Description      :
// 
// -----------------------------------------------------------------------------

module top_module (
	input  clk   ,
	input  resetn, // synchronous reset
	input  in    ,
	output out
);
	reg [3:0] in_shift; //to save the shifted input

	always @(posedge clk)
		begin : proc_
			if(~resetn)
				begin
					in_shift <= 0;
				end
			else
				begin
					in_shift <= {in_shift[2:0],in};
				end
		end
	assign out = in_shift[3];
endmodule
