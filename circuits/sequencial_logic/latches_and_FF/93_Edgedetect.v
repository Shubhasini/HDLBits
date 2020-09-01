// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 93_Edgedetect.v
// Create           : 2020-08-31 23:18:10
// Revision         : 2020-09-01 14:17:16
// Description      :
// 
// -----------------------------------------------------------------------------

module top_module (
	input        clk  ,
	input  [7:0] in   ,
	output reg [7:0] pedge
);

	reg [7:0] delayed_sig; //storing 1 clk cycle delayed signal

	always @(posedge clk)
		begin
			delayed_sig <= in;
			//for positive edge detect (in = 1 & delayed_sig = 0)
			pedge       <= in & ~delayed_sig;  
		end

endmodule