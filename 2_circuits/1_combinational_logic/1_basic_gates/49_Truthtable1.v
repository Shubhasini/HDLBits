// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 49_Truthtable1.v
// Create   : 2020-08-30 15:53:04
// Revise   : 2020-08-30 15:53:05
// Comments :
// -----------------------------------------------------------------------------


module top_module (
	input  x3,
	input  x2,
	input  x1, // three inputs
	output f   // one output
);

	assign f = (~x1 & x2 & ~x3)| (x1 & x2 & ~x3) |(x1 & x2 & x3)| (x1 & ~x2 & x3);
	
endmodule
