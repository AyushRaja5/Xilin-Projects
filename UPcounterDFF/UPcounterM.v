`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:55:46 11/02/2021 
// Design Name: 
// Module Name:    UPcounterM 
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
module dff(clk,rst,Q,Qbar,D);
input clk,rst,D;
output reg Q;
output Qbar;
assign Qbar = ~Q;
always @(posedge clk)
begin
	if(rst)
		Q<=4'b0;
	else Q<=D;
end
endmodule

module UPcounterM(clk, rst, Q0, Q1, Q2, Q3);
    input clk;
    input rst;
    output Q0;
    output Q1;
    output Q2;
    output Q3;
	wire Q0bar,Q1bar,Q2bar,Q3bar;
	dff D0(clk,rst,Q0,Q0bar,Q0bar);
	dff D1(clk,rst,Q1,Q1bar,(Q1^Q0));
	dff D2(clk,rst,Q2,Q2bar,((Q2 & Q0bar) | (Q2 & Q1bar) | (Q2bar & Q1 & Q0)));
	dff D3(clk,rst,Q3,Q3bar,((Q3&Q2bar)|(Q3&Q0bar)|(Q3&Q1bar)|(Q3bar&Q2&Q1&Q0)));
	
endmodule
