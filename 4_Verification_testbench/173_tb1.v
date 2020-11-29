// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 173_tb1.v
// Create                 : 2020-11-29 11:59:08
// Revision               : 2020-11-29 11:59:10
// url of que.            : https://hdlbits.01xz.net/wiki/Tb/tb1
// Description            :
//
// -----------------------------------------------------------------------------

module top_module (
	output reg A,
	output reg B
);//

	// generate input patterns here
	initial begin
		A <= 0;
		B <=0;
		#10 A <= 1;
		#5 B<=1;
		#5 A <= 0;
		#20 B <= 0;
	end

endmodule
