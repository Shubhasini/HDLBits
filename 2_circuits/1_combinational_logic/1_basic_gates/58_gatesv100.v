// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 58_gatesv100.v
// Create   : 2020-08-30 15:54:18
// Revise   : 2020-08-30 15:54:18
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input  [99:0] in           ,
	output [98:0] out_both     ,
	output [99:1] out_any      ,
	output [99:0] out_different
);

	assign out_both      = in[98:0] & in[99:1];
	assign out_any       = in[99:1] | in[98:0];
	assign out_different = in[99:0] ^ {in[0],in[99:1]};

endmodule
