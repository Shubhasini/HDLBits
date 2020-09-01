// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 44_nor.v
// Create   : 2020-08-30 15:52:21
// Revise   : 2020-08-30 15:52:22
// Comments :
// -----------------------------------------------------------------------------


module top_module (
	input  in1,
	input  in2,
	output out
);
	assign out = ~(in1 | in2);
endmodule