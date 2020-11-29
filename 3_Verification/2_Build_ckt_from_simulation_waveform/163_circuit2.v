// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 163_circuit2.v
// Create                 : 2020-11-29 11:49:40
// Revision               : 2020-11-29 11:49:41
// url of que.            : https://hdlbits.01xz.net/wiki/Sim/circuit2
// Description            :
//
// -----------------------------------------------------------------------------

module top_module (
	input  a,
	input  b,
	input  c,
	input  d,
	output q
);
//

	assign q = ~(a^b^c^d); // Fix me

endmodule
