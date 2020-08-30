// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 52_ckt2.v
// Create   : 2020-08-30 15:53:25
// Revise   : 2020-08-30 15:53:26
// Comments :
// -----------------------------------------------------------------------------


module top_module (
	input  x,
	input  y,
	output z
);
//given waveform is of xnor gate
	assign z = ~(x ^ y);
endmodule
