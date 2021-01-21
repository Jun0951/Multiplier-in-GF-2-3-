/////////////////////////////////////////////////////////////////////
// Design unit: Multiplier in GF(2^3)
//            :
// File name  : ranA.sv
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

module ranA(
  output wire [2:0] a,
  input wire Clk, nRst
  );

timeunit 1ns; timeprecision 10ps;

reg [3:0] state;

	assign a = state[2:0];

always_ff @(posedge Clk)
	if (!nRst)
		state <= '1;
	else
		state <= {state[0]^state[1],state[2:1]};  

endmodule
