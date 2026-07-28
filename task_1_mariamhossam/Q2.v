module chip ( p1a,p1b,p1c,p1d,p1e,p1f,p2a,p2b,p2c,p2d,p1y,p2y);
    input p1a,p1b,p1c,p1d,p1e,p1f,p2a,p2b,p2c,p2d;
    output wire p1y,p2y;
    wire t1,t2,t3,t4;
    assign t1 = p1a & p1c & p1b;
    assign t2 = p1f & p1e & p1d;
    assign t3 = p2a & p2b;
    assign t4 = p2c & p2d;
    assign p2y = t3 | t4;
    assign p1y = t1 | t2;
endmodule
