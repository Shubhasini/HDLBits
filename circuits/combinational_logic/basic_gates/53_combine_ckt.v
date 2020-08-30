// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 53_combine_ckt.v
// Create   : 2020-08-30 15:53:35
// Revise   : 2020-08-30 15:53:36
// Comments :
// -----------------------------------------------------------------------------


module top_module (
	input  x,
	input  y,
	output z
);
//intermidiate wires
	wire intermidiate_za1,intermidiate_zb1,intermidiate_za2,intermidiate_zb2;

//intentiation of sub modules

	ckta A1 (x,y,intermidiate_za1);

	cktb B1 (x,y,intermidiate_zb1);

	ckta A2 (x,y,intermidiate_za2);

	cktb B2 (x,y,intermidiate_zb2);

//assigning final output of the ckt

	assign z = (intermidiate_za2 & intermidiate_zb2) ^ (intermidiate_za1 | intermidiate_zb1) ;
endmodule

module ckta (
	input  x,
	input  y,
	output z
);
	assign z = (x^y) & x;
endmodule

module cktb (
	input  x,
	input  y,
	output z
);
	assign z = ~(x ^ y);
endmodule
