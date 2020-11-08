// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 140_2014_q3fsm.v
// Create                 : 2020-11-01 18:19:09
// Revision               : 2020-11-07 19:23:39
// url of que.            :
// Description            :
//
// -----------------------------------------------------------------------------

module top_module (
	input      clk  ,
	input      reset, // Synchronous reset
	input      s    ,
	input      w    ,
	output reg z
);

	reg [2:0] present_state, next_state;

	parameter A  = 0, B=1       ;
	parameter B1 = 2, B2=3, B3=4;
	parameter B4 = 5, B5=6, B6=7;

	always @(posedge clk)
		begin : proc
			if (reset) begin
				present_state <= A;
			end
			else
				present_state <= next_state;
		end

	always @(*)
	begin : proc_
		case (present_state)
			A : begin
				next_state = s ? B : A;
				z          = 0;
			end
			B :
				begin
					next_state = w ? B1 : B6; //one
				end
			B1 :
				begin
					next_state = w ? B4 : B2;
				end
			B2 :
				begin
					next_state = w ? B3 : B;
				end
			B3 :
				begin
					next_state = B;
				end
			B4 :
				begin
					next_state = w ? B : B5;
				end
			B5 :
				begin
					next_state = B ;
				end
			B6 :
				begin
					next_state = B2 ;
				end
			default : next_state = A;
		endcase
	end

assign z = ({present_state == B3} || {present_state == B5});		
endmodule
