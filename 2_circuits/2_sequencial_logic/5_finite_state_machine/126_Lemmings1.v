// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 126_Lemmings1.v
// Create           : 2020-09-11 18:15:43
// Revision         : 2020-09-11 18:30:41
// Description      :
// 
// -----------------------------------------------------------------------------

module top_module (
	input  clk       ,
	input  areset    , // Freshly brainwashed Lemmings walk left.
	input  bump_left ,
	input  bump_right,
	output walk_left ,
	output walk_right
);

	reg present_state, next_state;

	parameter left = 0; //left
	parameter right = 1; //right

//state ff with async reset
	always @(posedge clk , posedge areset)
		begin : proc_
			if (areset)
				begin
					present_state <= left;
				end
			else
				present_state <= next_state;
		end

	//state transition logic
	always @(*)
	begin : proc
		case (present_state)
			left : next_state = bump_left ? right : left;
			right : next_state = bump_right? left : right;
			//default : /* default */;
		endcase
	end

	//output logic
	assign walk_right = (present_state == right);
	assign walk_left  = (present_state == left);
endmodule 