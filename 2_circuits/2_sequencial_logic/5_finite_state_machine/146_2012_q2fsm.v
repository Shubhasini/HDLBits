// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 146_2012_q2fsm.v
// Create                 : 2020-11-08 19:03:53
// Revision               : 2020-11-08 19:03:54
// url of que.            : https://hdlbits.01xz.net/wiki/Exams/2012_q2fsm
// Description            :
//
// -----------------------------------------------------------------------------

module top_module (
    input clk,
    input reset,   // Synchronous active-high reset
    input w,
    output z
);
 
 reg [2:0] present_state, next_state;

	parameter A = 0, B =1 , C =2;
	parameter D = 3, E = 4, F= 5;

	always @(posedge clk) begin : proc_
		if(reset) begin
			present_state <= A;
		end else begin
			present_state <= next_state;
		end
	end

	always @(*)
		begin : proc
			case (present_state)
				A       : next_state = w ? B : A;
				B       : next_state = w ? C : D;
				C       : next_state = w ? E : D;
				D       : next_state = w ? F : A;
				E       : next_state = w ? E : D;
				F       : next_state = w ? C : D;
				default : next_state = A;
			endcase
		end

	assign z = (present_state == E) | (present_state == F) ;

endmodule
