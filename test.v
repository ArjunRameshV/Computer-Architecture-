// this is the testbench for the verilog code 


`include "control.v"
module test();

reg [15:0]a;
reg [3:0]s;
reg w,l;
wire [15:0] b;

xyz b1(a[15:0],s[3:0],w,l,b[15:0]);

initial begin 
a = 16'b0101010001011001 ;
s = 4'b0010; 
w = 1'b0;
l = 1'b0;
#5
a = 16'b0101010001011001 ;
s = 4'b0010; 
w = 1'b1;
l = 1'b0;
#5
a = 16'b0101010001011001 ;
s = 4'b0111; 
w = 1'b1;
l = 1'b1;
end


initial begin 
$monitor ("a was %b and b is %b",a,b);
end 

endmodule 