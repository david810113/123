module Shift ( rstn, clk, in, out );

input clk;
input rstn;
input [44:0]in;


output [13:0] out;


//assign out =  in;

assign out = in[44:31];

endmodule