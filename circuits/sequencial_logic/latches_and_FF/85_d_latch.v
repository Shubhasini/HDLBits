// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 85_d_latch.v
// Create   : 2020-08-31 15:42:02
// Revise   : 2020-08-31 15:48:27
// Comments :
// -----------------------------------------------------------------------------

module top_module (
	input d,  //d
    input ena, //enable
    output reg q // Asynchronous reset active low
	);

always @(*) 
begin : d_latch
  if (ena) begin
  	q <= d;  
  	// will show warning on lint check Delayed assignments (<=) in non-clocked
  	// (non flop or latch) block
  end
end

endmodule