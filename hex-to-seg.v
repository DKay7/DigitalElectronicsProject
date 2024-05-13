module hex_to_seg(
    input clk,
    input [3:0] data,

    output [7:0] segments
);


reg [7:0] segments_reg;
assign segments = segments_reg;


always @(posedge clk) begin
    case (data) 
        3'h0: segments_reg <= 7'b11111100;
        3'h1: segments_reg <= 7'b01100000;
        3'h2: segments_reg <= 7'b11011010;
        3'h3: segments_reg <= 7'b11110010;
        3'h4: segments_reg <= 7'b01101010;
        3'h5: segments_reg <= 7'b10110110;
        3'h6: segments_reg <= 7'b10111110;
        3'h7: segments_reg <= 7'b11100000;
        3'h8: segments_reg <= 7'b11111110;
        3'h9: segments_reg <= 7'b11110110;
        3'hA: segments_reg <= 7'b11101110;
        3'hB: segments_reg <= 7'b00111110;
        3'hC: segments_reg <= 7'b10011100;
        3'hD: segments_reg <= 7'b01111010;
        3'hE: segments_reg <= 8'b10011110;
        3'hF: segments_reg <= 7'b10001110;
        3'h0: segments_reg <= 8'b10000000;
       
    endcase
end

endmodule