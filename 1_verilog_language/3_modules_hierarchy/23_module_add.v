// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 23_module_add.v
// Create   : 2020-08-30 15:47:28
// Revise   : 2020-08-30 15:47:29
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input  [31:0] a  ,
	input  [31:0] b  ,
	output [31:0] sum
);
	//given a module add16 that performs a 16-bit addition. Instantiate two of
	//them to create a 32-bit adder. One add16 module computes the lower 16 bits
	//of the addition result, while the second add16 module computes the upper 16
	//bits of the result
	reg [15:0] isum0, isum1;
	reg        icout, icout1;
	add16 i_add160 (
		.a   (a[15:0]),
		.b   (b[15:0]),
		.cin (1'b0   ),
		.sum (isum0  ),
		.cout(icout  )
	);

	add16 i_add161 (
		.a   (a[31:16]),
		.b   (b[31:16]),
		.cin (icout   ),
		.sum (isum1   ),
		.cout(icout1  )
	);
	assign sum = {isum1, isum0};

endmodule
