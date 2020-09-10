// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 118_Fsm1s.v
// Create           : 2020-09-10 17:53:54
// Revision         : 2020-09-10 18:16:51
// Description      :
// 
// -----------------------------------------------------------------------------

module top_module(clk, reset, in, out);
    input clk;
    input reset;    // Synchronous reset to state B
    input in;
    output out;  
    reg out;

	parameter A = 0, B=1;
	reg       present_state, next_state;

	//sequencial always block
	always @(posedge clk)
		begin : proc
			if (reset)
				present_state <= B;
			else
				present_state <= next_state;
		end

     //assign next state and output or moore machine
	always @(*) 
	 begin 
	  case (present_state)
	   A : next_state = in ? A : B;
	   B : next_state = in ? B : A;
	  endcase
	  out = present_state;
	 end
endmodule
