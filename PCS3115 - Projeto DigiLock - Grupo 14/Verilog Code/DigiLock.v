//Projeto Completo Digilock
module DigiLock (codificador, clock, modo, fechadura, relogio, comparador);   
	input [9:0] codificador;     
	input clock, modo;     
	output [16:0] relogio;     
	output fechadura, comparador;
	
	wire [3:0] digito;     
	wire [15:0] cripto, senha_digi;     
	wire [1:0] idx_mem;     
	wire [16:0] relogio_tempo;     
	wire [8:0] idx_mem_relogio;      
	wire incremento_uc, write_uc, reset_uc, resetcont_uc, resetmem_uc, enable_uc, tecla_acionada, comparador, verificacao, conta_uc, comp;
	
	clock_counter relogio_reg (clock, relogio_tempo);   
	comparador_16b comparador16b (cripto, senha_digi, comparador);
	contador_2b contador2b (incremento_uc, resetcont_uc, clock, idx_mem);
	contador_9b contador9b (fechadura, resetcont_uc, clock, idx_mem_relogio);
	criptografia criptografia (digito, cripto);
	decimal_bcd_encoder codifica (clock, codificador, digito, tecla_acionada); 
	maquina_verificadora maq_verificadora (clock, reset_uc, comp, comparador);
	memory_4x16b memoria4x16b (clock, resetmem_uc, idx_mem, write_uc, enable_uc, cripto, senha_digi);
	memory_reg memoria_reg (clock, resetmem_uc, idx_mem_relogio, fechadura, enable_uc, relogio_tempo);
	unidade_de_controle unidadecontrole (clock, fechadura, modo, tecla_acionada, resetcont_uc, resetmem_uc, conta_uc, write_uc, comp, enable_uc);    
	
	
endmodule 