`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:48:41 11/23/2021
// Design Name:   mux4
// Module Name:   D:/Xilin LAb/MUX16ElseIf/mux16IFELSETB.v
// Project Name:  MUX16ElseIf
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux16IFELSETB_v;

	reg [15:0] I;
	reg [3:0] Sel;
	wire Out;
	mux4 uut (
		.I(I), 
		.Sel(Sel), 
		.Out(Out)
	);


	initial begin
		I = 0;
		Sel = 0;
	$display("Sel3 Sel2 Sel1 Sel0  \t I7 I6 I5 I4 I3 I2 I1 I0 \t Out");
       $monitor("%b  %b  %b   \t %b  %b  %b  %b  %b  %b  %b  %b \t %b",
		 Sel[3], Sel[2], Sel[1], Sel[0], I[15], I[14], I[13], I[12], I[11],
		 I[10], I[9], I[8], I[7], I[6], I[5], I[4], I[3], I[2], I[1], I[0], Out);
	#50;
	I=16'b0000000000000001; Sel=4'b0000; 
#10 I=16'b0000000000000010; Sel=4'b0001; 
#10 I=16'b0000000000000100; Sel=4'b0010;
#10 I=16'b0000000000001000; Sel=4'b0011;
#10 I=16'b0000000000010000; Sel=4'b0100; 
#10 I=16'b0000000000100000; Sel=4'b0101; 
#10 I=16'b0000000001000000; Sel=4'b0110;
#10 I=16'b0000000010000000; Sel=4'b0111;
#10 I=16'b0000000100000000; Sel=4'b1000;
#10 I=16'b0000001000000000; Sel=4'b1001;
#10 I=16'b0000010000000000; Sel=4'b1010; 
#10 I=16'b0000100000000000; Sel=4'b1011;
#10 I=16'b0001000000000000; Sel=4'b1100; 
#10 I=16'b0010000000000000; Sel=4'b1101; 
#10 I=16'b0100000000000000; Sel=4'b1110; 
#10 I=16'b1000000000000000; Sel=4'b1111;

	end
endmodule

