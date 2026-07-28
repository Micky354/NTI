module top_module(a,b,c,d,out,out_n);
    input a,b,c,d;
    output wire out,out_n;
    wire t1,t2;
    assign t1 = a & b;
    assign t2 = c & d;
    assign out = t1 | t2;
    assign out_n = ~out;
endmodule
