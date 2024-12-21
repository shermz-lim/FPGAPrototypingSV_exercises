
module testcircuit_barrelshifter (
  input logic [10:0] sw,
  output logic [7:0] led
);
  barrelshifter #(3) uut (
    .a  (sw[7:0]),
    .amt(sw[10:8]),
    .y  (led)
  );
endmodule
