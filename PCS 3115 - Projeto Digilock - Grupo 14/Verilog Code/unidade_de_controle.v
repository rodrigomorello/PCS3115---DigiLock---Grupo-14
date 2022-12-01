//Unidade de controle
module unidade_de_controle (clk, saida, modo, tecla_ativada, reset_cont, reset_mem, conta, wr, maquina_verificadora, enable);
    input clk, modo, tecla_ativada, maquina_verificadora;
    output reg saida, reset_cont, reset_mem, wr, conta, enable;
    reg [4:0] estado;

    parameter inicio = 5'b00000,
              //estados para o modo de configuracao de senha
              senha_ini = 5'b00001,
              digi_1 = 5'b00010,
              cont_1 = 5'b00011,
              digi_2 = 5'b00100,
              cont_2 = 5'b00101,
              digi_3 = 5'b00110,
              cont_3 = 5'b00111,
              digi_4 = 5'b01000,
              senha_fim = 5'b01001,
              //estados para o modo de verificacao de senha
              comp_ini = 5'b01010,
              comp_1 = 5'b01011,
              comp_2 = 5'b01100,
              comp_3 = 5'b01101,
              comp_4 = 5'b01110,
              meio_1 = 5'b01111,
              meio_2 = 5'b10000,
              meio_3 = 5'b10001;

    initial begin
        estado <= inicio;
        saida <= 1'b0;
    end

    always @(posedge clk) begin
        case(estado)
            inicio: begin
                if (modo == 1) estado <= senha_ini;
                else
                    estado <= comp_ini;
            end
            //estados para o modo de configuracao de senha
            senha_ini: begin
                if (tecla_ativada == 1) estado = digi_1;
            end
            digi_1: begin
                estado = cont_1;
            end
            cont_1: begin
                if (tecla_ativada == 1) estado = digi_2;
            end
            digi_2: begin
                estado = cont_2;
            end
            cont_2: begin
                if (tecla_ativada == 1) estado = digi_3;
            end
            digi_3: begin
                estado = cont_3;
            end
            cont_3: begin
                if (tecla_ativada == 1) estado = digi_4;
            end
            digi_4: begin
                estado = senha_fim;
            end
            //estados para o modo de verificacao de senha
            comp_ini: begin
                if (tecla_ativada == 1) estado = comp_1;
            end
            comp_1: begin
                estado = meio_1;
            end
            meio_1: begin
                if (tecla_ativada == 1) estado = comp_2;
            end
            comp_2: begin
                 estado = meio_2;
            end
            meio_2: begin
                if (tecla_ativada == 1) estado = comp_3;
            end
            comp_3: begin
                 estado = meio_3;
            end
            meio_3: begin
                 if (tecla_ativada == 1) estado = comp_4;
            end
				comp_4: estado <= inicio;
        endcase
    end

    always @(estado) begin
        case(estado)
            inicio: begin
               saida = 0;
            end
            //estados para o modo de configuracao de senha
            senha_ini: begin
                reset_mem = 1;
                reset_cont = 1;
            end
            digi_1: begin
                reset_mem = 0;
                reset_cont = 0;
                enable = 1;
                wr = 1; 
            end
            cont_1: begin
                enable = 0;
                wr = 0;
                conta = 1;
            end
            digi_2: begin
                conta = 0;
                enable = 1;
                wr = 1; 
            end
            cont_2: begin
					 enable = 0;
                wr = 0;
                conta = 1;
            end
            digi_3: begin
                conta = 0;
                enable = 1;
                wr = 1; 
            end
            cont_3: begin
                enable = 0;
                wr = 0;
                conta = 1;
            end
            digi_4: begin
                enable = 1;
                wr = 1;
                conta = 0;
                reset_cont = 1;
            end
            senha_fim: begin
                enable = 0;
                wr = 0;
                reset_cont = 0;
            end
            //estados para o modo de verificacao de senha
            comp_ini: begin
                reset_cont = 1;
            end
            comp_1: begin
                reset_cont = 0;
                conta = 1;
            end
            meio_1: begin
                conta = 0;
            end
            comp_2: begin
                 conta = 1;
            end
            meio_2: begin
                conta = 0;
            end
            comp_3: begin
                 conta = 1;
            end
            meio_3: begin
                conta = 0;
            end
            comp_4: begin
                if (maquina_verificadora == 1) begin
                    saida = 1;
                    //depois que foram digitados 4 numeros no decodificador
                    //a maquina verificadora vai retornar 1 caso a sequencia
                    //seja igual a senha
                end
            end
        endcase
    end
endmodule