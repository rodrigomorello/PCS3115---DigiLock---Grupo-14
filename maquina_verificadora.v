//mauqina que verifica se as 4 comparacoes estao corretas
module maquina_verificadora (clk, saida, comparacao);
    input clk, comparacao;
    output reg saida;

    reg [2:0] state;

    integer n_comp = 0;

    parameter inicio = 3'b000,
              primeira = 3'b01,
              segunda = 3'b010,
              terceira = 3'b011,
              quarta = 3'b100;

    initial begin
        state <= inicio;
        saida <= 1'b0;
    end

    always @(posedge clk, posedge rst) begin
        if (rst == 1'b1) state <= inicio;
        else begin
            case(state)
                inicio: begin
                    if (comparacao == 1) state <= primeira;
                    else
                        state <= inicio;
                end
                primeira: begin
                    if (comparacao == 1) state <= segunda;
                    else
                        state <= inicio;
                end
                segunda: begin
                    if (comparacao == 1) state <= terceira;
                    else
                        state <= inicio;
                end
                terceira: begin
                    if (comparacao == 1) state <= quarta
                    else
                        state <= inicio;
                end
            endcase
        end
    end

    always @(state) begin
        case(state)
            inicio: saida = 1'b0;
            primeira: saida = 1'b0;
            segunda: saida = 1'b0;
            terceira: saida = 1'b0;
            quarta: begin
                saida = 1'b1;
                state <= inicio;
            end
        endcase
    end 
endmodule
