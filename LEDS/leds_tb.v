
`define DUMPSTR(x) `"x.vcd`"
`timescale 100 ns / 10 ns

module leds_tb();

parameter DURATION = 10;

reg clk = 0;
always #1 clk = ~clk;

wire r, g, b;

//-- Instantiate the unit to test
leds UUT (
           .clk(clk),
           .red(r),
           .green(g),
           .blue(b)
         );


initial begin

  //-- File were to store the simulation results
  $dumpfile(`DUMPSTR(`VCD_OUTPUT));
  $dumpvars(0, leds_tb);

   #(DURATION) $display("End of simulation");
  $finish;
end

endmodule
