module addsub(a,b,sub,sum);
    input [31:0] a,b;
    input sub;
    output [31:0] sum;
    wire c;
    wire [31:0] t1;
    assign t1 = b ^ {31{sub}};
    add16 lower(.a(a[15:0]),.b(t1[15:0]),.cout(c),.sum(sum[15:0]),.cin(sub));
    add16 upper(.a(a[31:16]),.b(t1[31:16]),.cout(),.sum(sum[31:16]),.cin(c));
endmodule