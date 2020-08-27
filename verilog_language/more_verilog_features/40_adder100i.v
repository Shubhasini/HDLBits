//adder100i.v
//https://hdlbits.01xz.net/wiki/Adder100i
module top_module (
    input  [99:0] a, b,
    input         cin ,
    output [99:0] cout,
    output [99:0] sum
);
    integer i;
    always @(*)begin
        // generate
        for (i = 0 ; i<100; i = i+1)
            begin
                sum = a+b+cin;
                if(!i)
                    cout[i] = (a[i]&b[i]) | (b[i]&cin) | (cin &a[i]);
                else
                    cout[i] = (a[i]&b[i]) | (b[i]&cout[i-1]) | (cout[i-1] &a[i]);
            end
        //endgenerate
    end
endmodule
