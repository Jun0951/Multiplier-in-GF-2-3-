/////////////////////////////////////////////////////////////////////
// Design unit: Multiplier in GF(2^3)
//            :
// File name  : test.sv
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
module test;

	timeunit 1ns; timeprecision 100ps;
	
	logic Clk, nRst;
	logic [2:0] q, A, B;
	logic [4:0] Q;
	
	
	top top1 (q, Clk, nRst);
	
	assign Q = top1.mul1.Q;
	assign B = top1.ran2.b;
	assign A = top1.ran1.a;
	
	initial 
		begin
		Clk = '0;
		forever #10 Clk = ~Clk;
		end
		
	initial 
		begin 
		nRst = '0;
		#15 nRst = '1;
		#300;
		$stop;
		end
		
endmodule
		
	
	