module full_adder(A,B,cin,cout,sum);
    input A,B,cin;
    output wire cout,sum,t1,t2,t3;
    HA A1 (.A(A),.B(B),.sum(t1),.cout(t2));
    HA A2 (.A(cin),.B(t1),.sum(sum),.cout(t3));
    assign cout = t2|t3;
endmodule
