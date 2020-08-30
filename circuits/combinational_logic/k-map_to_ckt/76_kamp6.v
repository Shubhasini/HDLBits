// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 76_kamp6.v
// Create   : 2020-08-30 17:21:18
// Revise   : 2020-08-30 17:22:41
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input  [4:1] x,
	output       f
);
    assign f = (~x[1]& x[3]) | (x[2]& x[4]) ;
endmodule
