`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:31:38 11/20/2021 
// Design Name: 
// Module Name:    CMOS1st 
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
module CMOS1st(A, B, C, D, Y);
    input A;
    input B;
    input C;
    input D;
    output Y;
	wire a,b,d;
	supply1 Vdd;
	supply0 Gnd;
	pmos P1(a,Vdd,A);
	pmos P2(b,Vdd,B);
	pmos P3(a,b,C);
	pmos P4(Y,a,D);
	nmos N1(Y,Gnd,D);
	nmos N2(d,Gnd,B);
	nmos N3(d,Gnd,C);
	nmos N4(Y,d,A);
	

endmodule
