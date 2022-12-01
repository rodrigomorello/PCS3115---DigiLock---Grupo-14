//TestBench para o comparador de 16-bits

`timescale 1ns/100ps
module comparador_16b_tb;

    reg [15:0] a_tb, b_tb;
    wire f_tb;

    comparador_16b uut (.a(a_tb), .b(b_tb), .f(f_tb));

    initial begin
        a_tb = 16'b0000000000000000;
        b_tb = 16'b0000000000000000;

        #20
        a_tb = 16'b0001000000000000;
        b_tb = 16'b0001000000000000;

        #20
        a_tb = 16'b0001000000000000;
        b_tb = 16'b0000000000000000;

        #20
        a_tb = 16'b0010000000000000;
        b_tb = 16'b0010000000000000;

        #20
        a_tb = 16'b0010000000000000;
        b_tb = 16'b1100000000000000;

        #20
        a_tb = 16'b0011000000000000;
        b_tb = 16'b0011000000000000;

        #20
        a_tb = 16'b0001000000000000;
        b_tb = 16'b0010000000000000;

        #20
        a_tb = 16'b0100000000000000;
        b_tb = 16'b0100000000000000;

        #20
        a_tb = 16'b0110000000000000;
        b_tb = 16'b1000000000000000;

        #20
        a_tb = 16'b0101000000000000;
        b_tb = 16'b0101000000000000;

        #20
        a_tb = 16'b0100000000000000;
        b_tb = 16'b0110000000000000;

        #20
        a_tb = 16'b0110000000000000;
        b_tb = 16'b0110000000000000;

        #20
        a_tb = 16'b0001000000000000;
        b_tb = 16'b0100000000000000;

        #20
        a_tb = 16'b0111000000000000;
        b_tb = 16'b0111000000000000;

        #20
        a_tb = 16'b1010000000000000;
        b_tb = 16'b0100000000000000;

        #20
        a_tb = 16'b1000000000000000;
        b_tb = 16'b1000000000000000;

        #20
        a_tb = 16'b1010000000000000;
        b_tb = 16'b0101000000000000;

        #20
        a_tb = 16'b1001000000000000;
        b_tb = 16'b1001000000000000;

        #20
        a_tb = 16'b0010000000000000;
        b_tb = 16'b0011000000000000;

        #20
        a_tb = 16'b1010000000000000;
        b_tb = 16'b1010000000000000;

        #20
        a_tb = 16'b1000000000000000;
        b_tb = 16'b0110000000000000;

        #20
        a_tb = 16'b1011000000000000;
        b_tb = 16'b1011000000000000;

        #20
        a_tb = 16'b1010000000000000;
        b_tb = 16'b1001000000000000;

        #20
        a_tb = 16'b1100000000000000;
        b_tb = 16'b1100000000000000;

        #20
        a_tb = 16'b1100000000000000;
        b_tb = 16'b1010000000000000;

        #20
        a_tb = 16'b1101000000000000;
        b_tb = 16'b1101000000000000;

        #20
        a_tb = 16'b0101000000000000;
        b_tb = 16'b1010000000000000;

        #20
        a_tb = 16'b1110000000000000;
        b_tb = 16'b1110000000000000;

        #20
        a_tb = 16'b0110000000000000;
        b_tb = 16'b0010000000000000;

        #20
        a_tb = 16'b1111000000000000;
        b_tb = 16'b1111000000000000;

        #20
        a_tb = 16'b1101000000000000;
        b_tb = 16'b0010000000000000;

        #200
        $stop;
    end
endmodule