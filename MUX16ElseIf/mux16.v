`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:37:21 11/23/2021 
// Design Name: 
// Module Name:    mux16 
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
module mux16(A0,A1,A2,A3, S, Y);
    input A0,A1,A2,A3;
    input [1:0] S;
    output Y;
	 reg Y;

always @ (A0 or A1 or A2 or A3 or S) 
begin
 if (S==0)
  Y = A0;
 else if (S==1)
  Y = A1;
 else if (S==2)
  Y =  A2;
 else
  Y = A3;
end
endmodule


module mux4(I,Sel,Out);
	input [15:0] I;
	input [3:0] Sel;
	output Out;
	//reg Out;
	wire w1,w2,w3,w4;
	mux16 M1(I[0],I[1],I[2],I[3],Sel[1:0],w1);
	mux16 M2(I[4],I[5],I[6],I[7],Sel[1:0],w2);
	mux16 M3(I[8],I[9],I[10],I[11],Sel[1:0],w3);
	mux16 M4(I[12],I[13],I[14],I[15],Sel[1:0],w4);
	mux16 M5(w1,w2,w3,w4,Sel[3:2],Out);
	endmodule