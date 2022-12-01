//Testbench para mauqina que verifica se as 4 comparacoes estao corretas

`timescale 1ns/100ps
module maquina_verificadora_tb;

	reg clk_tb, rst_tb, comparacao_tb;
	wire saida_tb;

	maquina_verificadora uut (.clk(clk_tb), .rst(rst_tb), .saida(saida_tb), .comparacao(comparacao_tb));

	initial begin
		clk_tb = 0;
		rst_tb = 1;
		comparacao_tb = 0;
		
		#30
		rst_tb = 0;
		
		#10
		comparacao_tb = 1;
		
		#10
		comparacao_tb = 0;
		
		#10
		comparacao_tb = 1;
		
		#50
		comparacao_tb = 0;
		
		#10
		rst_tb = 1;
		
		#100
		$stop;
		
	end

	always #5 clk_tb = ~clk_tb;

endmodule