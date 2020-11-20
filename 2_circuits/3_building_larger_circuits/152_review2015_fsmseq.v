// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 152_review2015_fsmseq.v
// Create                 : 2020-11-18 19:38:15
// Revision               : 2020-11-18 19:38:15
// url of que.            : https://hdlbits.01xz.net/wiki/Exams/review2015_fsmseq
// Description            : sequence 1101 detect
//
// -----------------------------------------------------------------------------

module top_module (
	input      clk           ,
	input      reset         , // Synchronous reset
	input      data          ,
	output reg start_shifting
);

	reg [3:0] present_state, next_state;

	parameter one_0  = 0, one_1=1;
	parameter zero_3 = 2, one_4=3;
	parameter stop   = 4         ;

	always @(posedge clk)
		begin : proc_
			if(reset)
				begin
					present_state <= one_0;
				end
			else
				begin
					present_state <= next_state;
				end
		end

	always @(*)
		begin : state
			case (present_state)
				one_0   : next_state = data ? one_1 : one_0;
				one_1   : next_state = data ? zero_3: one_0;
				zero_3  : next_state = data ? zero_3: one_4;
				one_4   : next_state = data ? stop  : one_0;
				stop    : next_state = reset? one_0 : stop ;
				default : next_state = one_0;
			endcase
		end
	assign start_shifting = (present_state == stop);
endmodule

