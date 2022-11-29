/*
 * Comparador de magnitude 4-bits.
 */
module comparador_4b (a, b, f);
input [3:0] a, b;
output f;

assign f = (a == b);
endmodule

     