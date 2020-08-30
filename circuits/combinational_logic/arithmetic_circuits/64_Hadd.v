// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 64_Hadd.v
// Create   : 2020-08-30 15:51:01
// Revise   : 2020-08-30 15:51:02
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input  a, b,
	output cout, sum
);

	assign {cout,sum} = a+b;

endmodule
