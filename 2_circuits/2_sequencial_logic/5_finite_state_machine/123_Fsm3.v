// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 123_Fsm3.v
// Create           : 2020-09-11 12:40:28
// Revision         : 2020-09-11 15:26:50
// Description      :
// 
// -----------------------------------------------------------------------------

module top_module(
    input clk,
    input in,
    input areset, //async reset
    output out); //

	reg [3:0] present_state, next_state;

	parameter A = 4'b0001, B=4'b0010, C=4'b0100, D=4'b1000;

	// State transition logic
	always @(*)
	begin : proc_
		case (present_state)
			A : next_state = in ? B : A;
			B : next_state = in ? B : C;
			C : next_state = in ? D : A;
			D : next_state = in ? B : C;
			default : next_state = A;
		endcase
	end

    // State flip-flops with asynchronous reset
	always @(posedge clk, posedge areset)
		begin : proc
			if (areset)
				present_state <= A;
			else
				present_state <= next_state;
		end

	// Output logic

  assign out = present_state[3];
endmodule
