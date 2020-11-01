// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 12_vectorgates.v
// Create   : 2020-08-30 15:43:37
// Revise   : 2020-08-30 15:43:39
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input  [2:0] a             ,
	input  [2:0] b             ,
	output [2:0] out_or_bitwise,
	output       out_or_logical,
	output [5:0] out_not
);
	//Build a circuit that has two 3-bit inputs that computes the bitwise-OR of
	//the two vectors, the logical-OR of the two vectors, and the inverse (NOT)
	//of both vectors. Place the inverse of b in the upper half of out_not (i.e.,
	//bits [5:3]), and the inverse of a in the lower half.
	assign out_or_bitwise = a|b ; //bitwise or
	assign out_or_logical = a||b; //logical or
	assign out_not[5:3]   = ~b;  //not
	assign out_not[2:0]   = ~a;

endmodule
