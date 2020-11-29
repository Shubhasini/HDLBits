// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 166_circuit5.v
// Create                 : 2020-11-29 11:52:20
// Revision               : 2020-11-29 11:52:21
// url of que.            : https://hdlbits.01xz.net/wiki/Sim/circuit5
// Description            :
//
// -----------------------------------------------------------------------------

module top_module (
	input  [3:0] a,
	input  [3:0] b,
	input  [3:0] c,
	input  [3:0] d,
	input  [3:0] e,
	output reg [3:0] q
);

	always @ (*)
		begin
			case (c)
				4'h0 : q = b;
				4'h1 : q = e;
				4'h2 : q = a;
				4'h3 : q = d;
				4'h4 : q = 4'hf;
				default q = 4'hf;
			endcase
		end
endmodule
