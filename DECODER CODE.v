VERILOG CODE FOR DECODER ------------------------------------------>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

module decoder_verilog(a, b, c, d);

input a;

input b;

input c;

output [7:0] d;

assign d[0]=(~a)&(~b)&(~c);

assign d[1]=(~a)&(~b)&(c);

assign d[2]=(~a)&(b)&(~c);

assign d[3]=(~a)&(b)&(c);

assign d[4]=(a)&(~b)&(~c);

assign d[5]=(a)&(~b)&(c);

assign d[6]=(a)&(b)&(~c);

assign d[7]=(a)&(b)&(c);

endmodule


TESTBENCH FOR DECODER ------------------------------------------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>


module decoder_testbench;

reg a;

reg b;

reg c;

wire [7:0] d;

decoder_verilog uut ( .a(a),.b(b),.c(c),.d(d) );

initial begin

a=1'b0; b=1'b0; c=1'b0;

#10 a=1'b0; b=1'b0; c=1'b1;

#10 a=1'b0; b=1'b1; c=1'b0;

#10 a=1'b0; b=1'b1; c=1'b1;

#10 a=1'b1; b=1'b0; c=1'b0;

#10 a=1'b1; b=1'b0; c=1'b1;

#10 a=1'b1; b=1'b1; c=1'b0;

#10 a=1'b1; b=1'b1; c=1'b1;

#80 $stop;

end

endmodule
