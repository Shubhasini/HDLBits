//https://hdlbits.01xz.net/wiki/Module_fadd

module top_module (
    input  [31:0] a  ,
    input  [31:0] b  ,
    output [31:0] sum
);//
    reg [15:0] isum0, isum1;
    reg        icout, icout1;
    add16 i_add160 (
        .a   (a[15:0]),
        .b   (b[15:0]),
        .cin (1'b0   ),
        .sum (isum0  ),
        .cout(icout  )
    );

    add16 i_add161 (
        .a   (a[31:16]),
        .b   (b[31:16]),
        .cin (icout   ),
        .sum (isum1   ),
        .cout(icout1  )
    );
    assign sum = {isum1, isum0};
endmodule

module add1 (
    input  a   ,
    input  b   ,
    input  cin ,
    output sum ,
    output cout
);

    wire y1,y2,y3;
    //instantiating gates

    xor (sum, a,b,cin);
    and A1 (y1,a,b);
    and A2 (y2,a,cin);
    and A3 (y3,b,cin);
    or (cout, y1,y2,y3);

endmodule
