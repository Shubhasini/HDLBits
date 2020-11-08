// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 141_2014_q3bfsm.v
// Create                 : 2020-11-08 14:05:46
// Revision               : 2020-11-08 14:05:48
// url of que.            : https://hdlbits.01xz.net/wiki/Exams/2014_q3bfsm
// Description            :
//
// -----------------------------------------------------------------------------

module top_module (
	input      clk  ,
	input      reset, // Synchronous reset
	input      x    ,
	output reg z
);

	reg [2:0] present_state, next_state;

	parameter A = 0, B=1; //define base of the number
	parameter C = 2, D=3;
	parameter E = 4     ;

	always @(posedge clk) begin : proc_present_state
		if(reset) begin
			present_state <= A;
		end
		else begin
			present_state <= next_state;
		end
	end

	always @(*)
		begin : proc
			case (present_state)
				A       : next_state = x ? B : A;
				B       : next_state = x ? E : B;
				C       : next_state = x ? B : C;
				D       : next_state = x ? C : B;
				E       : next_state = x ? E : D;
				default : next_state = A;
			endcase
		end

	assign z = (present_state == D) | (present_state == E);
endmodule