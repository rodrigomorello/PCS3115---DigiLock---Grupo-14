//TestBench contador de 9 bits
`timescale 1ns/100ps
module contador_9b_tb;

    reg add_tb, reset_tb, clk_tb;
    wire [8:0] s_tb;

    contador_9b uut (.add(add_tb), .reset(reset_tb), .clk(clk_tb), .s(s_tb));

    initial begin
        add_tb = 0;
        reset_tb = 1;
        clk_tb = 0;

        #20
        reset_tb = 0;
        add_tb = 1;

        #100
        reset_tb = 1;

        #20
        $stop;
    end

    always #5 clk_tb = ~clk_tb; 

endmodule