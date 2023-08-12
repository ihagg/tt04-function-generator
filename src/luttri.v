`default_nettype none
`timescale 1ps / 1ps

module luttri(addr,value);
  input [7:0] addr;
  output reg [7:0] value;
  always@(addr) begin
    case(addr)
      8'b00000000: value = 8'b10000000;
      8'b00000001: value = 8'b10000010;
      8'b00000010: value = 8'b10000100;
      8'b00000011: value = 8'b10000110;
      8'b00000100: value = 8'b10001000;
      8'b00000101: value = 8'b10001010;
      8'b00000110: value = 8'b10001100;
      8'b00000111: value = 8'b10001110;
      8'b00001000: value = 8'b10010000;
      8'b00001001: value = 8'b10010010;
      8'b00001010: value = 8'b10010100;
      8'b00001011: value = 8'b10010110;
      8'b00001100: value = 8'b10011000;
      8'b00001101: value = 8'b10011010;
      8'b00001110: value = 8'b10011100;
      8'b00001111: value = 8'b10011110;
      8'b00010000: value = 8'b10100000;
      8'b00010001: value = 8'b10100010;
      8'b00010010: value = 8'b10100100;
      8'b00010011: value = 8'b10100110;
      8'b00010100: value = 8'b10101000;
      8'b00010101: value = 8'b10101010;
      8'b00010110: value = 8'b10101100;
      8'b00010111: value = 8'b10101110;
      8'b00011000: value = 8'b10110000;
      8'b00011001: value = 8'b10110010;
      8'b00011010: value = 8'b10110100;
      8'b00011011: value = 8'b10110110;
      8'b00011100: value = 8'b10111000;
      8'b00011101: value = 8'b10111010;
      8'b00011110: value = 8'b10111100;
      8'b00011111: value = 8'b10111110;
      8'b00100000: value = 8'b11000000;
      8'b00100001: value = 8'b11000010;
      8'b00100010: value = 8'b11000100;
      8'b00100011: value = 8'b11000110;
      8'b00100100: value = 8'b11001000;
      8'b00100101: value = 8'b11001010;
      8'b00100110: value = 8'b11001100;
      8'b00100111: value = 8'b11001110;
      8'b00101000: value = 8'b11010000;
      8'b00101001: value = 8'b11010010;
      8'b00101010: value = 8'b11010100;
      8'b00101011: value = 8'b11010110;
      8'b00101100: value = 8'b11011000;
      8'b00101101: value = 8'b11011010;
      8'b00101110: value = 8'b11011100;
      8'b00101111: value = 8'b11011110;
      8'b00110000: value = 8'b11100000;
      8'b00110001: value = 8'b11100010;
      8'b00110010: value = 8'b11100100;
      8'b00110011: value = 8'b11100110;
      8'b00110100: value = 8'b11101000;
      8'b00110101: value = 8'b11101010;
      8'b00110110: value = 8'b11101100;
      8'b00110111: value = 8'b11101110;
      8'b00111000: value = 8'b11110000;
      8'b00111001: value = 8'b11110010;
      8'b00111010: value = 8'b11110100;
      8'b00111011: value = 8'b11110110;
      8'b00111100: value = 8'b11111000;
      8'b00111101: value = 8'b11111010;
      8'b00111110: value = 8'b11111100;
      8'b00111111: value = 8'b11111110;
      8'b01000000: value = 8'b11111111;
      8'b01000001: value = 8'b11111110;
      8'b01000010: value = 8'b11111100;
      8'b01000011: value = 8'b11111010;
      8'b01000100: value = 8'b11111000;
      8'b01000101: value = 8'b11110110;
      8'b01000110: value = 8'b11110100;
      8'b01000111: value = 8'b11110010;
      8'b01001000: value = 8'b11110000;
      8'b01001001: value = 8'b11101110;
      8'b01001010: value = 8'b11101100;
      8'b01001011: value = 8'b11101010;
      8'b01001100: value = 8'b11101000;
      8'b01001101: value = 8'b11100110;
      8'b01001110: value = 8'b11100100;
      8'b01001111: value = 8'b11100010;
      8'b01010000: value = 8'b11100000;
      8'b01010001: value = 8'b11011110;
      8'b01010010: value = 8'b11011100;
      8'b01010011: value = 8'b11011010;
      8'b01010100: value = 8'b11011000;
      8'b01010101: value = 8'b11010110;
      8'b01010110: value = 8'b11010100;
      8'b01010111: value = 8'b11010010;
      8'b01011000: value = 8'b11010000;
      8'b01011001: value = 8'b11001110;
      8'b01011010: value = 8'b11001100;
      8'b01011011: value = 8'b11001010;
      8'b01011100: value = 8'b11001000;
      8'b01011101: value = 8'b11000110;
      8'b01011110: value = 8'b11000100;
      8'b01011111: value = 8'b11000010;
      8'b01100000: value = 8'b11000000;
      8'b01100001: value = 8'b10111110;
      8'b01100010: value = 8'b10111100;
      8'b01100011: value = 8'b10111010;
      8'b01100100: value = 8'b10111000;
      8'b01100101: value = 8'b10110110;
      8'b01100110: value = 8'b10110100;
      8'b01100111: value = 8'b10110010;
      8'b01101000: value = 8'b10110000;
      8'b01101001: value = 8'b10101110;
      8'b01101010: value = 8'b10101100;
      8'b01101011: value = 8'b10101010;
      8'b01101100: value = 8'b10101000;
      8'b01101101: value = 8'b10100110;
      8'b01101110: value = 8'b10100100;
      8'b01101111: value = 8'b10100010;
      8'b01110000: value = 8'b10100000;
      8'b01110001: value = 8'b10011110;
      8'b01110010: value = 8'b10011100;
      8'b01110011: value = 8'b10011010;
      8'b01110100: value = 8'b10011000;
      8'b01110101: value = 8'b10010110;
      8'b01110110: value = 8'b10010100;
      8'b01110111: value = 8'b10010010;
      8'b01111000: value = 8'b10010000;
      8'b01111001: value = 8'b10001110;
      8'b01111010: value = 8'b10001100;
      8'b01111011: value = 8'b10001010;
      8'b01111100: value = 8'b10001000;
      8'b01111101: value = 8'b10000110;
      8'b01111110: value = 8'b10000100;
      8'b01111111: value = 8'b10000010;
      8'b10000000: value = 8'b10000000;
      8'b10000001: value = 8'b01111110;
      8'b10000010: value = 8'b01111100;
      8'b10000011: value = 8'b01111010;
      8'b10000100: value = 8'b01111000;
      8'b10000101: value = 8'b01110110;
      8'b10000110: value = 8'b01110100;
      8'b10000111: value = 8'b01110010;
      8'b10001000: value = 8'b01110000;
      8'b10001001: value = 8'b01101110;
      8'b10001010: value = 8'b01101100;
      8'b10001011: value = 8'b01101010;
      8'b10001100: value = 8'b01101000;
      8'b10001101: value = 8'b01100110;
      8'b10001110: value = 8'b01100100;
      8'b10001111: value = 8'b01100010;
      8'b10010000: value = 8'b01100000;
      8'b10010001: value = 8'b01011110;
      8'b10010010: value = 8'b01011100;
      8'b10010011: value = 8'b01011010;
      8'b10010100: value = 8'b01011000;
      8'b10010101: value = 8'b01010110;
      8'b10010110: value = 8'b01010100;
      8'b10010111: value = 8'b01010010;
      8'b10011000: value = 8'b01010000;
      8'b10011001: value = 8'b01001110;
      8'b10011010: value = 8'b01001100;
      8'b10011011: value = 8'b01001010;
      8'b10011100: value = 8'b01001000;
      8'b10011101: value = 8'b01000110;
      8'b10011110: value = 8'b01000100;
      8'b10011111: value = 8'b01000010;
      8'b10100000: value = 8'b01000000;
      8'b10100001: value = 8'b00111110;
      8'b10100010: value = 8'b00111100;
      8'b10100011: value = 8'b00111010;
      8'b10100100: value = 8'b00111000;
      8'b10100101: value = 8'b00110110;
      8'b10100110: value = 8'b00110100;
      8'b10100111: value = 8'b00110010;
      8'b10101000: value = 8'b00110000;
      8'b10101001: value = 8'b00101110;
      8'b10101010: value = 8'b00101100;
      8'b10101011: value = 8'b00101010;
      8'b10101100: value = 8'b00101000;
      8'b10101101: value = 8'b00100110;
      8'b10101110: value = 8'b00100100;
      8'b10101111: value = 8'b00100010;
      8'b10110000: value = 8'b00100000;
      8'b10110001: value = 8'b00011110;
      8'b10110010: value = 8'b00011100;
      8'b10110011: value = 8'b00011010;
      8'b10110100: value = 8'b00011000;
      8'b10110101: value = 8'b00010110;
      8'b10110110: value = 8'b00010100;
      8'b10110111: value = 8'b00010010;
      8'b10111000: value = 8'b00010000;
      8'b10111001: value = 8'b00001110;
      8'b10111010: value = 8'b00001100;
      8'b10111011: value = 8'b00001010;
      8'b10111100: value = 8'b00001000;
      8'b10111101: value = 8'b00000110;
      8'b10111110: value = 8'b00000100;
      8'b10111111: value = 8'b00000010;
      8'b11000000: value = 8'b00000000;
      8'b11000001: value = 8'b00000010;
      8'b11000010: value = 8'b00000100;
      8'b11000011: value = 8'b00000110;
      8'b11000100: value = 8'b00001000;
      8'b11000101: value = 8'b00001010;
      8'b11000110: value = 8'b00001100;
      8'b11000111: value = 8'b00001110;
      8'b11001000: value = 8'b00010000;
      8'b11001001: value = 8'b00010010;
      8'b11001010: value = 8'b00010100;
      8'b11001011: value = 8'b00010110;
      8'b11001100: value = 8'b00011000;
      8'b11001101: value = 8'b00011010;
      8'b11001110: value = 8'b00011100;
      8'b11001111: value = 8'b00011110;
      8'b11010000: value = 8'b00100000;
      8'b11010001: value = 8'b00100010;
      8'b11010010: value = 8'b00100100;
      8'b11010011: value = 8'b00100110;
      8'b11010100: value = 8'b00101000;
      8'b11010101: value = 8'b00101010;
      8'b11010110: value = 8'b00101100;
      8'b11010111: value = 8'b00101110;
      8'b11011000: value = 8'b00110000;
      8'b11011001: value = 8'b00110010;
      8'b11011010: value = 8'b00110100;
      8'b11011011: value = 8'b00110110;
      8'b11011100: value = 8'b00111000;
      8'b11011101: value = 8'b00111010;
      8'b11011110: value = 8'b00111100;
      8'b11011111: value = 8'b00111110;
      8'b11100000: value = 8'b01000000;
      8'b11100001: value = 8'b01000010;
      8'b11100010: value = 8'b01000100;
      8'b11100011: value = 8'b01000110;
      8'b11100100: value = 8'b01001000;
      8'b11100101: value = 8'b01001010;
      8'b11100110: value = 8'b01001100;
      8'b11100111: value = 8'b01001110;
      8'b11101000: value = 8'b01010000;
      8'b11101001: value = 8'b01010010;
      8'b11101010: value = 8'b01010100;
      8'b11101011: value = 8'b01010110;
      8'b11101100: value = 8'b01011000;
      8'b11101101: value = 8'b01011010;
      8'b11101110: value = 8'b01011100;
      8'b11101111: value = 8'b01011110;
      8'b11110000: value = 8'b01100000;
      8'b11110001: value = 8'b01100010;
      8'b11110010: value = 8'b01100100;
      8'b11110011: value = 8'b01100110;
      8'b11110100: value = 8'b01101000;
      8'b11110101: value = 8'b01101010;
      8'b11110110: value = 8'b01101100;
      8'b11110111: value = 8'b01101110;
      8'b11111000: value = 8'b01110000;
      8'b11111001: value = 8'b01110010;
      8'b11111010: value = 8'b01110100;
      8'b11111011: value = 8'b01110110;
      8'b11111100: value = 8'b01111000;
      8'b11111101: value = 8'b01111010;
      8'b11111110: value = 8'b01111100;
      8'b11111111: value = 8'b01111110;
    endcase
  end
endmodule
