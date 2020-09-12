// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 128_Lemmings3.v
// Create           : 2020-09-12 14:12:22
// Revision         : 2020-09-12 14:27:14
// Description      :
//
// -----------------------------------------------------------------------------

module top_module (
	input  clk       ,
	input  areset    , // Freshly brainwashed Lemmings walk left.
	input  bump_left ,
	input  bump_right,
	input  ground    ,
	input  dig       ,
	output walk_left ,
	output walk_right,
	output aaah      ,
	output digging
);


	reg [2:0] present_state, next_state;

	parameter left = 0, right=1, down_l = 2, down_r = 3, dig_l = 4 , dig_r=5;

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
			//priority fall > dig > switch direction
			left   : next_state = ground ? (dig ? dig_l : (bump_left ? right : left)) : down_l;
			right  : next_state = ground ? (dig ? dig_r : (bump_right ? left : right)) : down_r;
			down_l : next_state = ground ? left: down_l ;
			down_r : next_state = ground ? right : down_r ;
			dig_r  : next_state = ground ? (dig_r): down_r;
			dig_l  : next_state = ground ? (dig_l): down_l;
		endcase
	end

	//output logic
	assign walk_right = (present_state == right);
	assign walk_left  = (present_state == left);
	assign aaah       = (present_state == down_l) | (present_state == down_r);
	assign digging    = (present_state == dig_l) | (present_state == dig_r);
endmodule 