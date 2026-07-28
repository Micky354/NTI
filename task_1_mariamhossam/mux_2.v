module mux_2(in1,in2,sel,out);
    input in1,in2,sel;
    output wire out;
    assign out = (sel == 1)? in2:in1;
endmodule