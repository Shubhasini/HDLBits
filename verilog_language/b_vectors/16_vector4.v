// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 16_vector4.v
// Create   : 2020-08-30 15:44:57
// Revise   : 2020-08-30 15:44:58
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input  [ 7:0] in ,
	output [31:0] out
);
//
// Concatenate two things together:
// 1: {in[7]} repeated 24 times (24 bits)
// 2: in[7:0] (8 bits)
	assign out[31:0] = { {24{in[7]}},in[7:0] };

endmodule
