// multiplication using left shift operator without using division operator
module multiplication(a,b,c);
input [31:0]a,b;
output reg [63:0]c;
integer i;
always @ (*) begin
	c=0;	
  for(i=0;i<32;i=i+1) begin
  	if(b[i]==1) begin
		c=c+(a<<i);
	end
   end
end
endmodule

