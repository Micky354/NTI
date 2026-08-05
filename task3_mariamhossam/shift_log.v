module shift_log(in,out);
    input [3:0] in;
    output reg [1:0] out;
    reg [3:0] temp;
    integer i;
    always @(*) begin
        temp = in;
        out = 0;
        for (i=0; i<4; i=i+1) begin
            if(temp > 1) begin
                temp = temp >>1;
                out = out + 1;
            end
        end
    end
endmodule
