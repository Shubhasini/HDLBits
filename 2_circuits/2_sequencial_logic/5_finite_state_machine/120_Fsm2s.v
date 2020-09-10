// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 120_Fsm2s.v
// Create           : 2020-09-10 21:17:09
// Revision         : 2020-09-10 21:23:17
// Description      :
// 
// -----------------------------------------------------------------------------

module top_module (
	input  clk  ,
	input  reset, // Synchronous reset to OFF
	input  j    ,
	input  k    ,
	output out
);

	parameter OFF = 0 , ON =1;

	reg present_state, next_state;

	// State flip-flops with synchronous reset
	always @(posedge clk)
		begin : proc
			if (reset)
				begin
					present_state <= OFF;
				end
			else
				begin
					present_state <= next_state;
				end
		end

	// State transition logic
	always @(*)
	begin : proc_
		case (present_state)
			OFF : next_state = j ? ON : OFF;
			ON  : next_state = k ? OFF : ON;
		endcase
	end

	//output logic
	assign out = present_state ;
endmodule 