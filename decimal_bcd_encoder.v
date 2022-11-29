/*
 * Decodificador decimal para BCD.
 */
module decimal_bcd_encoder(d, y);
    input [9:0] d;
    output reg [3:0] y;

    always @* begin
        case(d)
            10'b0000000001: y = 4'b0000;
            10'b0000000010: y = 4'b0001;
            10'b0000000100: y = 4'b0010;
            10'b0000001000: y = 4'b0011;
            10'b0000010000: y = 4'b0100;
            10'b0000100000: y = 4'b0101;
            10'b0001000000: y = 4'b0110;
            10'b0010000000: y = 4'b0111;
            10'b0100000000: y = 4'b1000;
            10'b1000000000: y = 4'b1001;
            default:y = 4'b0000;
        endcase
    end
endmodule   