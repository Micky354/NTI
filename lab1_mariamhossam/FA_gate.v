module full_adder(A,B,cin,cout,sum);
    input A,B,cin;
    output cout,sum;
    wire t1,t2,t3;
    xor (t1,A,B);
    xor (sum,t1,cin);
    and (t2,t1,cin);
    and (t3,A,B);
    or (cout,t2,t3);
endmodule
