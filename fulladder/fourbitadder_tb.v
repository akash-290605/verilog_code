`include "fourbitadder.v"
module top;
reg [3:0] a,b;
reg cin;
wire [3:0]sum;
wire cout;
fourbitadder dut(sum,cout,a,b,cin);
initial begin
repeat(10) begin
a=$random;
b=$random;
cin=$random;
#10;
$display("a=> %b ,b=> %b, cin=> %b, sum=> %b, cout=> %b",a,b,cin,sum,cout);
end
end
endmodule

