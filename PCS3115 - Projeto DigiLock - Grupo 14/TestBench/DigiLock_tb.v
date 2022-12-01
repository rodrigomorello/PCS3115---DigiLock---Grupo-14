//TestBench para o projeto completo DigiLock
`timescale 100ps/10ps
module DigiLock_tb;
	reg [9:0] codificador_tb;
	reg clock_tb, modo_tb;
	wire [16:0] relogio_tb;
	wire fechadura_tb, comparador_tb;
	
	DigiLock uut (.codificador(codificador_tb), .clock(clock_tb), .modo(modo_tb), .fechadura(fechadura_tb), .relogio(relogio_tb), .comparador(comparador_tb));
	
	initial begin
		codificador_tb = 9'b000000000;
		clock_tb = 0;
		modo_tb = 1;
		
		#20
		codificador_tb = 9'b000000001;

		#20
		codificador_tb = 9'b000000100;
	
		#20
		codificador_tb = 9'b010000000;
	
		#20
		codificador_tb = 9'b000100000;
		
		#10
		modo_tb = 0;
		
		#20
		codificador_tb = 9'b000000001;

		#20
		codificador_tb = 9'b000000100;
	
		#20
		codificador_tb = 9'b010000000;
	
		#20
		codificador_tb = 9'b000100000;

		#20
		codificador_tb = 9'b000000001;

		#20
		codificador_tb = 9'b000000010;
	
		#20
		codificador_tb = 9'b100000000;
	
		#20
		codificador_tb = 9'b010000000;
	
		#200
		$stop;
	end
	
	always #5 clock_tb = ~clock_tb;
	
endmodule