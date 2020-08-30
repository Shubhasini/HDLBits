// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author   : Shubhasini D (shubhasinid@gmail.com)
// File     : 32_always_case2.v
// Create   : 2020-08-30 15:42:17
// Revise   : 2020-08-30 15:42:18
// Comments :
// -----------------------------------------------------------------------------

// synthesis verilog_input_version verilog_2001
module top_module (
    input      [3:0] in ,
    output reg [1:0] pos
);
//Build a 4-bit priority encoder.
    always @ (*) begin
        case (in)
            4'b0001 : pos = 2'd0;
            4'b0010 : pos = 2'd1;
            4'b0011 : pos = 2'd0;
            4'b0100 : pos = 2'd2;
            4'b0101 : pos = 2'd0;
            4'b0110 : pos = 2'd1;
            4'b0111 : pos = 2'd0;
            4'b1000 : pos = 2'd3;
            4'b1001 : pos = 2'd0;
            4'b1010 : pos = 2'd1;
            4'b1011 : pos = 2'd0;
            4'b1100 : pos = 2'd2;
            4'b1101 : pos = 2'd0;
            4'b1110 : pos = 2'd1;
            4'b1111 : pos = 2'd0;
            default : pos = 2'd0;

        endcase
    end
endmodule
