/////////////////////////////////////////////////////////////////////
// Design unit: Multiplier in GF(2^3)
//            :
// File name  : ranB.sv
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

module ranB(
  output wire [2:0] b,
  input wire Clk, nRst
  );

timeunit 1ns; timeprecision 10ps;

reg [7:0] state;

	assign b = state[2:0];

always_ff @(posedge Clk)
	if (!nRst)
		state <= '1;
	else
		state <= {state[0]^state[1]^state[3]^state[4],state[7:1]}; 
   
endmodule
