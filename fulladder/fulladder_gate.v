module fulladder_gate(sum,cout,a,b,cin);
input a,b,cin;
output sum,cout;
wire w1,w2;
xor x1(w1,a,b);
xor x2(sum,w1,cin);
and a1(w2,a,b);
and a2(w3,w1,cin);
or  o1(cout,w2,w3);
endmodule
