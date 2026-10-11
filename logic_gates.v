module logic_gates (
    input wire a,
    input wire b,
    output wire and_gate,
    output wire or_gate,
    output wire not_gate_a,
    output wire nand_gate,
    output wire nor_gate,
    output wire xor_gate,
    output wire xnor_gate
);
    // Continuous assignments for all basic logic gates
    assign and_gate   = a & b;
    assign or_gate    = a | b;
    assign not_gate_a = ~a;
    assign nand_gate  = ~(a & b);
    assign nor_gate   = ~(a | b);
    assign xor_gate   = a ^ b;
    assign xnor_gate  = ~(a ^ b);

endmodule