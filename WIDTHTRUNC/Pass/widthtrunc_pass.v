module coding_width_uneq_oprnd4 (
    input clk,
    rst,
    A,
    input B, // Removed index [1:0]
    output reg C
);

  always @(posedge clk)
    if (rst) C = 0;
    else begin
      C = (A && B) ? 1'b1 : 1'b0;
    end
endmodule
