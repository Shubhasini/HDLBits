// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 47_gates3.v
// Create   : 2020-08-30 15:52:52
// Revise   : 2020-08-30 15:52:53
// Comments :
// -----------------------------------------------------------------------------


module top_module (
	input  a, b     ,
	output out_and  ,
	output out_or   ,
	output out_xor  ,
	output out_nand ,
	output out_nor  ,
	output out_xnor ,
	output out_anotb
);
	assign out_and   = a & b; //bitwise and opration
	assign out_or    = a | b;
	assign out_xor   = a ^ b;
	assign out_nand  = ~(a & b);
	assign out_nor   = ~(a | b);
	assign out_xnor  = ~(a ^ b);
	assign out_anotb = a & (~b);

endmodule
