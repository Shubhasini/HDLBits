// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 153_review2015_fsmshift.v
// Create                 : 2020-11-18 20:16:38
// Revision               : 2020-11-18 20:16:39
// url of que.            : https://hdlbits.01xz.net/wiki/Exams/review2015_fsmshift
// Description            :
//
// -----------------------------------------------------------------------------

module top_module (
	input  clk      ,
	input  reset    , // Synchronous reset
	output shift_ena
);

	reg [2:0] present_state, next_state;

	parameter count0 = 0, count1 = 1, count2=2, count3=3, count4=4;

	always @(posedge clk) begin : proc_
		if(reset)
			begin
				present_state <= count1;
			end
		else
			begin
				present_state <= next_state;
			end
	end

	always @(*)
		begin : proc
			case (present_state)
				count0  : next_state = count0; //stop counting
				count1  : next_state = count2;
				count2  : next_state = count3;
				count3  : next_state = count4;
                count4  : next_state = count0;
				default : next_state = count2;
			endcase
		end

	assign shift_ena = (present_state == count1) || (present_state == count2) || (present_state == count3) || (present_state == count4);

endmodule
