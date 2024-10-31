module counter #(
    parameter WIDTH = 8
)(
    input logic              clk,    
    input logic              rst,    
    input logic              en,     
    input logic [WIDTH-1:0]  incr,    // Added 'incr' input to specify the increment value
    output logic [WIDTH-1:0] count 
);

    always_ff @ (posedge clk or posedge rst) begin
        if (rst) begin
            count <= {WIDTH{1'b0}};   // Reset counter to 0
        end else if (en) begin
            count <= count + incr;    // Increment by the 'incr' value when enabled
        end
    end
endmodule
