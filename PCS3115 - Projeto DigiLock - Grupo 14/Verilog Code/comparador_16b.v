//Comparador de magnitude 16-bits.
module comparador_16b (a, b, f);
input [15:0] a, b;
output f;

assign f = (a == b);
endmodule    