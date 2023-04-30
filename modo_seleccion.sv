`timescale 1ns / 1ps

module modo_seleccion 
    (input  logic                   clk,      // Clock
     input  logic                   rst,      // Reset
     input  logic  [15:0]           switches, // 16 Conmutadores
     output logic  [6:0]            siete_segmentos);// 7 segmentos de salida
    
    always_ff @(posedge clk, posedge rst)
    begin
        if (rst) begin
            siete_segmentos <= 0;
        end
        else begin
            case (switches[15:14])
                2'b00: siete_segmentos <= switches[13:0]; // Modo 00
                2'b01: siete_segmentos <= {switches[13:8], switches[5:0]}; // Modo 01
                2'b10: siete_segmentos <= switches[13:0]; // Mod 10
                2'b11: siete_segmentos <= ~switches[13:0] + 1; // Modo 11
                default: siete_segmentos <= 0; // Modo por defecto (sin operacion)
            endcase
        end
    end
endmodule