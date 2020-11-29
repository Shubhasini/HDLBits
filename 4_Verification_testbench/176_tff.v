// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 176_tff.v
// Create                 : 2020-11-29 12:01:28
// Revision               : 2020-11-29 12:01:29
// url of que.            : https://hdlbits.01xz.net/wiki/Tb/tff
// Description            :
//
// -----------------------------------------------------------------------------

module top_module ();
	reg  clk, reset, t;
	wire q  ;

	tff i_tff (clk,reset,t,q);
	initial
		begin
			clk = 0;
			forever #5 clk = ~clk;
		end

	initial
		begin
			reset <= 1;
			t <=0;
			# 5 reset <= 0;
			#10 t <= 1;
		end
endmodule
