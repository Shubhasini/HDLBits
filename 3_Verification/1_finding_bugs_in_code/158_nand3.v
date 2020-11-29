// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 158_nand3.v
// Create                 : 2020-11-29 11:21:18
// Revision               : 2020-11-29 11:21:19
// url of que.            : https://hdlbits.01xz.net/wiki/Bugs_nand3
// Description            : bug in nand gate
//
// -----------------------------------------------------------------------------

module top_module (
	input  a  ,
	input  b  ,
	input  c  ,
	output out
);//

	reg out_i;
	andgate inst1 ( out_i, a,b,c,1'b1,1'b1 );
	assign out = ~out_i;
	
endmodule