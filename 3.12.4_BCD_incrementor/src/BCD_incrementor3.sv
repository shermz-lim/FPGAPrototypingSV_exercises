
module BCD_incrementor3 (
  input logic [11:0]  bcd,
  output logic [11:0] bcd_out
);
  logic [3:0] bcd_out1;
  logic       carry1;
  BCD_incrementor1 increment1 (
    .bcd    (bcd[3:0]),
    .en     (1'b1),
    .bcd_out(bcd_out1),
    .carry  (carry1)
  );

  logic [3:0] bcd_out2;
  logic       carry2;
  BCD_incrementor1 increment2 (
    .bcd    (bcd[7:4]),
    .en     (carry1),
    .bcd_out(bcd_out2),
    .carry  (carry2)
  );

  logic [3:0] bcd_out3;
  BCD_incrementor1 increment3 (
    .bcd    (bcd[11:8]),
    .en     (carry2),
    .bcd_out(bcd_out3),
    .carry  ()
  );

  assign bcd_out = {bcd_out3, bcd_out2, bcd_out1};
endmodule
