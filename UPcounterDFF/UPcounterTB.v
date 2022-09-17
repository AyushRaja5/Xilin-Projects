`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:19:01 11/02/2021
// Design Name:   UPcounterM
// Module Name:   D:/Xilin LAb/UPcounterDFF/UPcounterTB.v
// Project Name:  UPcounterDFF
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: UPcounterM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module UPcounterTB_v;
	reg clk;
	reg rst;
	wire Q0;
	wire Q1;
	wire Q2;
	wire Q3;
	UPcounterM uut (
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
	#10;
	rst=0;
end
endmodule
