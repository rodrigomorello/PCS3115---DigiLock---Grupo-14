`timescale 1ns/100ps
module criptografia_tb;

	reg [3:0] a_tb;
	wire [15:0] s_tb;
	
	criptografia uut (.a(a_tb), .s(s_tb));
	
	initial begin
		a_tb = 4'b0000;
		
		#10
		a_tb = 4'b0001;

		#10
		a_tb = 4'b0010;

		#10
		a_tb = 4'b0011;

		#10
		a_tb = 4'b0100;

		#10
		a_tb = 4'b0101;

		#10
		a_tb = 4'b0110;

		#10
		a_tb = 4'b0111;

		#10
		a_tb = 4'b1000;

		#10
		a_tb = 4'b1001;

		#50
		$stop;	
	end	
endmodule