// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 62_Mux256to1.v
// Create   : 2020-08-30 15:54:52
// Revise   : 2020-08-30 15:54:53
// Comments :
// -----------------------------------------------------------------------------



module top_module (
	input  [255:0] in ,
	input  [  7:0] sel,
	output         out
);
	// assign out to the input sel bit
	assign out = in[sel];
endmodule
