//TestBench para o decodificador decimal para BCD
`timescale 1ns/100ps
module decimal_bcd_encoder_tb;
	 
	 reg clk_tb;
    reg [9:0] dec_tb;
	 wire tecla_acionada;
    wire [3:0] BCD_tb;

    decimal_bcd_encoder uut (.clk(clk_tb), .dec(dec_tb), .BCD(BCD_tb), .tecla_acionada(tecla_acionada_tb));

    initial begin
		  clk_tb = 0;
        dec_tb = 10'b0000000000;

        #20
        dec_tb = 10'b0000000001;

        #20
        dec_tb = 10'b0000000010;

        #20
        dec_tb = 10'b0000000100;

        #20
        dec_tb = 10'b0000001000;

        #20
        dec_tb = 10'b0000010000;

        #20
        dec_tb = 10'b0000100000;

        #20
        dec_tb = 10'b0001000000;

        #20
        dec_tb = 10'b0010000000;

        #20
        dec_tb = 10'b0100000000;

        #20
        dec_tb = 10'b1000000000;

        #100
        $stop;
    end
	 
	 always #5 clk_tb = ~clk_tb;
	 
endmodule