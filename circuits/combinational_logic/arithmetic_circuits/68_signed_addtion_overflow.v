// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 68_signed_addtion_overflow.v
// Create   : 2020-08-30 15:51:28
// Revise   : 2020-08-30 15:51:30
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input  [7:0] a       ,
	input  [7:0] b       ,
	output [7:0] s       ,
	output       overflow
);//

	assign s[7:0] = a + b;
	//overflow equation (sign bit = 110 or 001)
	assign overflow = (~a[7]&~b[7]&s[7]) | (a[7]&b[7]&~s[7]);

endmodule
