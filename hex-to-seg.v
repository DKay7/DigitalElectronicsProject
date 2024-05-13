module hex_to_seg(
    input [3:0] data,

    output reg [7:0] segments
);
// 3'h0: segments = 7'b11111100;
// 3'h1: segments = 7'b01100000;
// 3'h2: segments = 7'b11011010;
// 3'h3: segments = 7'b11110010;
// 3'h4: segments = 7'b01101010;
// 3'h5: segments = 7'b10110110;
// 3'h6: segments = 7'b10111110;
// 3'h7: segments = 7'b11100000;
// 3'h8: segments = 7'b11111110;
// 3'h9: segments = 7'b11110110;
// 3'hA: segments = 7'b11101110;
// 3'hB: segments = 7'b00111110;
// 3'hC: segments = 7'b10011100;
// 3'hD: segments = 7'b01111010;
// 3'hE: segments = 8'b10011110;
// 3'hF: segments = 7'b10001110;
always @(*) begin
    case (data) 
        3'h0: segments <= 8'b10000000;
        3'h1: segments <= 8'b01000000;
        3'h2: segments <= 8'b00100000;
        3'h3: segments <= 8'b00010000;
        3'h4: segments <= 8'b00001000;
        3'h5: segments <= 8'b00000100;
        3'h6: segments <= 8'b00000010;
        3'h7: segments <= 8'b00000001;
        3'h8: segments <= 8'b11000000;
        3'h9: segments <= 8'b01100000;
        3'hA: segments <= 8'b00110000;
        3'hB: segments <= 8'b00011000;
        3'hC: segments <= 8'b00001100;
        3'hD: segments <= 8'b00000110;
        3'hE: segments <= 8'b00000011;
        3'hF: segments <= 8'b11111111;
    endcase
end

endmodule