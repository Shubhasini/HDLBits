// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 61_Mux9to1v.v
// Create   : 2020-08-30 15:54:43
// Revise   : 2020-08-30 15:54:44
// Comments :
// -----------------------------------------------------------------------------


module top_module (
	input      [15:0] a, b, c, d, e, f, g, h, i,
	input      [ 3:0] sel,
	output reg [15:0] out
);
	always @(*)
		begin
			case(sel)
				4'b0000 : out = a;
				4'b0001 : out = b;
				4'b0010 : out = c;
				4'b0011 : out = d;
				4'b0100 : out = e;
				4'b0101 : out = f;
				4'b0110 : out = g;
				4'b0111 : out = h;
				4'b1000 : out = i;
				default : out = '1; //for all 1's
			endcase
		end
endmodule
