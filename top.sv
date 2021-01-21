/////////////////////////////////////////////////////////////////////
// Design unit: Multiplier in GF(2^3)
//            :
// File name  : top.sv
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

module top(
  output wire [2:0] q,
  input wire Clk, nRst
  );

timeunit 1ns; timeprecision 10ps;

	wire [2:0] A,B;
	wire [4:0] Q;

	ranA 	ran1 (A, Clk, nRst);
	ranB	ran2  (B, Clk, nRst);
	mul 	mul1 (Q, A, B, Clk, nRst);
	modulo  mo1	 (q, Q, nRst);

endmodule
