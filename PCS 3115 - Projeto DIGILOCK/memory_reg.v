//memória do registrador de abertura
module memory_reg (clk, reset, idx, wr, enable, wdata, rdata);
    input clk, reset, wr, enable; //wr habilita a escrita de dados
    input [8:0] idx; //valor que indica uma posição da memória
    input [16:0] wdata; //valor que vai ser armazenado
    output [16:0] rdata; //valor que vai ser lido

    reg [16:0] register [0:511];
    integer i;

    always @ (posedge clk) begin
        if (reset ==  1) begin
            for (i = 0; i < 512; i = i + 1) begin
                register[i] <= 0;
            end
        end
        else begin
            if (enable & wr)
                register[idx] <= wdata;
            else
                register[idx] <= register[idx];
        end
    end

    assign rdata = (enable & ~wr) ? register[idx]: 0;  
endmodule