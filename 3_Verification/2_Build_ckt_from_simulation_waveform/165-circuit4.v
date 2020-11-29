// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 165-circuit4.v
// Create                 : 2020-11-29 11:51:07
// Revision               : 2020-11-29 11:51:07
// url of que.            : https://hdlbits.01xz.net/wiki/Sim/circuit4
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

	assign q = b | c; // Fix me

endmodule
