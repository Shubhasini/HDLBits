// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 69_Adder100.v
// Create   : 2020-08-30 15:51:36
// Revise   : 2020-08-30 15:51:41
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input  [99:0] a, b,
	input         cin ,
	output        cout,
	output [99:0] sum
);
	// The concatenation {cout, sum}
	assign {cout,sum} = a+b+cin;
endmodule
