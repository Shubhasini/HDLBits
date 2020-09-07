// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 105_Shift4.v
// Create           : 2020-09-07 15:29:42
// Revision         : 2020-09-07 15:29:55
// Description      : 4-bit shift register (right shift), with asynchronous reset,
//                    synchronous load, and enable.
//
// -----------------------------------------------------------------------------

module top_module (
	input            clk   ,
	input            areset, // async active-high reset to zero
	input            load  ,
	input            ena   ,
	input      [3:0] data  ,
	output reg [3:0] q
);

	always @(posedge clk or posedge areset)
		begin : proc
			if(areset) begin
				q <= 0;
			end
			else
				if (load)
					q <= data;
			else
				if (ena)
					q <= q[3:1];
		end
endmodule