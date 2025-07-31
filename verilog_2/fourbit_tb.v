`timescale 1ns / 1ns
`include "fourbit.v"

module tb_eq_comp_4bit;
    reg  [3:0] in_a, in_b;
    wire is_equal;

    eq_comp_4bit dut (
        .data_a(in_a),
        .data_b(in_b),
        .match(is_equal)
    );

    initial begin
        $dumpfile("eq_comp_4bit.vcd");
        $dumpvars(0, tb_eq_comp_4bit);

        in_a = 4'h0; in_b = 4'h0; #10;
        in_a = 4'hA; in_b = 4'hA; #10;
        in_a = 4'hF; in_b = 4'hF; #10;
        in_a = 4'h0; in_b = 4'h1; #10;

        $finish;
    end
endmodule