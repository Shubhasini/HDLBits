// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 18_module.v
// Create   : 2020-08-30 15:46:46
// Revise   : 2020-08-30 15:46:47
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input  a  ,
	input  b  ,
	output out
);
	//create one instance of module mod_a, then connect the module's three pins
	//(in1, in2, and out) to your top-level module's three ports (wires a, b, and
	//out). The module mod_a is provided for you — you must instantiate it.
	mod_a i_mod_a (.in1(a), .in2(b), .out(out));
	
endmodule
