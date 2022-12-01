//TestBench para o decodificador decimal para BCD
`timescale 1ns/100ps
module decimal_bcd_encoder_tb;

    reg [9:0] d_tb;
    wire [3:0] y_tb;

    decimal_bcd_encoder uut (.d(d_tb), .y(y_tb));

    initial begin
        d_tb = 10'b0000000000;

        #30
        d_tb = 10'b0000000001;

        #30
        d_tb = 10'b0000000010;

        #30
        d_tb = 10'b0000000100;

        #30
        d_tb = 10'b0000001000;

        #30
        d_tb = 10'b0000010000;

        #30
        d_tb = 10'b0000100000;

        #30
        d_tb = 10'b0001000000;

        #30
        d_tb = 10'b0010000000;

        #30
        d_tb = 10'b0100000000;

        #30
        d_tb = 10'b1000000000;

        #100
        $stop;
    end
endmodule