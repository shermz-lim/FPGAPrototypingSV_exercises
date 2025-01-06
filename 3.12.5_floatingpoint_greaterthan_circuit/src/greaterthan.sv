
module greaterthan (
  input logic       sign1, sign2,
  input logic [3:0] exp1, exp2,
  input logic [7:0] frac1, frac2,
  output logic      gt
);
  always_comb begin
    unique case ({sign1, sign2})
      2'b00: gt = {exp1, frac1} > {exp2, frac2};
      2'b01: gt = 1'b1;
      2'b10: gt = 1'b0;
      2'b11: gt = {exp1, frac1} < {exp2, frac2};
      default: gt = 1'b0;
    endcase
  end
endmodule
