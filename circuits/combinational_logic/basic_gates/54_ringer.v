// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 54_ringer.v
// Create   : 2020-08-30 15:53:47
// Revise   : 2020-08-30 15:53:48
// Comments :
// -----------------------------------------------------------------------------


module top_module (
	input  ring        ,
	input  vibrate_mode,
	output ringer      , // Make sound
	output motor         // Vibrate
);
	// vibrate_mode should be off and phone is ringing
	assign ringer = ~(vibrate_mode) & ring;

	// vibrate_mode should be on and phone is ringing
	assign motor = vibrate_mode & ring;
endmodule
