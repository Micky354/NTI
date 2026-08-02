module fadd(a,b,sum);
    input [31:0] a,b;
    output [31:0] sum;
    wire c;
    add16 lower(.a(a[15:0]),.b(b[15:0]),.cout(c),.sum(sum[15:0]),.cin(1'b0));
    add16 upper(.a(a[31:16]),.b(b[31:16]),.cout(),.sum(sum[31:16]),.cin(c));
endmodule