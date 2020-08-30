// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 55_Thermostat.v
// Create   : 2020-08-30 15:53:54
// Revise   : 2020-08-30 15:53:55
// Comments :
// -----------------------------------------------------------------------------


module top_module (
	input  too_cold,
	input  too_hot ,
	input  mode    ,
	input  fan_on  ,
	output heater  ,
	output aircon  ,
	output fan
);

	// Heater is on when it's too cold and mode is "heating".
	assign heater = (mode & too_cold);

	// Aircon is on when it's too hot and mode is not "heating".
	assign aircon = (~mode & too_hot);

	// Fan should be on when either heater or aircon is on, or fan_on is 1.
	assign fan = heater | aircon | fan_on;

endmodule
