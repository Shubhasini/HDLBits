// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 71_Kmap1.v
// Create   : 2020-08-30 16:20:49
// Revise   : 2020-08-30 16:21:40
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input  a  ,
	input  b  ,
	input  c  ,
	output out
);

	assign out = (a | b | c);
	
endmodule
