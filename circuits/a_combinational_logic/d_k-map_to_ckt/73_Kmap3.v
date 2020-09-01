// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 73_Kmap3.v
// Create   : 2020-08-30 16:43:40
// Revise   : 2020-08-30 16:44:39
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
	assign out = a | (~b & c);

	//product of sum form
	//assign out = ~((~a) & (b | ~c));

endmodule
