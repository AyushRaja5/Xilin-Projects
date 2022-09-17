`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:52:08 11/02/2021 
// Design Name: 
// Module Name:    DownCounterM 
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
module tff(clk,t,rst,q,qbar);
	input clk,rst,t;
	output reg q;
	output qbar;
	assign qbar = ~q;
	always @(posedge clk)
	begin 
		if(rst)
			q<=4'b0;
		else
			if(t)
				q <= ~q;
			else
				q <= q;
	end
endmodule


module DownCounterM(clk, rst, Q4, Q3, Q2, Q1);
   input clk;
   input rst;
   output Q4;
   output Q3;
   output Q2;
   output Q1;
	wire Q1_bar,Q2_bar,Q3_bar,Q4_bar;
	
	tff T1(clk,4'b1,rst,Q1,Q1_bar);
	tff T2(clk,Q1_bar,rst,Q2,Q2_bar);
	tff T3(clk,(Q2_bar & Q1_bar),rst,Q3,Q3_bar);
	tff T4(clk,(Q3_bar & Q2_bar & Q1_bar),rst,Q4,Q4_bar);

endmodule
