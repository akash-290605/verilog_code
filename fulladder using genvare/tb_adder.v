`include "n_bitadder.v"
module top;
parameter N=4;
reg [N-1:0]a,b;
reg cin;
wire [N-1:0] sum,c;
wire cout;
  n_bitadder #(N) nadd (sum,cout,a,b,cin);
initial begin
repeat(10)begin
a=$random();
b=$random();
cin=$random();
#10;
$monitor ("time=%0t| a-> %b,b-> %b,cin->%b | sum->%b ,cout-> %b|",$time,a,b,cin,sum,cout);
end
end
endmodule

