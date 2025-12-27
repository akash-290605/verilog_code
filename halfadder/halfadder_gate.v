module halfadder_gate(sum,cout,a,b);
input [7:0]a,b;
output [7:0]sum,cout;
half h1 (sum[0],cout[0],a[0],b[0]);
half h2 (sum[1],cout[1],a[1],b[1]);
half h3 (sum[2],cout[2],a[2],b[2]);
half h4 (sum[3],cout[3],a[3],b[3]);
half h5 (sum[4],cout[4],a[4],b[4]);
half h6 (sum[5],cout[5],a[5],b[5]);
half h7 (sum[6],cout[6],a[6],b[6]);
half h8 (sum[7],cout[7],a[7],b[7]);
endmodule

module half(sum,cout,a,b);
input a,b;
output sum,cout;
xor x1(sum,a,b);
and a1(cout,a,b);
endmodule
