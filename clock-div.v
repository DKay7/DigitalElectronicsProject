module clock_div(
    input clk,
    output clk_div
);

reg [22:0] cnt = 0;

assign clk_div = cnt[22];

always @(posedge clk) begin
    cnt <= cnt + 22'b1;
end

endmodule
