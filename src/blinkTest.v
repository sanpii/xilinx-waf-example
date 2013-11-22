`timescale 1ns / 1ps

module blinkTest;
    reg clk;
    wire led;

    blink uut (
        .clk(clk),
        .led(led)
    );

    initial begin
        clk = 0;

        #100 $stop;
    end

    always begin
        #10 clk = !clk;
    end
endmodule
