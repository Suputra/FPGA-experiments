
module leds(
    input wire clk,
    output wire red,
    output wire blue,
    output wire green
);

reg [1:0] counter = 2'b00;
// bitwise implementation
assign red = counter[0] ^ counter[1];
assign green = ~counter[0];
assign blue = ~counter[1];
always @(posedge clk) begin 
    // case implementation
    // case (counter)
    //     2'b00 : begin
    //         assign led_red = 1'b0;
    //         assign led_green = 1'b1;
    //         assign led_blue = 1'b1;
    //     end
    //     2'b01 : begin
    //         assign led_red = 1'b1;
    //         assign led_green = 1'b0;
    //         assign led_blue = 1'b1;
    //     end
    //     2'b10 : begin
    //         assign led_red = 1'b1;
    //         assign led_green = 1'b1;
    //         assign led_blue = 1'b0;
    //     end
    //     2'b11 : begin
    //         assign led_red = 1'b0;
    //         assign led_green = 1'b0;
    //         assign led_blue = 1'b0;
    //     end
    // endcase
    counter <= counter + 1;
end
endmodule