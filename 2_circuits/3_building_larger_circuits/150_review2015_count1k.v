// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 150_review2015_count1k.v
// Create                 : 2020-11-18 19:13:54
// Revision               : 2020-11-18 19:13:54
// url of que.            : https://hdlbits.01xz.net/wiki/Exams/review2015_count1k
// Description            : count from 0 to 999
//
// -----------------------------------------------------------------------------

module top_module (
	input            clk  ,
	input            reset,
	output reg [9:0] q
);

	always @(posedge clk)
		begin : proc_
			if (reset)
				begin
					q <= 10'h0;
				end
			else if (q == 10'h3e7) //h'3e7 == d'999 
				begin
					q <= 10'h0;
				end
			else
				begin
					q <= q + 10'h1;
				end
		end
endmodule