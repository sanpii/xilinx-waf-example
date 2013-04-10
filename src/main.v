module blink(clk, led);

input clk;
output led;

reg led = 0;
reg [25:0] counter = 0;

always @(posedge clk) begin
    if (counter == 0) begin
        counter <= 50_000_000;
        led <= !led;
    end
    else begin
        counter <= counter - 1;
    end
end

endmodule
