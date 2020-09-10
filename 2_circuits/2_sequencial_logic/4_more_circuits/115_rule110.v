// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 115_rule110.v
// Create           : 2020-09-10 15:43:47
// Revision         : 2020-09-10 15:52:12
// Description      :
// 
// -----------------------------------------------------------------------------

module top_module (
	input              clk ,
	input              load,
	input      [511:0] data,
	output reg [511:0] q
);
	always @(posedge clk)
		begin : proc
			if (load) begin
				q <= data; //load data
			end
			else begin
				q <= (((q[511:0] ^ {q[510:0], 1'b0}) & q[511:1])
					| ((q[511:0] |
							{q[510:0], 1'b0}) & (~q[511:1])));
				// MSB and LSB is 0 other bit are XOR of neighbours
			end
		end
endmodule