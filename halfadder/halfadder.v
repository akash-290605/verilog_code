module halfadder(sum,cout,a,b);
input [7:0] a,b;
output[7:0] sum,cout;
assign sum=a^b;
assign cout=a&b;
endmodule
