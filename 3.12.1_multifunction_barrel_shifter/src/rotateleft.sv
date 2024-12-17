
module rotateleft (
  input logic [7:0]  a,
  input logic [2:0]  amt,
  output logic [7:0] y
);
  logic [7:0] s0, s1;

  assign s0 = amt[0] ? {a[6:0], a[7]} : a;
  assign s1 = amt[1] ? {s0[5:0], s0[7:6]} : s0;
  assign y = amt[2] ? {s1[3:0], s1[7:4]} : s1;
endmodule
