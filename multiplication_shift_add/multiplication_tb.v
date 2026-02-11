
module top;
reg[31:0] a,b;
wire [63:0]c;

multiplication dut(a,b,c);

initial begin
	repeat (10) begin
	a=$urandom_range(1,70);
	b=$urandom_range(100,300);
	#500;
	$display("a=%0d | b=%0d | a*b=%0d",a,b,c);
	end
end
endmodule

