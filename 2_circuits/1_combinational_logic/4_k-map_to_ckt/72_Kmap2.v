// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 72_Kmap2.v
// Create   : 2020-08-30 16:22:27
// Revise   : 2020-08-30 16:30:21
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input  a  ,
	input  b  ,
	input  c  ,
	input  d  ,
	output out
);

	//sum of product form
	assign out = (~b & ~c) | (~a & ~d) | (b & c & d) | (a & c & d);

	//product of sum form
	//assign out = ~((b | c) & (a | d) & (~b| ~c| ~d) & (~a| ~c| ~d));
endmodule
