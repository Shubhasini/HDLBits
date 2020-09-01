// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 37_gates100.v
// Create   : 2020-08-30 15:49:15
// Revise   : 2020-08-30 15:49:17
// Comments :
// -----------------------------------------------------------------------------


module top_module (
	input  [99:0] in     ,
	output        out_and,
	output        out_or ,
	output        out_xor
);
	assign out_and = &in[99:0]; //and of all 100 inputs
	assign out_or  = |in[99:0]; //or of all 100 inputs
	assign out_xor = ^in[99:0]; //xor of all 100 inputs
endmodule
