module fulladder(sum,cout,a,b,c);
input a,b,c;
output sum,cout;
assign sum=a^b^c;
assign cout=(a&b)|((a^b)&c);
endmodule


module n_bitadder #(parameter N=4)(sum,cout,a,b,cin);
input [N-1:0] a,b;
input cin;
output [N-1:0] sum;
output cout;
wire [N-1:0]c;
assign c[0]=cin;
genvar i;
 generate 
    for(i=0;i<N;i=i+1) begin
	 fulladder fa(sum[i],c[i+1],a[i],b[i],c[i]);
	 end
 endgenerate
 assign cout=c[N-1];
 endmodule
