module G_TO_B (B,G);
    parameter n = 1;
    input [n-1:0] G;
    output [n-1:0] B;
    genvar i;
    generate
        for (i=0; i<n-1; i=i+1) begin
            assign B[i] = B[i+1] ^ G[i];
        end
    endgenerate
    assign B[n-1] = G[n-1];
endmodule
