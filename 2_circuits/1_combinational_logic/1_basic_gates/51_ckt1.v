// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 51_ckt1.v
// Create   : 2020-08-30 15:53:20
// Revise   : 2020-08-30 15:53:21
// Comments :
// -----------------------------------------------------------------------------


module top_module (
	input  x,
	input  y,
	output z
);

	assign z = (x^y) & x;
endmodule
