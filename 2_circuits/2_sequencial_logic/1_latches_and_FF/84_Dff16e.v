// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 84_Dff16e.v
// Create   : 2020-08-31 15:14:12
// Revise   : 2020-08-31 15:36:25
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input             clk    ,
	input             resetn ,
	input      [ 1:0] byteena,
	input      [15:0] d      ,
	output reg [15:0] q
);

	always @(posedge clk)
		begin : dff
			if(~resetn)
				begin
					q <= 0;
				end
			else
				begin
					q[15:8] <= byteena[1]?d[15:8] : q[15:8];
					q[7:0]  <= byteena[0]?d[7:0]   : q[7:0];
				end
		end
endmodule
