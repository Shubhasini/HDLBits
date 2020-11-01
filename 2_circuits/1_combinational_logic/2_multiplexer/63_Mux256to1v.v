// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 63_Mux256to1v.v
// Create   : 2020-08-30 15:55:00
// Revise   : 2020-08-30 15:55:01
// Comments :
// -----------------------------------------------------------------------------


module top_module (
	input      [1023:0] in ,
	input      [   7:0] sel,
	output reg [   3:0] out
);
	reg [7:0] sel1;

	always@(*)
		begin
			sel1 = sel; //changing reg input
			//assign out = in[(sel*4 + 3) : (sel*4)];
			//above statement is not valid in verilog
			//instead verilog-2001 introduced a "variable part select"
			assign out = in[sel1*4 +: 4];
		end
endmodule
