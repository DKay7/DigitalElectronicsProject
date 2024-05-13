module draw_num_on_seg(
    input clk,
    input [8:0] data,

    output [3:0] digit,
    output [7:0] segments
);

wire lower_4_bits; 
assign lower_4_bits = data & 8'b00001111;

wire higher_4_bits; 
assign higher_4_bits = data & 8'hb11110000;

reg [4:0] bits_to_draw;
reg i = 0;

always @(posedge clk) begin
    i = i + 1'b1;
    digit[i] = 1;
    
    if (i == 0)
        bits_to_draw <= lower_4_bits;
    else
        bits_to_draw <= higher_4_bits;

    
end

hex_to_seg hex_to_seg(.data(bits_to_draw), .segments(segments));

endmodule