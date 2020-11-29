// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 162_circuit1.v
// Create                 : 2020-11-29 11:48:56
// Revision               : 2020-11-29 11:48:58
// url of que.            : https://hdlbits.01xz.net/wiki/Sim/circuit1
// Description            :
//
// -----------------------------------------------------------------------------

module top_module (
	input  a,
	input  b,
	output q
);
//

	assign q = a&b; // Fix me

endmodule