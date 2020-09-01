// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 19_module_pos.v
// Create   : 2020-08-30 15:46:53
// Revise   : 2020-08-30 15:46:53
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
	mod_a i_mod_a (out1,out2,a,b,c,d);

endmodule
