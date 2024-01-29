module top (
    input wire gpio_37_RETCLK,
    output wire led_green,
    output wire led_red,
    output wire led_blue
);
wire slow_clk;
clock_div #(.log_div(24)) slow (
    .clk(gpio_37_RETCLK),
    .clk_out(slow_clk)
    );

leds led1 (
    .clk(slow_clk),
    .red(led_red),
    .green(led_green),
    .blue(led_blue)
    );

endmodule