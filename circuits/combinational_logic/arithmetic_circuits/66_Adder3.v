// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 66_Adder3.v
// Create   : 2020-08-30 15:51:15
// Revise   : 2020-08-30 15:51:16
// Comments :
// -----------------------------------------------------------------------------


module top_module (
	input  [2:0] a, b,
	input        cin ,
	output [2:0] cout,
	output [2:0] sum
);

	full_adder i_full_adder1 (a[0],b[0],cin,cout[0],sum[0]);
	full_adder i_full_adder2 (a[1],b[1],cout[0],cout[1],sum[1]);
	full_adder i_full_adder3 (a[2],b[2],cout[1],cout[2],sum[2]);
endmodule


module full_adder (
	input  a, b,
	input  cin ,
	output cout, sum
);
	assign {cout,sum} = a+b+cin;
endmodule
