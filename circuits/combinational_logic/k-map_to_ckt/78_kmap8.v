// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 78_kmap8.v
// Create   : 2020-08-30 17:27:25
// Revise   : 2020-08-30 17:41:02
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input        c     ,
	input        d     ,
	output [3:0] mux_in
);
	//using mux only
	assign mux_in[0] = (c ? 1 : (d ? 1 : 0)) ;
	assign mux_in[1] = 0;
	assign mux_in[2] = d ? 0 : 1;
	assign mux_in[3] = c ? (d ? 1 : 0) : 0;

	//using gates
	//assign mux_in[0] = c|d ;
	//assign mux_in[1] = 0;
	//assign mux_in[2] = ~d;
	//assign mux_in[3] = (c&d);
endmodule
