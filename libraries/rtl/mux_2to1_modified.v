// Reusable 2:1 Multiplexer
// Non-parameterized, purely combinational implementation using continuous assignment.

module mux_2to1_modified (
    input  wire in0,
    input  wire in1,
    input  wire sel,
    output wire out
);

    // Continuous assignment implementing the multiplexer logic
    assign out = sel ? in1 : in0;

endmodule
