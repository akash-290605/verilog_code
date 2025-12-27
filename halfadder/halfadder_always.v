module halfadder_always(a,b,sum,cout);
input  [7:0] a,b;
output reg [7:0] sum,cout;
always@(*) begin
 sum=a^b;
 cout=a&b;
 end
 endmodule

