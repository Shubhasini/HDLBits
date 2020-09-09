// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 108_Lfsr5.v
// Create           : 2020-09-08 19:00:51
// Revision         : 2020-09-08 19:00:52
// Description      : Linear feedback shift register
//
// -----------------------------------------------------------------------------

module top_module (
	input            clk  ,
	input            reset, // Active-high synchronous reset to 5'h1
	output reg [4:0] q
);
	always @(posedge clk)
		begin : proc_
			if(reset)
				begin
					q <= 5'h1;
				end
			else
				begin
					q[4] <= q[0] ^ 0; //q[0]
					q[3] <= q[4];
					q[2] <= q[3] ^ q[0];
					q[1] <= q[2];
					q[0] <= q[1];
				end
		end

endmodule