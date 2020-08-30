// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 50_2_bit_equality.v
// Create   : 2020-08-30 15:53:14
// Revise   : 2020-08-30 15:53:15
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input  [1:0] A,
	input  [1:0] B,
	output       z
);
	// two bit equality can be implimented by xnor gate
	assign z = (~(A[0] ^ B[0])) & (~(A[1] ^ B[1]));

	// two bit equality can be implimented by comparison
	//assign z = (A[1:0]==B[1:0]);
endmodule
