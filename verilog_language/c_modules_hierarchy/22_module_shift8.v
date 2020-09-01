// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 22_module_shift8.v
// Create   : 2020-08-30 15:47:19
// Revise   : 2020-08-30 15:47:21
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input        clk,
	input  [7:0] d  ,
	input  [1:0] sel,
	output [7:0] q
);
	reg [7:0] q0, q1, q2; // output of each my_dff8
	my_dff8 i_my_dff80 (
		.clk(clk),
		.d  (d  ),
		.q  (q0 )
	);
	my_dff8 i_my_dff81 (
		.clk(clk),
		.d  (q0 ),
		.q  (q1 )
	);
	my_dff8 i_my_dff82 (
		.clk(clk),
		.d  (q1 ),
		.q  (q2 )
	);

	//a 4-to-1 multiplexer
	always @(*)
	begin
		case (sel)
			2'b00 : q = d ;
			2'b01 : q = q0;
			2'b10 : q = q1;
			2'b11 : q = q2;
		endcase
	end
endmodule
