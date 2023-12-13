module multidriven_pass (
    clk,
    rst1,
    rst2,
    d,
    q1,
    q2
);
  input clk, rst1, rst2;
  input d;
  output q1, q2;
  reg q1, q2;
  always @(posedge clk or negedge rst1) begin
    if (~rst1) q1 <= 1'b0;
    else q1 <= d;
  end

  always @(posedge clk or negedge rst2)
    //redundant asynchronous signal "rst2", warning
    q2 <= d;
endmodule
