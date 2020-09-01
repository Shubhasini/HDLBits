// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 21_module_shift.v
// Create   : 2020-08-30 15:47:12
// Revise   : 2020-08-30 15:47:14
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input  clk,
	input  d  ,
	output q
);
//You are given a module my_dff with two inputs and one output (that
//implements a D flip-flop). Instantiate three of them, then chain them
//together to make a shift register of length 3. The clk port needs to be
//connected to all instances.
	wire q1, q2;
	my_dff i_my_dff0 (
		.clk(clk),
		.d  (d  ),
		.q  (q1 )
	);
	my_dff i_my_dff1 (
		.clk(clk),
		.d  (q1 ),
		.q  (q2 )
	);
	my_dff i_my_dff2 (
		.clk(clk),
		.d  (q2 ),
		.q  (q  )
	);
endmodule
