module hex_to_seg(
    input clk,
    input [3:0] data,

    output [7:0] segments
);


reg [7:0] segments_reg;
assign segments = segments_reg;


always @(posedge clk) begin
    case (data) 
        4'b0000: segments_reg <= 8'b00111111;  //zero // dot, g, f, e, d, c, b, a
        4'b0001: segments_reg <= 8'b00000110;  //one
        4'b0010: segments_reg <= 8'b01011011;  //two
        4'b0011: segments_reg <= 8'b01001111;  //three
        4'b0100: segments_reg <= 8'b01100110;  //four
        4'b0101: segments_reg <= 8'b01101101;  //five
        4'b0110: segments_reg <= 8'b01111101;  //six
        4'b0111: segments_reg <= 8'b00000111;  //seven
        4'b1000: segments_reg <= 8'b01111111;  //eight
        4'b1001: segments_reg <= 8'b01100111;  //nine
        4'b1010: segments_reg <= 8'b01110111;  //A
        4'b1011: segments_reg <= 8'b01111100;  //b
        4'b1100: segments_reg <= 8'b00111001;  //C
        4'b1101: segments_reg <= 8'b01011110;  //d
        4'b1110: segments_reg <= 8'b01111001;  //E
        4'b1111: segments_reg <= 8'b01110001;  //F
            default: segments_reg <= 8'b00000000;
    endcase
end

endmodule