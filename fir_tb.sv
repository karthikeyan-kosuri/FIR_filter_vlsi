`timescale 1ns/1ps

module fir_tb;

reg clk;
reg signed [7:0] x;

wire signed [15:0] y;

fir_filter uut(
    .clk(clk),
    .x(x),
    .y(y)
);

initial
begin

    $dumpfile("fir.vcd");
    $dumpvars(0,fir_tb);

    clk = 0;
    x = 0;

    #10 x = 10;
    #10 x = 20;
    #10 x = 30;
    #10 x = 40;
    #10 x = 50;
    #10 x = 60;
    #10 x = 70;
    #10 x = 80;

    #100;

    $finish;

end

always #5 clk = ~clk;

endmodule