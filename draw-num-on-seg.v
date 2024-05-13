module draw_num_on_seg(
    input clk,
    input [7:0] data,

    output [3:0] digit,
    output [7:0] segments
);

wire clk_div;
clock_div #(11) clock_divider(.clk(clk), .clk_div(clk_div));

reg [3:0] bits_to_draw;
reg i = 0;
reg [1:0] digit_reg;

assign digit = digit_reg;

always @(posedge clk_div) begin
    digit_reg[i] = 0;
    i = i + 1'b1;
    digit_reg[i] = 1;
    
    if (i == 0)
        bits_to_draw = data[3:0];
    else
        bits_to_draw = data[7:4];

    
end

// TODO clock divider

hex_to_seg hex_to_seg(.clk(clk), .data(bits_to_draw), .segments(segments));

endmodule