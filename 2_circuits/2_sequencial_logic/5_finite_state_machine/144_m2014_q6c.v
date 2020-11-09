// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 144_m2014_q6c.v
// Create                 : 2020-11-08 18:45:43
// Revision               : 2020-11-08 18:45:44
// url of que.            : https://hdlbits.01xz.net/wiki/Exams/m2014_q6c
// Description            :
//
// -----------------------------------------------------------------------------

module top_module (
	input  [6:1] y ,
	input        w ,
	output       Y2,
	output       Y4
);
	//using one hot coding
	assign Y2 = (~w & y[1]);
	assign Y4 = w & (y[2] | y[3] |y[5] | y[6]);
endmodule