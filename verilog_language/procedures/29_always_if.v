//always_if.v
//https://hdlbits.01xz.net/wiki/Always_if
// synthesis verilog_input_version verilog_2001
module top_module (
    input       a         ,
    input       b         ,
    input       sel_b1    ,
    input       sel_b2    ,
    output wire out_assign,
    output reg  out_always
);
//Build a 2-to-1 mux that chooses between a and b. Choose b if both sel_b1 and
//sel_b2 are true. Otherwise, choose a. Do the same twice, once using assign
//statements and once using a procedural if statement.
    always @(*)begin

        if(sel_b1 & sel_b2)
            out_always = b;
        else
            out_always = a;
    end
    
    assign out_assign = (a & b) | (sel_b1 & sel_b2 & b) | (!sel_b1 & a & ~(b)) | (a & ~sel_b2);

endmodule
