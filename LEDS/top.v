module top (
    input wire gpio_20_clk,
    output wire led_green,
    output wire led_red,
    output wire led_blue
);
wire slow_clk;
clock_div #(.log_div(24)) slow (
    .clk(gpio_20_clk),
    .clk_out(slow_clk)
    );

leds led1 (
    .clk(slow_clk),
    .red(led_red),
    .green(led_green),
    .blue(led_blue)
    );

endmodule