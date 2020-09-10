// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 121_Fsm3comb.v
// Create           : 2020-09-10 21:23:58
// Revision         : 2020-09-10 21:24:14
// Description      : moore machine
// 
// -----------------------------------------------------------------------------

module top_module(
    input in,
    input [1:0] state,
    output reg [1:0] next_state,
    output out); //

    parameter A=0, B=1, C=2, D=3;

	// State transition logic: next_state = f(state, in)

	always @(*)
	begin : proc_
		//state = next_state;
		case (state)
			A : next_state = in ? B : A;
			B : next_state = in ? B : C;
			C : next_state = in ? D : A;
			D : next_state = in ? B : C;
		endcase
	end

    //output logic
    assign out = {state==D};

endmodule
