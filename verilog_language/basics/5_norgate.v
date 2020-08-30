// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 5_norgate.v
// Create   : 2020-08-30 15:45:50
// Revise   : 2020-08-30 15:45:52
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input  a  ,
	input  b  ,
	output out
);
	//Create a module that implements a NOR gate.
	assign out = !(a | b);
endmodule
