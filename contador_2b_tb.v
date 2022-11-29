//TestBench para o contador de 2 bits
`timescale 1ns/100ps

module contador_2b_tb;

    reg add_tb, reset_tb, clk_tb;
    wire s_tb;

    contador_2b uut (.add(add_tb), .reset(reset_tb), .clk(clk_tb), .s(s_tb));

    initial begin
        add_tb = 0;
        reset_tb = 1;
        clk_tb = 0;

        #20
        reset_tb = 0;
        add_tb = 1;

        #10
        add_tb = 1;

        #10
        add_tb = 1;

        #10
        add_tb = 1;

        #30
        reset_tb = 1;
        add_tb = 0;

        #20
        reset_tb = 0;
        add_tb = 0;

        #200
        $stop;
    end

    always #5 clk_tb = ~clk_tb;

endmodule