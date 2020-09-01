// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 20_module_name.v
// Create   : 2020-08-30 15:47:03
// Revise   : 2020-08-30 15:47:05
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input  a   ,
	input  b   ,
	input  c   ,
	input  d   ,
	output out1,
	output out2
);
	//connecting ports by name
	mod_a i_mod_a (.out1(out1), .out2(out2), .in1(a), .in2(b), .in3(c), .in4(d));
	
endmodule
