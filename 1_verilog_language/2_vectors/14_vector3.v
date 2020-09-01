// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 14_vector3.v
// Create   : 2020-08-30 15:44:30
// Revise   : 2020-08-30 15:44:30
// Comments : vector concatention operator
// -----------------------------------------------------------------------------


module top_module (
	input  [4:0] a, b, c, d, e, f,
	output [7:0] w, x, y, z
);
//

	// The output should be a concatenation of the input vectors followed by two 1 bits
	assign {w,x,y,z} = {a,b,c,d,e,f,2'b11};
endmodule
