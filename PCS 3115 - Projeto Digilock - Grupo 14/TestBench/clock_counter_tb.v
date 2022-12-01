//TestBench para o relógio que registra horário dos eventos
`timescale 100ps/10ps
module clock_counter_tb;

    reg clk_1Hz_tb, reset_tb;
	 wire [16:0] horario_tb;

    clock_counter uut (.clk_1Hz(clk_1Hz_tb), .reset(reset_tb), .horario(horario_tb));

    initial begin
        clk_1Hz_tb = 0;
        reset_tb = 1;

        #30
        reset_tb = 0;
        
        #1000
        reset_tb = 1;

        #50
        $stop;
    end

    always #5 clk_1Hz_tb = ~clk_1Hz_tb;

endmodule