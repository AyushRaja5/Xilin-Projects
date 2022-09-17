`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:32:09 11/02/2021
// Design Name:   DownCounterM
// Module Name:   D:/Xilin LAb/DownCounterTFF/DownCountTB.v
// Project Name:  DownCounterTFF
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DownCounterM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DownCountTB_v;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire Q4;
	wire Q3;
	wire Q2;
	wire Q1;

	// Instantiate the Unit Under Test (UUT)
	DownCounterM uut (
		.clk(clk), 
		.rst(rst), 
		.Q4(Q4), 
		.Q3(Q3), 
		.Q2(Q2), 
		.Q1(Q1)
	);

initial begin 
clk=0;
forever #5 clk=~clk;
end
initial begin
rst=1;
#20;
rst=0;
end
      
endmodule

