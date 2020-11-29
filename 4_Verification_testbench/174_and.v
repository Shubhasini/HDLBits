// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 174_and.v
// Create                 : 2020-11-29 12:00:07
// Revision               : 2020-11-29 12:00:07
// url of que.            : https://hdlbits.01xz.net/wiki/Tb/and
// Description            :
//
// -----------------------------------------------------------------------------

module top_module ();
	reg  [1:0] in ;
	wire       out;
		andgate i_andgate (in,out); 

	initial
		begin
			in[1] <= 0;
			in[0] <= 0;
			#10
				in[0] <= 1 ;
			#10
				in[1] <= 1;
			in[0] <= 0;
			#10
				in[0] <= 1;
		end
endmodule
