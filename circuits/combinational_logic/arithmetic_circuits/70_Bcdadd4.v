// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 70_Bcdadd4.v
// Create   : 2020-08-30 15:51:55
// Revise   : 2020-08-31 01:08:09
// Comments :
// -----------------------------------------------------------------------------


module top_module (
	input  [15:0] a, b,
	input         cin ,
	output        cout,
	output [15:0]sum
);
	wire [2:0] i_cout;
//instantiating 1 digit (4-bit) adder
	bcd_fadd i_bcd_fadd1 (a[3:0],b[3:0],cin,i_cout[0],sum[3:0]);
	bcd_fadd i_bcd_fadd2 (a[7:4],b[7:4],i_cout[0],i_cout[1],sum[7:4]);
	bcd_fadd i_bcd_fadd3 (a[11:8],b[11:8],i_cout[1],i_cout[2],sum[11:8]);
	bcd_fadd i_bcd_fadd4 (a[15:12],b[15:12],i_cout[2],cout,sum[15:12]);
	
endmodule
