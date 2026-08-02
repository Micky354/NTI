module binary_gray_data(in,out);
    input [3:0] in;
    output [3:0] out;
    assign out = in ^ (in >>1);
endmodule