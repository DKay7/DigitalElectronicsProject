`timescale 1 ns / 100 ps

module counter8bit(
    input clk, 
    input rst_on,
    output [7:0] led
    
);


reg [7:0] counter = 0;
reg [24:0] ctr = 0;

assign counter_max = (counter == 8'hFF);

assign led = counter;


always @(posedge clk) begin
    if (ctr != 10000000)
        ctr = ctr + 1;
    else
        ctr = 0;
end

always @(posedge clk) begin
    if (counter_max || ~rst_on)
        counter = 0;
    else if (ctr == 10000000)
        counter = counter + 1;
    
end

endmodule