module clock_div #(
    parameter MAX = 1
) (
    input clk,
    output clk_div
);

reg [MAX:0] cnt = 0;

assign clk_div = cnt[MAX];

always @(posedge clk) begin
    cnt <= cnt + 'b1;
end

endmodule
