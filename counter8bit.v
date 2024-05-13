`timescale 1 ns / 100 ps

module counter8bit(
    input clk, 
    input rst_on,

    output [7:0] led,
    output [3:0] digit,
    output [7:0] seg
);

wire clk_div;
clock_div clock_divider(.clk(clk), .clk_div(clk_div));

reg [7:0] counter = 0;
reg [24:0] ctr = 0;

assign led = counter;

always @(posedge clk_div) begin
    if (~rst_on)
        counter = 0;
    else
        counter = counter + 1;

end

draw_num_on_seg drawer(.clk(clk), .data(counter), .digit(digit), .segments(seg));

endmodule