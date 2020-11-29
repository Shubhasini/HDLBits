// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 169_circuit8.v
// Create                 : 2020-11-29 11:54:53
// Revision               : 2020-11-29 11:54:54
// url of que.            : https://hdlbits.01xz.net/wiki/Sim/circuit8
// Description            :
//
// -----------------------------------------------------------------------------

module top_module (
	input      clock,
	input      a    ,
	output reg p    ,
	output reg q
);
	always @ (*)
		begin
			if (clock)
				p = a;
		end
	always @ (negedge clock)
		begin
			q <= a;
		end
endmodule
