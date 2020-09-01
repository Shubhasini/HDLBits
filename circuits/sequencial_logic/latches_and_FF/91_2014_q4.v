// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 91_2014_q4.v
// Create   : 2020-08-31 18:10:29
// Revise   : 2020-08-31 18:41:51
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input      clk,
	input      x  ,
	output reg z
);
	reg q1, q2, q3;
	// with instantiation
	dff i_dff0 (.clk(clk), .d(x^q1), .q(q1)) ;
	dff i_dff1 (.clk(clk), .d(x&~q2), .q(q2));
	dff i_dff2 (.clk(clk), .d(x|~q3), .q(q3));

	nor (z, q1, q2, q3);

	// //D flip-flops are initially reset to zero
	// initial z = 1;
	// // without instantiation
	// always @(posedge clk)
	// 	begin
	// 		q1 = x^q1    ; //blocking assignment 
	// 		q2 = x & ~q2 ;
	// 		q3 = x | ~q3 ;
	// 		z  = ~(q1 | q2 | q3);
	// 	end
endmodule

module dff (
	input      clk, // Clock
	input      d  , // input d
	output reg q
);
	always @(posedge clk)
		begin : dff_gates
			q <= d;
		end
endmodule