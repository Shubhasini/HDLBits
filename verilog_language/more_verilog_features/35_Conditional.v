// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 35_Conditional.v
// Create   : 2020-08-30 15:48:55
// Revise   : 2020-08-30 15:48:58
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input  [7:0] a, b, c, d,
	output [7:0] min
);
//
	wire [7:0] y1,y2; //to assign intermidiate stage 
	// Given four unsigned numbers, find the minimum
	assign y1  = a>b ? b:a;
	assign y2  = c>d ? d:c;
	assign min = y1 >y2 ? y2:y1;

endmodule
