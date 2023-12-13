module case_overlap_pass (
    SEL,
    OUT0
);
  input [1:0] SEL;
  output OUT0;
  reg OUT0, y;
  always @(SEL) begin
    case (SEL)  
      2'b10: y = 1'b0;
      2'b01: y = 1'b1;
      2'b11: y = 1'b0;
      2'b00: y = 1'b1;  // changed 2'b11 to 2'b00
      default: y = 1'b0;
    endcase
  end
endmodule : case_overlap_pass
