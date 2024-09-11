module b2t #(parameter bin_width = 3, parameter therm_width = 8)
(
    input wire  [bin_width-1:0] binary_in,
    output reg  [therm_width-1:0] thermometer_out
);
    //
    always @(*) begin
        //
        integer i;
        //
        thermometer_out <= {therm_width{1'b0}};
        //
        for (i=0; i<therm_width; i = i + 1) begin
            if(i <= binary_in)
                thermometer_out[i] = 1'b1;
            else
                thermometer_out[i] = 1'b0;
        end
    end
endmodule