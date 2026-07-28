module mux_4(in1,in2,in3,in4,sel,out);
    input in1,in2,in3,in4;
    input [1:0] sel;
    output out;
    wire t1,t2;
    mux_2 m1(.in1(in1),.in2(in2),sel(sel[0]),out(t1));
    mux_2 m2(.in1(in3),.in2(in4),sel(sel[0]),out(t2));
    mux_2 m3(.in1(t1),.in2(t2),sel(sel[1]),out(out));
endmodule