//memória do registrador de abertura
module memory_reg (clk, reset, idx, wr, enable, wdata, rdata);
    input clk, reset, wr, enable;
    input [8:0] idx;
    input [16:0] wdata;
    output [16:0] rdata;

    reg [16:0] register [0:511];
    integer i;

    always @ (posedge clk) begin
        if (!reset) begin
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