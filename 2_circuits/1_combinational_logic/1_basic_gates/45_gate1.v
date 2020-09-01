// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 45_gate1.v
// Create   : 2020-08-30 15:52:35
// Revise   : 2020-08-30 15:52:37
// Comments :
// -----------------------------------------------------------------------------


module top_module (
	input  in1,
	input  in2,
	output out
);
	assign out = in1 & (~in2) ;
endmodule
