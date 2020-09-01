// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 11_vector2.v
// Create   : 2020-08-30 15:43:30
// Revise   : 2020-08-30 15:43:32
// Comments :
// -----------------------------------------------------------------------------


module top_module (
	input  [31:0] in ,
	output [31:0] out
);
//
//AaaaaaaaBbbbbbbbCcccccccDddddddd => DdddddddCcccccccBbbbbbbbAaaaaaaa
	assign out[31:24] = in[7:0];
	assign out[23:16] = in[15:8];
	assign out[15:8]  = in[23:16];
	assign out[7:0]   = in[31:24];

endmodule
