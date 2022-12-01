`timescale 1ns/100ps

module unidade_de_controle_tb;

	reg clk_tb, modo_tb, tecla_ativada_tb, maquina_verificadora_tb;
   wire saida_tb, reset_cont_tb, reset_mem_tb, wr_tb, conta_tb, enable_tb;

	unidade_de_controle uut (.clk(clk_tb), .saida(saida_tb), .modo(modo_tb), .tecla_ativada(tecla_ativada_tb), .reset_cont(reset_cont_tb), .reset_mem(reset_mem_tb), .conta(conta_tb), .wr(wr_tb), .maquina_verificadora(maquina_verificadora_tb), .enable(enable_tb));
	
	initial begin
		clk_tb = 0;
		modo_tb = 1;
		tecla_ativada_tb = 0;
		maquina_verificadora_tb = 0;
		
		#10
		tecla_ativada_tb = 1;		
	
		#90
		modo_tb = 0;
		
		#70
		maquina_verificadora_tb = 1;
		
		#20
		modo_tb = 0;
		tecla_ativada_tb = 0;
		maquina_verificadora_tb = 0;
		
		#5
		$stop;
	
	end
	
	always #5 clk_tb = ~clk_tb;

endmodule