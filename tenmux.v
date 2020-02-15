module tenmux(a,w,s);

input [15:0]a;
input w;
wire [15:0]b,c;
output [15:0]s;

// assign a = 16'b1100001001010101; 
// assign w = 1'b1;

// always@(*)
// begin 
// $display(" %b ",s);
// end  

assign c[0] = a[15] ;
assign c[1] = a[14] ;
assign c[2] = a[13] ;
assign c[3] = a[12] ;
assign c[4] = a[11] ;
assign c[5] = a[10] ;
assign c[6] = a[9] ;
assign c[7] = a[8] ;
assign c[8] = a[7] ;
assign c[9] = a[6] ;
assign c[10] = a[5] ;
assign c[11] = a[4] ;
assign c[12] = a[3] ;
assign c[13] = a[2] ;
assign c[14] = a[1] ;
assign c[15] = a[0] ;

mux a1(a[0],c[0],w,s[0]);
mux a2(a[1],c[1],w,s[1]);
mux a3(a[2],c[2],w,s[2]);
mux a4(a[3],c[3],w,s[3]);
mux a5(a[4],c[4],w,s[4]);
mux a6(a[5],c[5],w,s[5]);
mux a7(a[6],c[6],w,s[6]);
mux a8(a[7],c[7],w,s[7]);
mux a9(a[8],c[8],w,s[8]);
mux a10(a[9],c[9],w,s[9]);
mux a11(a[10],c[10],w,s[10]);
mux a12(a[11],c[11],w,s[11]);
mux a13(a[12],c[12],w,s[12]);
mux a14(a[13],c[13],w,s[13]);
mux a15(a[14],c[14],w,s[14]);
mux a16(a[15],c[15],w,s[15]);

endmodule 