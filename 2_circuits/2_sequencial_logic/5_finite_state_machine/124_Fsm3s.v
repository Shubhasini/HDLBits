// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 124_Fsm3s.v
// Create           : 2020-09-11 15:27:56
// Revision         : 2020-09-11 15:27:58
// Description      : moore machine with sync reset
// 
// -----------------------------------------------------------------------------

module top_module (
	input  clk  , // Clock
	input  in   , // Clock Enable
	input  reset, // Asynchronous reset active low
	output out
);
	reg [3:0] present_state, next_state;

	parameter A = 1, B=2, C=3, D=4;

	// State flip-flops with synchronous reset
	always @(posedge clk)
		begin : proc
			if (reset) begin
				present_state <= A;
			end
			else
				present_state <= next_state;
		end

// State transition logic
	always @(*)
	begin : proc_
		case (present_state)
			A       : next_state = in ? B : A;
			B       : next_state = in ? B : C;
			C       : next_state = in ? D : A;
			D       : next_state = in ? B : C;
			default : next_state = A;
		endcase
	end

	assign out = (present_state==D);
endmodule