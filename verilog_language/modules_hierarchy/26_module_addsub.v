//adder and substractor
//https://hdlbits.01xz.net/wiki/Module_addsub

module top_module (
    input  [31:0] a  ,
    input  [31:0] b  ,
    input         sub,
    output [31:0] sum
);
    wire        i_cout, cout;
    wire [15:0] i_sum0, i_sum1;
    wire [31:0] i_b   ;

    assign i_b = b ^ {32{sub}}; //XORing b and sub to get 1's complement

    add16 i_add16_0 (.a(a[15:0]), .b(i_b[15:0]), .cin(sub), .sum(i_sum0), .cout(i_cout));
    add16 i_add16_1 (.a(a[31:16]), .b(i_b[31:16]), .cin(i_cout), .sum(i_sum1), .cout(cout));
    assign sum = {i_sum1, i_sum0};
endmodule
