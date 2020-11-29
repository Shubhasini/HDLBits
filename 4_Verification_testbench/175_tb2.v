// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 175_tb2.v
// Create                 : 2020-11-29 12:00:47
// Revision               : 2020-11-29 12:00:48
// url of que.            : https://hdlbits.01xz.net/wiki/Tb/tb2
// Description            :
//
// -----------------------------------------------------------------------------

module top_module ();
	reg        clk,in;
	reg  [2:0] s  ;
	wire       out;
		q7 i_q7 (clk,in,s,out); 

	initial
		begin
			clk = 0;
			forever
				#5 clk = ~clk;
		end
	initial
		begin
			in <= 0;
			s <= 3'h2;
			#10
				s <= 3'h6;
			#10
				in <= 1;
			s <= 3'h2;
			#10
				in <= 0;
			s <= 3'h7;
			#10
				in <= 1;
			s <= 3'h0;
			#30
				in <= 0;
		end
endmodule
