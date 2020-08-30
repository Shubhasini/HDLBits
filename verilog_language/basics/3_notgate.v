// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 3_notgate.v
// Create   : 2020-08-30 15:45:34
// Revise   : 2020-08-30 15:45:35
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input  in ,
	output out
);
	//Create a module that implements a NOT gate.
	assign out = !in;
endmodule
