//`include "fulladder_data.v"
`include "fulladder_gate.v"
module top;
reg a,b,cin;
wire sum,cout;
//fulladder_data dut(sum,cout,a,b,cin);
//fulladder_gate dut(sum,cout,a,b,cin);
fulladder_behav dut(sum,cout,a,b,cin);

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

