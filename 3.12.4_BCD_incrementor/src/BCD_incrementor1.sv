
module BCD_incrementor1 (
  input logic [3:0]  bcd,
  input logic        en,
  output logic [3:0] bcd_out,
  output logic       carry
);
  always_comb begin
    if (en) begin
      if (bcd >= 4'b1001) begin
        bcd_out = 4'b0000;
        carry = 1'b1;
      end else begin
        bcd_out = bcd + 4'b0001;
        carry = 1'b0;
      end
    end else begin
      bcd_out = bcd;
      carry = 1'b0;
    end
  end
endmodule
