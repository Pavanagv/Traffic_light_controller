`timescale 1ns/1ps

module tb_traffic_light;

reg clk;
reg reset;

wire red;
wire yellow;
wire green;

traffic_light uut(

    .clk(clk),
    .reset(reset),
    .red(red),
    .yellow(yellow),
    .green(green)
);

always #5 clk = ~clk;

initial
begin

    $dumpfile("dump.vcd");
    $dumpvars(0, tb_traffic_light);

    clk = 0;
    reset = 1;

    #10;
    reset = 0;

    #200;

    $finish;
end

initial
begin

    $monitor(
    "Time=%0t RED=%b YELLOW=%b GREEN=%b",
    $time,
    red,
    yellow,
    green
    );
end

endmodule