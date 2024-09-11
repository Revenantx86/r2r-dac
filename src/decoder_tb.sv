`timescale 1ns/1ps

module decoder_tb;

    // Testbench parameters
    parameter D_W = 8;

    // Testbench signals
    reg clk;
    reg rst_n;
    reg serial_in;
    wire [D_W-1:0] thermometer_out;

    // Instantiate the decoder module
    decoder #(.D_W(D_W)) uut (
        .clk(clk),
        .rst_n(rst_n),
        .serial_in(serial_in),
        .thermometer_out(thermometer_out)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // 10ns clock period
    end

    // Stimulus block
    initial begin
        // Initialize signals
        rst_n = 0;
        serial_in = 0;
        // Apply reset
        #10 rst_n = 1;
        serial_in = 1;
        #10 serial_in = 0;
        #10 serial_in = 1;
        #10 serial_in = 0;



        // Wait for some time to observe thermometer output
        #100;

        // Check thermometer output
        $display("Thermometer output: %b", thermometer_out);

        // End simulation
        $stop;
    end

    // Detailed Monitoring to Observe Ticks
    initial begin
        // Initialize VCD dump
        $dumpfile("runs/iverilog/decoder.vcd");
        $dumpvars(0, decoder_tb);
    end

endmodule
