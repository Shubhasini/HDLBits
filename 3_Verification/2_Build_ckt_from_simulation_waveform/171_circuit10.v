// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 171_circuit10.v
// Create                 : 2020-11-29 11:56:50
// Revision               : 2020-11-29 11:56:51
// url of que.            : https://hdlbits.01xz.net/wiki/Sim/circuit10
// Description            :
//
// -----------------------------------------------------------------------------

module top_module (
	input      clk  ,
	input      a    ,
	input      b    ,
	output reg q    ,
	output reg state
);

    always @ (posedge clk) begin
        if(a == b)
            state <= a;
        else
            state <= state;
    end
    
    assign q = (a == b) ? state : (~state);
endmodule
