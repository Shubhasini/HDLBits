// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 142_2014_q3c.v
// Create                 : 2020-11-08 14:52:09
// Revision               : 2020-11-08 14:54:54
// url of que.            : https://hdlbits.01xz.net/wiki/Exams/2014_q3c
// Description            :
//
// -----------------------------------------------------------------------------

module top_module (
	input        clk,
	input  [2:0] y  ,
	input        x  ,
	output       Y0 ,
	output       z
);
	reg [2:0] present_state, next_state;

	always @(posedge clk)
		begin : ps
			present_state <= y[2:0];
		end

	always @(*)
		begin : proc
			case (present_state)
				000     : next_state = x ? 001 : 000;
				001     : next_state = x ? 100 : 001;
				010     : next_state = x ? 001 : 010;
				011     : next_state = x ? 010 : 001;
				100     : next_state = x ? 100 : 011;
				default : next_state = 000;
			endcase
		end

	assign z  = (y == 3'b011) | (y == 3'b100);
	assign Y0 = (~x & y[2]) | (~x & y[0]) | (x & ~y[2] & ~y[0]); //using k-map
endmodule
