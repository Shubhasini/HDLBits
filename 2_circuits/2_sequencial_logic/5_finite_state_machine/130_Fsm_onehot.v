// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 130_Fsm_onehot.v
// Create           : 2020-09-12 17:44:41
// Revision         : 2020-09-12 18:58:28
// Description      :
//
// -----------------------------------------------------------------------------

module top_module (
	input            in        ,
	input      [9:0] state     ,
	output reg [9:0] next_state,
	output           out1      ,
	output           out2
);

//parameter

	always @(*) begin : proc_
		next_state[0] = ~in & (state[0] | state[1] |
			state[2] | state[3] | state[4] | state[8] | state[9] | state[7]);
		next_state[1] = in & (state[0] | state[9] | state[8]);
		next_state[2] = in & state[1];
		next_state[3] = in & state[2];
		next_state[4] = in & state[3];
		next_state[5] = in & state[4];
		next_state[6] = in & state[5];
		next_state[7] = in & (state[6] | state[7]);
		next_state[8] = ~in & state[5];
		next_state[9] = ~in & state[6];
	end

	//output logic
	assign out1       = (state[8] | state[9]);
	assign out2       = (state[9] | state[7]);
endmodule 