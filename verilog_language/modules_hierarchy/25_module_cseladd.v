//carry select adder
//https://hdlbits.01xz.net/wiki/Module_cseladd

module top_module (
    input  [31:0] a  ,
    input  [31:0] b  ,
    output [31:0] sum
);


    reg [15:0] isum0, isum1,isum2; //intermidiate sum stage
    reg        icout0, icout1, icout2; //intemidiate carry out stage
    add16 i_add16_0 (.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(isum0[15:0]), .cout(icout0));
    //stage for sum lsb calculation
    add16 i_add16_1 (.a(a[31:16]), .b(b[31:16]), .cin(1'b0), .sum(isum1[15:0]), .cout(icout1));
    //stage for sum msb with incarry zero
    add16 i_add16_2 (.a(a[31:16]), .b(b[31:16]), .cin(1'b1), .sum(isum2[15:0]), .cout(icout2));
    //stage for sum msb with incarry one



    //multiplexer
    always @(*)
    begin
        case (icout0)
            1'b0 : sum = {isum1,isum0} ;
            1'b1 : sum = {isum2,isum0} ;
        endcase
    end
endmodule
