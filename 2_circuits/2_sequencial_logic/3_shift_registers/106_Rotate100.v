// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 106_Rotate100.v
// Create           : 2020-09-07 22:14:28
// Revision         : 2020-09-07 22:14:40
// Description      : 100-bit left/right rotator, 
//                     with synchronous load and left/right enable.
// -----------------------------------------------------------------------------

module top_module (
	input             clk ,
	input             load,
	input      [ 1:0] ena ,
	input      [99:0] data,
	output reg [99:0] q
);

	always @(posedge clk)
		begin : proc
			if (load)
				begin
					q <= data; //load data
				end
			else
				begin
					if (ena == 2'b01)  //rotate right
						q <= {q[0], q[99:1]};
					if (ena == 2'b10) //rotate left
						q <= {q[98:0], q[99]};
				end
		end
endmodule