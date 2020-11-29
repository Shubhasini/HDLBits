// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 154_review2015_fsm.v
// Create                 : 2020-11-20 13:21:33
// Revision               : 2020-11-20 13:21:34
// url of que.            : https://hdlbits.01xz.net/wiki/Exams/review2015_fsm
// Description            :
//
// -----------------------------------------------------------------------------

module top_module (
	input  clk          ,
	input  reset        , // Synchronous reset
	input  data         ,
	output shift_ena    ,
	output counting     ,
	input  done_counting,
	output done         ,
	input  ack
);

	reg [3:0] present_state, next_state;

	parameter seq_01   = 0, seq_11=1                                ;
	parameter seq_30   = 2, seq_41=3                                ;
	parameter count0   = 4, count1 = 5, count2=6, count3=7, count4=8;
	parameter wait_ack = 9                                          ;

	always @(posedge clk)
		begin : proc_
			if(reset)
				begin
					present_state <= seq_01;
				end
			else
				begin
					present_state <= next_state;
				end
		end

	always @(*)
	begin : state
		case (present_state)
			//seq detect
			seq_01   : next_state = data ? seq_11 : seq_01; //1
			seq_11   : next_state = data ? seq_30: seq_01; //1
			seq_30   : next_state = data ? seq_30: seq_41; //0
			seq_41   : next_state = data ? count1  : seq_01; //1
			//count 4 clk pulse
			count1   : next_state = count2; //count 1st clk
			count2   : next_state = count3; //count 2nd clk
			count3   : next_state = count4; //count 3rd clk
			count4   : next_state = count0; //count 4th clk
			//wait for done counting signal
			count0   : next_state = done_counting ? wait_ack : count0;
			//wait for ack
			wait_ack : next_state = ack ? seq_01 : wait_ack;
			default  : next_state = seq_01;
		endcase
	end

	assign shift_ena = (present_state == count1) || (present_state == count2) || (present_state == count3) || (present_state == count4);
	assign counting  = (present_state == count0);
	assign done      = (present_state == wait_ack);

endmodule
