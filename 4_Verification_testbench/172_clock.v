// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 172_clock.v
// Create                 : 2020-11-29 11:58:16
// Revision               : 2020-11-29 11:58:17
// url of que.            : https://hdlbits.01xz.net/wiki/Tb/clock
// Description            :
//
// -----------------------------------------------------------------------------

module top_module ();
	reg clk;
	initial begin
		clk = 0;
		forever
			#(5) clk = ~clk;
	end
	dut dut_1(clk);
endmodule
