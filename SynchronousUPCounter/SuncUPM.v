`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:39:42 11/02/2021 
// Design Name: 
// Module Name:    SuncUPM 
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
module dff(clk, rst,Q, Q_bar, D);
input clk, rst, D;
output reg Q;
output Q_bar;

assign Q_bar = ~Q;

always @(posedge clk)
begin
if(rst)
	Q<=1'b0;
else
	Q<=D;
end
endmodule

module SuncUPM(clk, rst, Q0, Q1, Q2, Q3);
    input clk;
    input rst;
    output Q0;
    output Q1;
    output Q2;
    output Q3;
	 wire Q0_bar,Q1_bar,Q2_bar,Q3_bar;
	dff D1(clk,rst,Q0,Q0_bar,Q0_bar),
		 D2(clk,rst,Q1,Q1_bar,(Q0^Q1)),
		 D3(clk,rst,Q2,Q2_bar,(Q2^(Q1&Q0))),
		 D4(clk,rst,Q3,Q3_bar,(Q3^(Q2&Q1&Q0)));

endmodule
