/////////////////////////////////////////////////////////////////////
// Design unit: Multiplier in GF(2^3)
//            :
// File name  : modulo.sv
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

module modulo (
  output reg [2:0] A,
  input wire [4:0] Q, 
  input wire nRst
  );

timeunit 1ns; timeprecision 10ps;

	// always_ff @(posedge Clk, negedge nRst)
	//	if (!nRst)
	//		A <= '0;
	always_comb
		if(!nRst)
			A = '0;
		else begin
			A[0] <= Q[0] ^ Q[3];
			A[1] <= Q[1] ^ Q[3] ^ Q[4];
			A[2] <= Q[2] ^ Q[4];
			end
endmodule
