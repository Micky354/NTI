module spliter (in,out_low,out_upper);
    input [15:0] in;
    output wire [7:0] out_low, out_upper;
    assign {out_upper,out_low} = {in[15:8],in[7:0]};
endmodule
