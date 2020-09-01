// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 87_m2014 q4c.v
// Create   : 2020-08-31 15:55:13
// Revise   : 2020-08-31 15:58:21
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input      clk,
	input      d  ,
	input      r  , // synchronous reset
	output reg q
);

	always @(posedge clk)
		begin : dff
			if(r)
				begin
					q <= 0;
				end
			else
				begin
					q <= d;
				end
		end
endmodule
