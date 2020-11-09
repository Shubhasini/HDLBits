// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 148_2013_q2afsm.v
// Create                 : 2020-11-08 19:21:57
// Revision               : 2020-11-08 19:21:58
// url of que.            : https://hdlbits.01xz.net/wiki/Exams/2013_q2afsm
// Description            :
//
// -----------------------------------------------------------------------------

module top_module (
	input        clk   ,
	input        resetn, // active-low synchronous reset
	input  [3:1] r     , // request
	output [3:1] g       // grant
);

	reg [1:0] present_state, next_state;

	parameter A = 0, B =1, C=2, D=3;

	always @(posedge clk) begin : proc_
		if(~resetn) begin
			present_state <= A;
		end else begin
			present_state <= next_state;
		end
	end

always @(*) 
begin : proc
 	case (present_state)
 	A : next_state = r[1] ? B : (r[2] ? C : (r[3] ? D : A));
 	B : next_state = r[1] ? B : A;
 	C : next_state = r[2] ? C : A;
 	D : next_state = r[3] ? D : A;
 		default : next_state = A;
 	endcase
	end	

assign g[1] = (present_state == B);
assign g[2] = (present_state == C);	
assign g[3] = (present_state == D);
endmodule