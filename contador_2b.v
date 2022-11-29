//Contador 2-bits com sinal de contagem.
module contador_2b (add, reset, clk, s);
    parameter TRUE 1'b1, FALSE 1'b0;

    input add, reset;
    output reg [1:0] s;

    initial begin
        s = 2'b00;
    end

    always @ (posedge clk) begin
        if (reset == TRUE) s = 2'b00;
        else if (add == TRUE) s = s + 2'b01;
        
    end
endmodule