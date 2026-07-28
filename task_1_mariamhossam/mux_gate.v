module mux_4(in1,in2,in3,in4,s1,s0,out);
    input in1,in2,in3,in4,s1,s0;
    output out;
    wire t1,t2,t3,t4,s1_bar,s0_bar;
    not(s1_bar,s1);
    not(s0_bar,s0);
    and(t1,in1,s1_bar,s0_bar);
    and(t2,in2,s1_bar,s0);
    and(t3,in3,s1,s0_bar);
    and(t4,in4,s1,s0);
    or (out,t1,t2,t3,t4);
endmodule

