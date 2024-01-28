module clock_div #(parameter log_div = 10) (
    input wire clk,
    output wire clk_out
    );
    reg [log_div - 1 : 0] counter;
    assign clk_out = counter[log_div-1];
    always @ (posedge clk) begin
        counter <= counter + 1;
    end

endmodule