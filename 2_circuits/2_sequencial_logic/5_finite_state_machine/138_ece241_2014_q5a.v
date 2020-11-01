// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 138_ece241_2014_q5a.v
// Create                 : 2020-11-01 16:02:14
// Revision               : 2020-11-01 16:02:15
// url of que.            :
// Description            : moore machine
//
// -----------------------------------------------------------------------------

module top_module (
	input  clk   ,
	input  areset,
	input  x     ,
	output reg z
);

	parameter S0 = 0, S1 = 1, S2 = 2;

	reg [1:0] present_state;
	reg [1:0] next_state   ;

always @(posedge clk or posedge areset) begin
		if(areset)
			present_state <= S0;
		else
			present_state <= next_state;
	end

always @(*) begin
	case(present_state)
		S0 : begin
			next_state = x ? S1 : S0;
			z          = 1'b0;
		end

			S1 : begin
				next_state = x ? S2 : S1;
				z          = 1'b1;
			end

			S2 : begin
				next_state = x ? S2 : S1;
				z          = 1'b0;
			end
			default : begin
				next_state = S0;
				z          = 1'b0;
			end
		endcase
	end
endmodule