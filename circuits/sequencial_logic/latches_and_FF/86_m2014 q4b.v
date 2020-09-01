// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 86_m2014 q4b.v
// Create   : 2020-08-31 15:49:30
// Revise   : 2020-08-31 15:56:52
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input      clk,
	input      d  ,
	input      ar , // asynchronous reset
	output reg q
);

	always @(posedge clk or posedge ar)  //async reset
		begin : dff
			if(ar) begin      //active high reset
				q <= 0;
			end
			else
				begin
					q <= d;
				end
		end
endmodule
