`timescale 1ns/1ps

module tb_mux_2to1_modified;

    // Testbench signals
    reg  tb_in0;
    reg  tb_in1;
    reg  tb_sel;
    wire tb_out;

    // Instantiate design under test (DUT)
    mux_2to1_modified dut (
        .in0(tb_in0),
        .in1(tb_in1),
        .sel(tb_sel),
        .out(tb_out)
    );

    // Expected value helper
    reg expected_out;
    integer i;
    integer error_count;

    initial begin
        // Waveform setup
        $dumpfile("../wave/mux_2to1_modified.vcd");
        $dumpvars(0, tb_mux_2to1_modified);

        error_count = 0;
        
        // Initialize inputs
        tb_in0 = 0;
        tb_in1 = 0;
        tb_sel = 0;
        
        #10;

        // Exhaustive test for all 8 possible input combinations (2^3 = 8)
        for (i = 0; i < 8; i = i + 1) begin
            // Deconstruct iteration variable into inputs
            tb_in0 = i[0];
            tb_in1 = i[1];
            tb_sel = i[2];
            
            #10;
            
            // Compute expected output
            expected_out = tb_sel ? tb_in1 : tb_in0;
            
            // Check output
            if (tb_out !== expected_out) begin
                $display("[ERROR] at time %0t: sel=%b, in0=%b, in1=%b | Expected out=%b, Got out=%b", 
                         $time, tb_sel, tb_in0, tb_in1, expected_out, tb_out);
                error_count = error_count + 1;
            end else begin
                $display("[INFO] at time %0t: sel=%b, in0=%b, in1=%b | Expected out=%b, Got out=%b (PASS)", 
                         $time, tb_sel, tb_in0, tb_in1, expected_out, tb_out);
            end
        end

        #10;
        if (error_count == 0) begin
            $display("[SUCCESS] All 8 test cases passed! VCD generated successfully.");
        end else begin
            $display("[FAILURE] %d mismatches found during simulation.", error_count);
        end

        $finish;
    end

endmodule
