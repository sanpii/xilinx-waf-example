`timescale 1ns / 1ps

module blinkTest;

    // Inputs
    reg clk;

    // Outputs
    wire led;

    // Instantiate the Unit Under Test (UUT)
    blink uut (
        .clk(clk),
        .led(led)
    );

    initial begin
        // Initialize Inputs
        clk = 0;

        // Wait 100 ns for global reset to finish
        #100;

        // Add stimulus here
    end

    // clock signal
    always begin
        #10 clk = !clk;
    end

endmodule
