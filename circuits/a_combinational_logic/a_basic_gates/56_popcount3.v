// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 56_popcount3.v
// Create   : 2020-08-30 15:54:03
// Revise   : 2020-08-30 15:54:04
// Comments :
// -----------------------------------------------------------------------------


module top_module (
	input  [2:0] in ,
	output [1:0] out
);
	integer i;
	always @(*)begin
		out = 2'b00;
		for(i=0; i<3; i=i+1)
			begin
				if (in[i] == 1)
					out = out + 2'b01;
			end
	end
endmodule
