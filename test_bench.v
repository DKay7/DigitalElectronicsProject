`timescale 1 ns / 100 ps

module testbench();

reg clk = 1'b0;

always begin
    #1 clk = ~clk;
end;

wire counter_output;

counter8bit counter(.clk(clk), .led(counter_output));

initial begin
    $dumpvars;      
    $display("Test started...");
    #512000 $finish;   
end

endmodule