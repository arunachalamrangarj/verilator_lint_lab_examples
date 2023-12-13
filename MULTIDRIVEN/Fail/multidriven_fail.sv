module multidriven_fail (
    clk,
    rst1,
    rst2,
    set1,
    d,
    q
);
  input clk, rst1, rst2, set1;
  input d;
  output q;
  reg q;
  always @(posedge clk or negedge rst1 or posedge set1)
    //redundant asynchronous signal "set1", warning
    if (~rst1)
      q <= 1'b0;
    else q <= d;

  always @(posedge clk or negedge rst2)
    //redundant asynchronous signal "rst2", warning
    q <= d;
endmodule
