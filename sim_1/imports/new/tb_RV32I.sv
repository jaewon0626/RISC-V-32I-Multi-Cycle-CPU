`timescale 1ns / 1ps

module tb_RV32I();

    logic clk;
    logic reset;

    always #5 clk = ~clk;

    initial begin
        #0 clk = 0; reset = 1;
        #10 reset = 0;
        #5000;
        // $finish;
    end

    MCU dut(
        .clk(clk),
        .reset(reset)
    );

endmodule
