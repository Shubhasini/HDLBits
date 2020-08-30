// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 2_wire4.v
// Create   : 2020-08-30 15:45:27
// Revise   : 2020-08-30 15:45:28
// Comments :
// -----------------------------------------------------------------------------


module top_module (
	input  a, b, c,
	output w, x, y, z
);
	//a -> w
    //b -> x
    //b -> y
    //c -> z
	assign w = a;
	assign x = b;
	assign y = b;
	assign z = c;
endmodule
