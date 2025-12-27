module fourbitadder(sum,cout,a,b,cin);
input [3:0] a,b;
input cin;
output [3:0] sum;
output cout;
wire w1,w2,w3;
fulladder fa0(sum[0],w1,a[0],b[0],cin);
fulladder fa1(sum[1],w2,a[1],b[1],w1);
fulladder fa2(sum[0],w3,a[2],b[2],w2);
fulladder fa3(sum[0],cout,a[3],b[3],w3);
endmodule

module fulladder(sum,cout,a,b,cin);
input a,b,cin;
output sum,cout;
assign sum=a^b^cin;
assign cout=(a&b)|((a^b)&cin);
endmodule

