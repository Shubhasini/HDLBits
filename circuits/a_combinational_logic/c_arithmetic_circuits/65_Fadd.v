// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 65_Fadd.v
// Create   : 2020-08-30 15:51:07
// Revise   : 2020-08-30 15:51:08
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input  a, b, cin,
	output cout, sum
);

	assign {cout,sum} = a+b+cin;
endmodule
