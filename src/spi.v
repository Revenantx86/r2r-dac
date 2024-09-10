
module spi #( parameter D_W = 8) ( 
    input wire  clk,
    input wire  rst_n,
    input wire  serial_in,
    output reg  parallel_out [D_W-1:0],
    output reg  ready
);

reg [$clog2(D_W-1):0] bit_count;
reg [D_W-1:0] shift_reg;

always @(posedge clk) begin
    //
    // Initial 
    if(!rst_n) begin
        bit_count <= 0;
        shift_reg <= {DATA_WIDTH{1'b0}};
        shift_reg <= {parallel_out{1'b0}};
        ready <= 0;
    end
    //
    else begin
        //
        // Shifting bits
        if(bit_count < D_W) begin
            shift_reg <= {shift_reg[D_W-2:0],serial_in};
            bit_count <= bit_count + 1;
            ready<= 0;
        end
        //
        // Shifting Complete
        else if (bit_count == DATA_WIDTH) begin
            parallel_out <= shift_reg;
            ready <= 1;
            bit_count <=0;
        end
    end
end
endmodule
