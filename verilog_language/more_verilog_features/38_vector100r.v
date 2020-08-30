// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 38_vector100r.v
// Create   : 2020-08-30 15:49:27
// Revise   : 2020-08-30 15:49:29
// Comments :
// -----------------------------------------------------------------------------


module top_module (
	input  [99:0] in ,
	output [99:0] out
);
	integer i;
	always @(*)begin
		for (i=0; i<100 ; i=i+1) begin
			out[i] = in[99-i];
		end
	end
endmodule
