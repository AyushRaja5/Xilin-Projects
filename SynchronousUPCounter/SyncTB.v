`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:51:06 11/02/2021
// Design Name:   SuncUPM
// Module Name:   D:/Xilin LAb/SyncUP/SyncTB.v
// Project Name:  SyncUP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SuncUPM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SyncTB_v;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire Q0;
	wire Q1;
	wire Q2;
	wire Q3;

	// Instantiate the Unit Under Test (UUT)
	SuncUPM uut (
		.clk(clk), 
		.rst(rst), 
		.Q0(Q0), 
		.Q1(Q1), 
		.Q2(Q2), 
		.Q3(Q3)
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

