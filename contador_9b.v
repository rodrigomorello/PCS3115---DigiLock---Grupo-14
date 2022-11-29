//contador 9-bits com sinal para contagem.
module contador_9b (add, reset, clk, s);
    parameter TRUE 1'b1, FALSE 1'b0;

    input add, reset;
    output reg [8:0] s;

    initial begin
        s = 9'b000000000;
    end

    always @ (posedge clk) begin
        if (reset == TRUE) s = 9'b000000000;
        else if (add == TRUE) s = s + 9'b000000001;
    end
endmodule