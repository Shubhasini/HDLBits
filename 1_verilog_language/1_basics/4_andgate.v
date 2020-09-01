// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 4_andgate.v
// Create   : 2020-08-30 15:45:41
// Revise   : 2020-08-30 15:46:31
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input  a  ,
	input  b  ,
	output out
);
	//Create a module that implements an AND gate.
	assign out = a & b;
endmodule
