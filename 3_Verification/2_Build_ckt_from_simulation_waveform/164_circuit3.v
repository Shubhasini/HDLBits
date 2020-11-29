// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 164_circuit3.v
// Create                 : 2020-11-29 11:50:25
// Revision               : 2020-11-29 11:50:26
// url of que.            : https://hdlbits.01xz.net/wiki/Sim/circuit3
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

	assign q = (b & (d | c) )| (a & (d | c)); // Fix me

endmodule
