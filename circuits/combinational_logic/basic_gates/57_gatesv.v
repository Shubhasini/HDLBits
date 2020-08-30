// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 57_gatesv.v
// Create   : 2020-08-30 15:54:10
// Revise   : 2020-08-30 15:54:10
// Comments :
// -----------------------------------------------------------------------------


module top_module (
	input  [3:0] in           ,
	output [2:0] out_both     ,
	output [3:1] out_any      ,
	output [3:0] out_different
);
	//using bitwise operation

	assign out_both = in[2:0] & in[3:1];

	assign out_any = in[3:1] | in[2:0];

	assign out_different = in[3:0] ^ {in[0], in[3:1]};

endmodule
