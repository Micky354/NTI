module compare (a,b,c,d,e,out);
    input a,b,c,d,e;
    output [24:0] out;
    wire [24:0] V1,V2;
    assign V1 = {{5{a}},{5{b}},{5{c}},{5{d}},{5{e}}};
    assign V2 = {5{a,b,c,d,e}};
    assign out = ~(V1^V2);
endmodule