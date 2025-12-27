`include "Mux4_1.v"
module top;
reg [1:0]s;
reg [3:0]i;
wire y;

Mux4_1 dut(y,s,i);
initial begin
repeat(10) begin
s=$random();
i=$random();
#10;

$display("time=%t |input=%b | selectline=%b | output=%b",$time,i,s,y);
end
end
endmodule
