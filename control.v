//this is the main code for the shifter.
`include "mux.v"
`include "barrel_shifter.v"
`include "tenmux.v"

module xyz(input [15:0]a, input[3:0]s,input w,input l,output [15:0]b);

// w decided the direction of shift
// w == 0  means left shift and w == 1 means right shift
// l decided the whether arithmatic or logic shift
// l == 1 means arithmetic shift

wire n ; //decided the newly enterd bit 
wire [15:0]fa,fb;

tenmux m1(a[15:0],w,fa[15:0]);
mux t1(fa[15],1'b0,w&l,n);
bs b1(fa[15:0],s[3:0],n,fb[15:0]);
tenmux m2(fb[15:0],n,b[15:0]);

endmodule 


