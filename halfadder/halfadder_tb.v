//`include "halfadder.v"
//`include "halfadder_always.v"
`include "halfadder_gate.v"
module top;
wire [7:0] sum,cout;
reg  [7:0] a,b;

halfadder dut (sum,cout,a,b);

initial begin
a=8'd5;b=8'd6;
#1;
$display("a=%b ,b=%b,sum=%b,carry=%b",a,b,sum,cout);
a=8'd250;b=7'd7;
#1;
$display("a=%b ,b=%b,sum=%b,carry=%b",a,b,sum,cout);
a=8'd7;b=8'd6;
#1;
$display("a=%b ,b=%b,sum=%b,carry=%b",a,b,sum,cout);
a=8'd5;b=8'd95;
#1;
$display("a=%b ,b=%b,sum=%b,carry=%b",a,b,sum,cout);
a=8'd150;b=8'd2;
#1;
$display("a=%b ,b=%b,sum=%b,carry=%b",a,b,sum,cout);
$display("=============================================");
repeat(10) begin
a=$random;
b=$random;
#1;
$monitor("a=%b ,b=%b,sum=%b,carry=%b",a,b,sum,cout);
end

end
endmodule





