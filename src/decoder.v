module decoder #
(
    parameter D_W = 8
)
(
    input wire clk,
    input wire rst_n,
    input wire serial_in,
    output reg [D_W-1:0] thermometer_out
);
//
reg [$clog2(D_W)-1:0]  binary_reg;
reg ready_out;
//
// Serial to Parallel conversion
spi #(.D_W($clog2(D_W)))
    spi_inst(
        .clk(clk),
        .rst_n(rst_n),
        .serial_in(serial_in),
        .parallel_out(binary_reg),
        .ready(ready_out)
    );
//
// Binnary to thermometer code conversion
b2t #(.bin_width($clog2(D_W)), .therm_width(D_W))
    b2t_inst(
        .binary_in(binary_reg),
        .thermometer_out(thermometer_out)
            );
endmodule