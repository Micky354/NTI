module shift_8(clk,d,sel,q);
    input clk;
    input [7:0] d;
    input[1:0] sel;
    output[7:0] q;
    wire [7:0] q1,q2,q3;
    my_dff8 D1(.clk(clk),.d(d),.q(q1));
    my_dff8 D2(.clk(clk),.d(q1),.q(q2));
    my_dff8 D3(.clk(clk),.d(q2),.q(q3));    
    mux_4 M1(.in1(d),.in2(q1),.in3(q2),.in4(q3),.out(q),.sel(sel));
endmodule