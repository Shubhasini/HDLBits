// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 48_7420.v
// Create   : 2020-08-30 15:52:58
// Revise   : 2020-08-30 15:52:59
// Comments :
// -----------------------------------------------------------------------------


module top_module (
	input  p1a, p1b, p1c, p1d,
	output p1y,
	input  p2a, p2b, p2c, p2d,
	output p2y
);
//2 4-input nand gate
	assign p1y = ~(p1a & p1b & p1c & p1d);
	assign p2y = ~(p2a & p2b & p2c & p2d);
endmodule
