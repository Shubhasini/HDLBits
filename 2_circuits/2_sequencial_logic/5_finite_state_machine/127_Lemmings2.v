// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 127_Lemmings2.v
// Create           : 2020-09-11 20:03:49
// Revision         : 2020-09-11 20:08:03
// Description      :
//
// -----------------------------------------------------------------------------

module top_module (
	input  clk       ,
	input  areset    , // Freshly brainwashed Lemmings walk left.
	input  bump_left ,
	input  bump_right,
	input  ground    ,
	output walk_left ,
	output walk_right,
	output aaah
);

	reg [1:0] present_state, next_state;

	parameter left = 0, right=1, down_l = 2, down_r = 3;

	//state ff with async reset
	always @(posedge clk, posedge areset)
		begin : proc_
			if (areset)
				present_state <= left;
			else
				present_state <= next_state;
		end

	//state transition logic
	always @(*)
	begin : proc
		case (present_state)
			left   : next_state = ground ? (bump_left ? right : left) : down_l;
			right  : next_state = ground ? (bump_right ? left : right) : down_r;
			down_l : next_state = ground ? left: down_l ;
			down_r : next_state = ground ? right : down_r ;
		endcase
	end

	//output logic
	assign walk_right = (present_state == right);
	assign walk_left  = (present_state == left);
	assign aaah       = (present_state == down_l) | (present_state == down_r);
endmodule