// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 09_vector0.v
// Create   : 2020-08-30 15:43:15
// Revise   : 2020-08-30 15:43:17
// Comments :
// -----------------------------------------------------------------------------


module top_module (
	input  wire [2:0] vec ,
	output wire [2:0] outv,
	output wire       o2  ,
	output wire       o1  ,
	output wire       o0
);
   // Module body starts after module declaration
	assign outv[2:0]  = vec[2:0]; //assign vector to vector
	assign {o2,o1,o0} = vec[2:0]; //assign vector to one bit variable
endmodule
