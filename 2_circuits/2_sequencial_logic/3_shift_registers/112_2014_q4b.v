// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 112_2014_q4b.v
// Create           : 2020-09-08 20:13:05
// Revision         : 2020-09-09 18:46:01
// Description      :
// 
// -----------------------------------------------------------------------------

module top_module (
    input [3:0] SW,
    input [3:0] KEY,
    output [3:0] LEDR
); //


MUXDFF i_MUXDFF3 (.clk(KEY[0]), .w(KEY[3]), .R(SW[3]), .E(KEY[1]), .L(KEY[2]), .Q(LEDR[3]));
MUXDFF i_MUXDFF2 (.clk(KEY[0]), .w(LEDR[3]), .R(SW[2]), .E(KEY[1]), .L(KEY[2]), .Q(LEDR[2]));
MUXDFF i_MUXDFF1 (.clk(KEY[0]), .w(LEDR[2]), .R(SW[1]), .E(KEY[1]), .L(KEY[2]), .Q(LEDR[1]));
MUXDFF i_MUXDFF0 (.clk(KEY[0]), .w(LEDR[1]), .R(SW[0]), .E(KEY[1]), .L(KEY[2]), .Q(LEDR[0]));


endmodule

module MUXDFF (
    input clk,
    input w, R, E, L,
    output reg Q
);

 always @(posedge clk)
  begin : mux_dff
  	Q <= L ? R : (E ? w : Q);
 
 end

endmodule