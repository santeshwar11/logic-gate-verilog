`timescale 1ns / 1ps

module tb_logic_gates;

    // Inputs
    reg a;
    reg b;

    // Outputs
    wire and_gate;
    wire or_gate;
    wire not_gate_a;
    wire nand_gate;
    wire nor_gate;
    wire xor_gate;
    wire xnor_gate;

    // Instantiate the Unit Under Test (UUT)
    logic_gates uut (
        .a(a),
        .b(b),
        .and_gate(and_gate),
        .or_gate(or_gate),
        .not_gate_a(not_gate_a),
        .nand_gate(nand_gate),
        .nor_gate(nor_gate),
        .xor_gate(xor_gate),
        .xnor_gate(xnor_gate)
    );

    initial begin
        // Enable waveform dumping for tools like GTKWave or ModelSim
        $dumpfile("logic_gates.vcd");
        $dumpvars(0, tb_logic_gates);

        // Display table header
        $display("Time\t a b | AND OR NOT(a) NAND NOR XOR XNOR");
        $display("----------------------------------------");

        // Test Case 1: a = 0, b = 0
        a = 0; b = 0; #10;
        $display("%0t\t %b %b |  %b   %b    %b     %b    %b    %b    %b", 
                 $time, a, b, and_gate, or_gate, not_gate_a, nand_gate, nor_gate, xor_gate, xnor_gate);

        // Test Case 2: a = 0, b = 1
        a = 0; b = 1; #10;
        $display("%0t\t %b %b |  %b   %b    %b     %b    %b    %b    %b", 
                 $time, a, b, and_gate, or_gate, not_gate_a, nand_gate, nor_gate, xor_gate, xnor_gate);

        // Test Case 3: a = 1, b = 0
        a = 1; b = 0; #10;
        $display("%0t\t %b %b |  %b   %b    %b     %b    %b    %b    %b", 
                 $time, a, b, and_gate, or_gate, not_gate_a, nand_gate, nor_gate, xor_gate, xnor_gate);

        // Test Case 4: a = 1, b = 1
        a = 1; b = 1; #10;
        $display("%0t\t %b %b |  %b   %b    %b     %b    %b    %b    %b", 
                 $time, a, b, and_gate, or_gate, not_gate_a, nand_gate, nor_gate, xor_gate, xnor_gate);

        $finish;
    end

endmodule