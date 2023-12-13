module widthtrunc_fail (
    input clk,
    rst,
    A,
    input [1:0] B,
    output reg C
);

  always @(posedge clk)
    if (rst) C = 0;
    else begin
      C = (A && B) ? 1'b1 : 1'b0;
    end
endmodule
