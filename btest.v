`include "barrel_shifter.v"

module test();

reg [15:0]a;
reg [3:0]s;
reg l;
wire [15:0] b;

bs b1(a[15:0],s[3:0],l,b[15:0]);

initial begin 
a = 16'b0101010001011001 ;
s = 4'b0010; 
l = 1'b0;
end

initial begin 
$monitor ("a was %b and b is %b",a,b);
end 

endmodule 