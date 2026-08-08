`timescale 1ns/1ps

module jk_flipflop_tb;

reg clk;
reg reset;
reg J;
reg K;

wire Q;

jk_flipflop uut (
    .clk(clk),
    .reset(reset),
    .J(J),
    .K(K),
    .Q(Q)
);

always #5 clk = ~clk;

initial begin

    clk = 0;
    reset = 1;
    J = 0;
    K = 0;

    #10 reset = 0;

    // No Change
    J = 0; K = 0;
    #10;

    // Set
    J = 1; K = 0;
    #10;

    // Reset
    J = 0; K = 1;
    #10;

    // Toggle
    J = 1; K = 1;
    #10;

    // Toggle Again
    J = 1; K = 1;
    #10;

    $finish;
end

initial begin
    $monitor("Time=%0t Reset=%b J=%b K=%b Q=%b",
              $time, reset, J, K, Q);
end

endmodule