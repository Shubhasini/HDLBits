// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 114_Rule90.v
// Create           : 2020-09-09 23:06:38
// Revision         : 2020-09-09 23:06:51
// Description      : he next state of each cell is 
//                    the XOR of the cell's two current neighbours
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
				q <= {1'b0,q[511:1]} ^ {q[510:0],1'b0};
				// MSB and LSB is 0 other bit are XOR of neighbours
			end
		end
endmodule