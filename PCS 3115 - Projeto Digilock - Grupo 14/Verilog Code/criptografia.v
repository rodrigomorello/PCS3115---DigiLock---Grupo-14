// Bloco de criptogradia de  1 entrada de 4 bits.  Saída de 16 bits

module criptografia (a, s);
	input [3:0] a;
	output [15:0] s;
	wire [15:0] w1, w2, w3, w4, w5, w6;

	assign w1 = a;
	assign w2 = w1 + 3;
	assign w3 = w2 * 913;
	assign w4 = w3 % 867;
	assign w5 = w4 / 5;
	assign w6 = w5 * 449;
	
	assign s = w6;

endmodule