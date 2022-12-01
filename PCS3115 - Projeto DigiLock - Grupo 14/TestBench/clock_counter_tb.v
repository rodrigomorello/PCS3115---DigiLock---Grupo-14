//TestBench para o relógio que registra horário dos eventos
`timescale 100ps/10ps
module clock_counter_tb;

    reg clk_1Hz_tb;
	 wire [16:0] horario_tb;

    clock_counter uut (.clk_1Hz(clk_1Hz_tb), .horario(horario_tb));

    initial begin
        clk_1Hz_tb = 0;

        #2000
        $stop;
    end

    always #5 clk_1Hz_tb = ~clk_1Hz_tb;

endmodule