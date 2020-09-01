// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 94_anyedge.v
// Create           : 2020-09-01 14:17:45
// Revision         : 2020-09-01 14:19:24
// Description      :
// 
// -----------------------------------------------------------------------------

module top_module (
	input            clk    ,
	input      [7:0] in     ,
	output reg [7:0] anyedge
);
	reg [7:0] delayed_sig; //for storing 1 clk cycle delayed signal

	always @(posedge clk)
		begin
			delayed_sig <= in;
			//for positive edge detect (in = 1 & delayed_sig = 0)
			//for negative edge detect (in = 0 & delayed_sig = 1)
			anyedge     <= in ^ delayed_sig;
		end

endmodule