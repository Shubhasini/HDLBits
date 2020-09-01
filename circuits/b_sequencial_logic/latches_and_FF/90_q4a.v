// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 90_q4a.v
// Create   : 2020-08-31 16:32:42
// Revise   : 2020-08-31 18:00:37
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input      clk,
	input      w, R, E, L,
	output reg Q
);

	always @(posedge clk)
		begin : mux_dff
			Q <= L ? R : (E ? w : Q); //using non-blocking assignment
		end
endmodule
