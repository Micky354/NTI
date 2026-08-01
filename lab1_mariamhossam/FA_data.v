module full_adder(A,B,cin,cout,sum);
    input A,B,cin;
    output wire cout,sum;
    assign {cout,sum} = A + B + cin;
endmodule
