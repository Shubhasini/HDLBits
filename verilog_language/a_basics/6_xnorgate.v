// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 6_xnorgate.v
// Create   : 2020-08-30 15:45:59
// Revise   : 2020-08-30 15:46:01
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input  a  ,
	input  b  ,
	output out
);
	//Create a module that implements an XNOR gate.
	assign out = !(a ^ b);
endmodule
