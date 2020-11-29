// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 170_circuit9.v
// Create                 : 2020-11-29 11:55:56
// Revision               : 2020-11-29 11:55:58
// url of que.            : https://hdlbits.01xz.net/wiki/Sim/circuit9
// Description            :
//
// -----------------------------------------------------------------------------

module top_module (
	input            clk,
	input            a  ,
	output reg [3:0] q
);

	always @ (posedge clk)
		begin
			if (a)
				q <= 4'h4;
			else if (q == 4'h6)
				q <= 4'h0;
			else
				q <= q+1;
		end
endmodule
