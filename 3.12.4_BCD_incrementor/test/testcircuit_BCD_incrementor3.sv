
module testcircuit_BCD_incrementor3 (
  input logic [11:0]  sw,
  output logic [11:0] led
);
  BCD_incrementor3 uut(
    .bcd    (sw),
    .bcd_out(led)
  );
endmodule
