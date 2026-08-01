module HA(A,B,sum,cout);
    input A,B;
    output wire cout,sum;
    assign {cout,sum} = A + B;
endmodule
