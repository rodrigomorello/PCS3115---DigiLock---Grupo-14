//TestBench da memória do registrador de abertura

`timescale 1ns/100ps
module memory_reg_tb;

	reg clk_tb, reset_tb, wr_tb, enable_tb;
	reg [8:0] idx_tb;
	reg [16:0] wdata_tb;
	wire [16:0] rdata_tb;
	
	memory_reg uut (.clk(clk_tb), .reset(reset_tb), .idx(idx_tb), .wr(wr_tb), .enable(enable_tb), .wdata(wdata_tb), .rdata(rdata_tb));

	initial begin
		clk_tb = 0;
		reset_tb = 1;
		wr_tb = 1;
		enable_tb = 1;
		idx_tb = 9'b000000000;
		wdata_tb = 17'b00000000000000000;
		
		#20
		reset_tb = 0;		
		idx_tb = 9'b000000000;
		wdata_tb = 17'b11111111111111111;
		
		#20
		idx_tb = 9'b000000001;
		wdata_tb = 17'b01010110010000011;			
		
		#20
		idx_tb = 9'b000000010;
		wdata_tb = 17'b01001100000101101;

		#20
		idx_tb = 9'b000000100;
		wdata_tb = 17'b11001001000100100;	

		#20
		idx_tb = 9'b000001000;
		wdata_tb = 17'b01110001010001000;
		
		#20
		idx_tb = 9'b000010000;
		wdata_tb = 17'b10010010110101101;
		
		#20
		idx_tb = 9'b000100000;
		wdata_tb = 17'b10000110000100101;
		
		#20
		idx_tb = 9'b001000000;
		wdata_tb = 17'b00100100010010000;
		
		#20
		idx_tb = 9'b010000000;
		wdata_tb = 17'b01000110000001001;
		
		#20
		idx_tb = 9'b100000000;
		wdata_tb = 17'b1000010011001010;
	
		#20
		wr_tb = 0;
		wdata_tb = 17'b00000000000000000;
		idx_tb = 9'b000000000;		

		#20
		idx_tb = 9'b000000001;

		#20
		idx_tb = 9'b000000010;

		#20
		idx_tb = 9'b000000100;

		#20
		idx_tb = 9'b000001000;	

		#20
		idx_tb = 9'b000010000;

		#20
		idx_tb = 9'b000100000;	

		#20
		idx_tb = 9'b001000000;	

		#20
		idx_tb = 9'b010000000;
		
		#20
		idx_tb = 9'b100000000;		
		
		#50
		reset_tb = 1;
		
		#50
		$stop;		
	end
	
	always #5 clk_tb = ~clk_tb;

endmodule