module mux(input a, input b, input s, output c);
assign c = a&s | b&~s ;
endmodule 
