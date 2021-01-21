/////////////////////////////////////////////////////////////////////
// Design unit: Multiplier in GF(2^3)
//            :
// File name  : mul.sv
//            :
// Description: Code for Coursework#1
//            : 
// Limitations: None
//            : 
//            :
// Author     : Jun Xia
//            : University of Southampton
//            : Southampton SO17 1BJ, UK
//
// Revision   : Version 1.0 24/11/20
/////////////////////////////////////////////////////////////////////

module mul(
  output reg [4:0] Q,
  input wire [2:0] A,B, 
  input wire Clk, nRst
  );

timeunit 1ns; timeprecision 10ps;

	always_ff @(posedge Clk, negedge nRst)
		if (!nRst)
			Q <= '0;
		else 
			begin 
			Q[0] <= A[0] & B[0];
			Q[1] <= ((A[1] & B[0]) ^ (A[0] & B[1]));
			Q[2] <= ((A[2] & B[0]) ^ (A[1] & B[1]) ^ (A[0] & B[2]));
			Q[3] <= ((A[2] & B[1]) ^ (A[1] & B[2]));
			Q[4] <= A[2] & B[2];
			end
endmodule
