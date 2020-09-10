// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 122_Fsm3onehot.v
// Create           : 2020-09-10 21:41:43
// Revision         : 2020-09-10 21:41:57
// Description      :
// 
// -----------------------------------------------------------------------------

module top_module(
    input in,
    input [3:0] state,
    output [3:0] next_state,
    output out); //

    parameter A=0, B=1, C=2, D=3;

    // State transition logic: Derive an equation for each state flip-flop.
    assign next_state[A] = ...;
    assign next_state[B] = ...;
    assign next_state[C] = ...;
    assign next_state[D] = ...;

    // Output logic: 
    assign out = ...;

endmodule
