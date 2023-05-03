`timescale 1ns / 1ps

module modo_op_3(
  input logic [13:0] num_in,
  output logic [6:0] seg_out [3:0]
);

  // Obtener complemento a dos del numero de entrada
  logic [13:0] num_c2 = ~num_in + 1;

  // Invertir el signo del numero en complemento a dos
  logic [15:0] num_inv = {1'b0, num_c2}; //se le agrega un 0 para que cumpla con los 16 bits

  // Extender el numero a 16 bits
  logic [15:0] num_ext = num_inv[15] ? {8'hFF, num_inv} : num_inv; // Verifica si es negativo para extenderlo a 16 bits colocando un 1 en los 8 bits mas significativos

  // Convertir el numero a hexadecimal
  logic [3:0] hex_val = num_ext[15:12];

  always_comb begin
    // Desplegar valor convertido a traves del 7 segmentos
    for (int i = 0; i < 4; i++) begin //Se ejecuta 4 veces para recorrer los 4 digitos del # en hexadecimal
      case (hex_val[i]) // Toma valores de 0 a 3
        4'b0000: seg_out[i] = 7'b1000000; // 0
        4'b0001: seg_out[i] = 7'b1111001; // 1
        4'b0010: seg_out[i] = 7'b0100100; // 2
        4'b0011: seg_out[i] = 7'b0110000; // 3
        4'b0100: seg_out[i] = 7'b0011001; // 4
        4'b0101: seg_out[i] = 7'b0010010; // 5
        4'b0110: seg_out[i] = 7'b0000010; // 6
        4'b0111: seg_out[i] = 7'b1111000; // 7
        4'b1000: seg_out[i] = 7'b0000000; // 8
        4'b1001: seg_out[i] = 7'b0010000; // 9
        4'b1010: seg_out[i] = 7'b0001000; // A
        4'b1011: seg_out[i] = 7'b0000011; // B
        4'b1100: seg_out[i] = 7'b1000110; // C
        4'b1101: seg_out[i] = 7'b0100001; // D
        4'b1110: seg_out[i] = 7'b0000110; // E
        4'b1111: seg_out[i] = 7'b0001110; // F
      endcase
    end
  end
endmodule
