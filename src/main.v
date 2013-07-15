module blink(input wire clk, output reg led);

reg [31:0] cnt;

always @(posedge clk)
begin
    if (cnt != 32'd24999999)
        cnt <= cnt + 32'd1;
    else
        cnt <= 32'd0;
end

wire clign;

always @(posedge clk)
begin
    if (clign)
        led <= ~led;
end

assign clign = (cnt == 32'd42);

endmodule
