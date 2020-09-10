// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 119_Fsm2.v
// Create           : 2020-09-10 18:17:23
// Revision         : 2020-09-10 21:13:57
// Description      : moore machine
//
// -----------------------------------------------------------------------------

module top_module (
	input  clk   ,
	input  areset, // Asynchronous reset to OFF
	input  j     ,
	input  k     ,
	output out
);
//
	parameter OFF = 0, ON=1;
	reg       present_state, next_state;

	always @(posedge clk, posedge areset)
		begin : proc_
			if (areset)
				begin
					present_state <= OFF;
				end
			else
				begin
					present_state <= next_state;
				end
		end

		//assign next_state
	always @(*)
		begin : proc
			case (present_state)
				ON  : next_state = k ? OFF : ON  ;
				OFF : next_state = j ? ON : OFF;
			endcase
		end
  //output value
	assign out = present_state;
endmodule