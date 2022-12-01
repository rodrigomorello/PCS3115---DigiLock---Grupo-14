//TestBench para memoria 4x16-bits.

`timescale 1ns/100ps
module memory_4x16b_tb;

	reg clk_tb, reset_tb, wr_tb, enable_tb;
	reg [1:0] idx_tb;
	reg [15:0] wdata_tb;
	wire [15:0] rdata_tb;
	
	memory_4x16b uut (.clk(clk_tb), .reset(reset_tb), .idx(idx_tb), .wr(wr_tb), .enable(enable_tb), .wdata(wdata_tb), .rdata(rdata_tb));

	initial begin
		clk_tb = 0;
		reset_tb = 1;
		wr_tb = 1;
		enable_tb = 1;
		idx_tb = 2'b00;
		wdata_tb = 16'b0000000000000000;
		
		#20
		reset_tb = 0;
		idx_tb = 2'b00;
		wdata_tb = 16'b0000000000100001;		
		
		#20
		idx_tb = 2'b01;
		wdata_tb = 16'b0000000000110101;

		#20
		idx_tb = 2'b10;
		wdata_tb = 16'b0000000011000011;	

		#20
		idx_tb = 2'b11;
		wdata_tb = 16'b0110000000000010;
	
		#20
		wr_tb = 0;
		wdata_tb = 16'b0001000011001100;
		idx_tb = 2'b00;		

		#20
		idx_tb = 2'b01;

		#20
		idx_tb = 2'b10;

		#20
		idx_tb = 2'b11; 		
		
		#50
		reset_tb = 1;
		
		#50
		$stop;		
	end
	
	always #5 clk_tb = ~clk_tb;

endmodule