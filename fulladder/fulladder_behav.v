module fulladder_behav(sum,cout,a,b,cin);
input a,b,cin;
output reg sum,cout;
always @(*)begin
sum=a^b^cin;
cout=(a&b)|((a^b)&cin);
end 
endmodule
