`timescale 1ns/1ps

module tb_mux_2to1;

    parameter WIDTH = 8;

    reg  [WIDTH-1:0] tb_in0;
    reg  [WIDTH-1:0] tb_in1;
    reg              tb_sel;
    wire [WIDTH-1:0] tb_out;

    // Instantiate design under test (DUT)
    mux_2to1 #(
        .WIDTH(WIDTH)
    ) dut (
        .in0(tb_in0),
        .in1(tb_in1),
        .sel(tb_sel),
        .out(tb_out)
    );

    // Expected value helper
    reg [WIDTH-1:0] expected_out;
    integer i, j, k;
    integer error_count;

    initial begin
        // Waveform setup
        $dumpfile("../wave/mux_2to1.vcd");
        $dumpvars(0, tb_mux_2to1);

        error_count = 0;
        
        // Initialize inputs
        tb_in0 = 0;
        tb_in1 = 0;
        tb_sel = 0;
        
        #10;

        // Exhaustive test for select and typical values
        for (i = 0; i < 4; i = i + 1) begin
            for (j = 0; j < 4; j = j + 1) begin
                for (k = 0; k < 2; k = k + 1) begin
                    tb_in0 = i * 8'h55; // Generate varying patterns (0x00, 0x55, 0xAA, 0xFF)
                    tb_in1 = j * 8'h33; // Generate varying patterns (0x00, 0x33, 0x66, 0x99)
                    tb_sel = k;
                    
                    #10;
                    
                    // Compute expected output
                    expected_out = tb_sel ? tb_in1 : tb_in0;
                    
                    // Check output
                    if (tb_out !== expected_out) begin
                        $display("[ERROR] at time %0t: sel=%b, in0=0x%h, in1=0x%h | Expected out=0x%h, Got out=0x%h", 
                                 $time, tb_sel, tb_in0, tb_in1, expected_out, tb_out);
                        error_count = error_count + 1;
                    end
                end
            end
        end

        #10;
        if (error_count == 0) begin
            $display("[SUCCESS] All tests passed! VCD generated successfully.");
        end else begin
            $display("[FAILURE] %d mismatches found during simulation.", error_count);
        end

        $finish;
    end

endmodule
