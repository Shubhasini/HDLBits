// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 75_kmap5.v
// Create   : 2020-08-30 17:16:40
// Revise   : 2020-08-30 17:22:38
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input  a      ,
	input  b      ,
	input  c      ,
	input  d      ,
	output out_sop,
	output out_pos
);
	assign out_sop = (c&d) | (~a & ~b & c );
	assign out_pos = c & (~b | d) & (~a | d);
endmodule
