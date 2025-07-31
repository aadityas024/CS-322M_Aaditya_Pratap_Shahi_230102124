`timescale 1ns / 1ps
`include "onebit.v"

module tb_comparator_1bit;
    reg a, b;
    wire gt, eq, lt;

    comparator_1bit uut (
        .a(a),
        .b(b),
        .gt(gt),
        .eq(eq),
        .lt(lt)
    );
    
    initial begin
        $dumpfile("onebit_tb.vcd");
        $dumpvars(0, tb_comparator_1bit);
        a = 0; b = 0;
        #10;
     
        a = 0; b = 1; 
        #10;
     
        a = 1; b = 0; 
        #10;
     
        a = 1; b = 1; 
        #10;
        
        $finish;
    end
    
endmodule