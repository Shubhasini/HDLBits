// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 143_m2014_q6b.v
// Create                 : 2020-11-08 18:21:58
// Revision               : 2020-11-08 18:22:00
// url of que.            : https://hdlbits.01xz.net/wiki/Exams/m2014_q6b
// Description            :
//
// -----------------------------------------------------------------------------

module top_module (
	input  [3:1] y ,
	input        w ,
	output       Y2
);

	reg [3:1] next_state; //coz it is FSM

	always @(*)
		begin : proc_
			case (y)
				3'b000  : next_state = w ? 3'b000 : 3'b001;
				3'b001  : next_state = w ? 3'b011 : 3'b010;
				3'b010  : next_state = w ? 3'b011 : 3'b100;
				3'b011  : next_state = w ? 3'b000 : 3'b101;
				3'b100  : next_state = w ? 3'b011 : 3'b100;
				3'b101  : next_state = w ? 3'b011 : 3'b010;
				default : next_state = w ? 3'b000 : 3'b001;
			endcase
		end
	assign Y2 = next_state [2];
endmodule
