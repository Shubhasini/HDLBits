// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 27_alwaysblock1.v
// Create   : 2020-08-30 15:41:15
// Revise   : 2020-08-30 15:41:19
// Comments :
// -----------------------------------------------------------------------------


module top_module (
	input       a              ,
	input       b              ,
	output wire out_assign     ,
	output reg  out_alwaysblock
);
	assign out_assign = a & b; //assign statement
	always @(*)
	out_alwaysblock = a & b; //combinational always statement
endmodule
