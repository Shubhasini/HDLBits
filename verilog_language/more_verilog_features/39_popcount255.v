//pop_count.v
//https://hdlbits.01xz.net/wiki/Popcount255
module top_module (
    input  [254:0] in ,
    output [  7:0] out
);
//A "population count" circuit counts the number of '1's in an input vector.
//Build a population count circuit for a 255-bit input vector.
    integer i;

    always @(*)begin
        out = 8'b0;
        for (i=0; i<255; i=i+1)begin
            if (in[i]==1)
                out = out + 8'd1;
        end
    end
endmodule
