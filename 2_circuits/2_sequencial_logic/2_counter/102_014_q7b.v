// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 102_014_q7b.v
// Create           : 2020-09-05 12:20:54
// Revision         : 2020-09-05 12:22:20
// Description      :
// 
// -----------------------------------------------------------------------------


module top_module (
	input            clk     ,
	input            reset   ,
	output           OneHertz,
	output reg [2:0] c_enable
);//
	reg [3:0] q0,q1,q2;

	bcdcount counter0 (clk,reset,c_enable[0],q0); //first counter

	bcdcount counter1 (clk,reset,c_enable[1],q1); //second counter

	bcdcount counter2 (clk,reset,c_enable[2],q2); //third counter

	assign c_enable[0] = ~reset; //to start first counter
	assign c_enable[1] = q0 == 4'd9; //for second countet
	assign c_enable[2] = (q1 == 4'd9) && (q0 == 4'd9); //for third counter

	//when all the counter output is extream 1
	assign OneHertz = (q2 == 4'd9) && (q1 == 4'd9) && (q0 == 4'd9); 
endmodule
