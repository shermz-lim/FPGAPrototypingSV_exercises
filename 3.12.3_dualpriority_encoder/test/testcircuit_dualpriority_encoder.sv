
module testcircuit_dualpriority_encoder (
  input logic [11:0] sw,
  output logic [7:0] led
);
  dualpriority_encoder uut(
    .req   (sw),
    .first (led[7:4]),
    .second(led[3:0])
  );
endmodule
