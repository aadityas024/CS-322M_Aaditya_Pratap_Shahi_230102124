module eq_comp_4bit (
    input  [3:0] data_a,
    input  [3:0] data_b,
    output match
);
    assign match = ~|(data_a ^ data_b);
endmodule