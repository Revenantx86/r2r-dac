module spi #(
    parameter D_W = 8  // Data width
)(
    input wire clk,
    input wire rst_n,
    input wire serial_in,
    output reg [D_W-1:0] parallel_out,
    output reg ready
);

    reg [$clog2(D_W)-1:0] bit_count;
    reg [D_W-1:0] shift_reg;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            bit_count <= 0;
            shift_reg <= {D_W{1'b0}};
            parallel_out <= {D_W{1'b0}};
            ready <= 0;
        end else begin
            if (bit_count < D_W) begin
                shift_reg <= {shift_reg[D_W-2:0], serial_in};
                bit_count <= bit_count + 1;
                ready <= 0;
            end
            else if (bit_count == D_W) begin
                parallel_out <= shift_reg;
                ready <= 1;
                bit_count <= 0;
            end
        end
    end
endmodule
