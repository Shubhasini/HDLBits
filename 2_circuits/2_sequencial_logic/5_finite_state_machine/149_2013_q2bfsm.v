// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 149_2013_q2bfsm.v
// Create                 : 2020-11-08 20:49:21
// Revision               : 2020-11-08 20:49:21
// url of que.            : https://hdlbits.01xz.net/wiki/Exams/2013_q2bfsm
// Description            :
//
// -----------------------------------------------------------------------------

module top_module (
	input  clk   ,
	input  resetn, // active-low synchronous reset
	input  x     ,
	input  y     ,
	output f     ,
	output g
);

	reg [3:0] present_state, next_state;

	parameter A        = 0, B = 1,seq_one= 2, seq_zero=3, seq_one2=4;
	parameter temp     = 5                                          ;
	parameter done     = 6, Check_again=7                           ;
	parameter out_zero = 8                                          ;

	always @(posedge clk)
		begin : proc_
			if(~resetn) begin
				present_state <= A;
			end else begin
				present_state <= next_state;
			end
		end

	always @(*)
	begin : proc
		case (present_state)
			A           : next_state = resetn ? B : A;
			B           : next_state = x ? seq_one : temp; // check seq 1
			seq_one     : next_state = x ? seq_one : seq_zero; //check seq 0
			seq_zero    : next_state = x ? seq_one2 : temp; //check seq 1 (second time)
			temp        : next_state = x ? seq_one : temp ; //if seq not found
			seq_one2    : next_state = y ? done : Check_again; //check if y is 1
			Check_again : next_state = y ? done : out_zero; //only two cycle to check y = 1
			done        : next_state = resetn ? done : A; //g is always 1 until active reset
			out_zero    : next_state = resetn ? out_zero : A; //g is always 0 until active reset
			default     : next_state = A;
		endcase
	end

	assign f = (present_state == B)	;
	assign g = (present_state == seq_one2) | (present_state == done) | (present_state ==Check_again);
endmodule