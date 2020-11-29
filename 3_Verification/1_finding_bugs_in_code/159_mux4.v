// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 159_mux4.v
// Create                 : 2020-11-29 11:22:41
// Revision               : 2020-11-29 11:22:41
// url of que.            : https://hdlbits.01xz.net/wiki/Bugs_mux4
// Description            :
//
// -----------------------------------------------------------------------------

module top_module (
	input  [1:0] sel,
	input  [7:0] a  ,
	input  [7:0] b  ,
	input  [7:0] c  ,
	input  [7:0] d  ,
	output [7:0] out
);
//

	wire [7:0] mux0, mux1;
	mux2 mux_0 (sel[0],a,b,mux0);
	mux2 mux_1 (sel[0],c,d,mux1);
	mux2 mux_2 (sel[1],mux0,mux1,out);

endmodule
