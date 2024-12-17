
module greaterthan2 (
  input logic [1:0] a,
  input logic [1:0] b,
  output logic      agtb
);
  logic p0, p1, p2, p3, p4, p5;

  assign p0 = ~a[1] & a[0] & ~b[1] & ~b[0];
  assign p1 = a[1] & ~a[0] & ~b[1] & ~b[0];
  assign p2 = a[1] & ~a[0] & ~b[1] & b[0];
  assign p3 = a[1] & a[0] & ~b[1] & ~b[0];
  assign p4 = a[1] & a[0] & ~b[1] & b[0];
  assign p5 = a[1] & a[0] & b[1] & ~b[0];
  assign agtb = p0 | p1 | p2 | p3 | p4 | p5;
endmodule
