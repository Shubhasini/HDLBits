// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 110_Lfsr32.v
// Create           : 2020-09-08 19:22:36
// Revision         : 2020-09-08 19:24:47
// Description      : 32-bit Galois LFSR with
//                     taps at bit positions 32, 22, 2, and 1
//
// -----------------------------------------------------------------------------

module top_module (
	input             clk  ,
	input             reset, // Active-high synchronous reset to 32'h1
	output reg [31:0] q
);
	always @(posedge clk)
		begin : proc_
			if(reset)
				begin
					q <= 32'h1;
				end
			else
				begin
					q     <= q[31:1];
					q[31] <= q[0];
					q[21] <= q[22] ^ q[0];
					q[1]  <= q[2] ^ q[0];
					q[0]  <= q[1] ^ q[0];
				end
		end
endmodule
