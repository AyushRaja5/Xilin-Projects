`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:32:07 11/23/2021 
// Design Name: 
// Module Name:    FAusngMUX4 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mux(z,d0,d1,d2,d3,s0,s1);
input d0,d1,d2,d3,s0,s1;
output z;
reg z;
always @(d0 or d1 or d2 or d3 or s0 or s1)
 begin
 case({s0,s1})
 2'b00: z<=d0;
 2'b01: z<=d1;
 2'b10: z<=d2;
 2'b11: z<=d3;
 endcase
 end
 endmodule

module FAusngMUX4(A, B, Cin, Sum, Carry);
    input A;
    input B;
    input Cin;
    output Sum;
    output Carry;
	wire  w1;
	 assign w1=~A;
	mux m1(Sum,A,w1,w1,A,Cin,B);
	mux m2(Carry,0,A,A,1,Cin,B);
	
endmodule
