// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 125_2013_q4.v
// Create           : 2020-09-11 15:40:39
// Revision         : 2020-09-11 18:13:15
// Description      :
// 
// -----------------------------------------------------------------------------

module top_module (
	input            clk  ,
	input            reset,
	input      [3:1] s    ,
	output reg       fr3  ,
	output reg       fr2  ,
	output reg       fr1  ,
	output reg       dfr
);

	reg [2:0] present_state, next_state; //big enough to hold the state encodings

	parameter A  = 0     ; //below s1 level
	parameter B1 = 1,B2=2; //between s1 and s2 (with/without suppliment)
	parameter C1 = 3,C2=4; //between s2 and s3 (with/without suppliment)
	parameter D  = 5     ; //above s3

	//state flip flop
	always @(posedge clk)
		begin : proc
			if (reset)
				begin
					present_state <= A;
				end
			else
				present_state <= next_state;
		end

	//state transition
	always @(*)
	begin : proc_
		case (present_state)
			//if s1 level reached then next level
			A       : next_state = s[1] ? B1 : A;
			//if s2 level -> next level else if : s1 level -> same level else prv
			B1      : next_state = s[2] ? C1 : (s[1] ? B1 : A);
			B2      : next_state = s[2] ? C1 : (s[1] ? B2 : A);
			//if s3 level -> next level else if : s2 level -> same level else prv
			C1      : next_state = s[3] ? D : (s[2] ? C1 : B2);
			C2      : next_state = s[3] ? D : (s[2] ? C2 : B2);
			//if s3 -> same level else prv level
			D       : next_state = s[3] ? D : C2;
			default : next_state = 'x;
		endcase
	end

	//output logic
	always @(*)
	begin : out
		case (present_state) //moore machine
			A       : {fr3, fr2, fr1, dfr} = 4'b1111; //all valve including supplement
			B1      : {fr3, fr2, fr1, dfr} = 4'b0110; //without supplement
			B2      : {fr3, fr2, fr1, dfr} = 4'b0111; //with supplement
			C1      : {fr3, fr2, fr1, dfr} = 4'b0010; //without supplement
			C2      : {fr3, fr2, fr1, dfr} = 4'b0011; //with suppliment
			D       : {fr3, fr2, fr1, dfr} = 4'b0000;
			default : {fr3, fr2, fr1, dfr} = 4'bxxxx;
		endcase
	end
endmodule