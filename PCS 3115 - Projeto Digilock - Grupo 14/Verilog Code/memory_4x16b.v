//Memoria 4x16-bits.
module memory_4x16b (clk, reset, idx, wr, enable, wdata, rdata);
    input clk, reset, wr, enable;
    input [1:0] idx;
    input [15:0] wdata;
    output [15:0] rdata;

    reg [15:0] register [0:3];
    integer i;

    always @ (posedge clk) begin
        if (reset == 1) begin
            for (i = 0; i < 4; i = i + 1) begin
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