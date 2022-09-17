`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:49:15 11/23/2021
// Design Name:   FAusngMUX4
// Module Name:   D:/Xilin LAb/FullAdderUsingMuxCaseStatement/FAuseMUXTB.v
// Project Name:  FullAdderUsingMuxCaseStatement
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FAusngMUX4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FAuseMUXTB_v;

	// Inputs
	reg A;
	reg B;
	reg Cin;

	// Outputs
	wire Sum;
	wire Carry;

	// Instantiate the Unit Under Test (UUT)
	FAusngMUX4 uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.Sum(Sum), 
		.Carry(Carry)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		Cin = 0;

		#10;
        
		// Add stimulus here
		#10 A=0; B=1; Cin=0;
		#10 A=0; B=1; Cin=0;
		#10 A=1; B=0; Cin=0;
		#10 A=1; B=1; Cin=0;
		
		#10 A=0; B=0; Cin=1;
		#10 A=0; B=1; Cin=1;
		#10 A=1; B=0; Cin=1;
		#10 A=1; B=1; Cin=1;
	end
      
endmodule

