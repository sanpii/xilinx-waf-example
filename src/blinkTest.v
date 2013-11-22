`timescale 1ns / 1ps

module blinkTest;
    reg clk;
    wire led;

    blink uut (
        .clk(clk),
        .led(led)
    );

    initial begin
        $dumpfile("blink_bench.vcd");
        $dumpvars(0, clk);
        $dumpvars(0, led);

        clk = 0;

        #100 $stop;
    end

    always begin
        #10 clk = !clk;
    end
endmodule
