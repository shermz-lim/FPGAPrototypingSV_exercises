
module bindec_2to4 (
  input logic [1:0]  a,
  input logic        en,
  output logic [3:0] bcode
);
  assign bcode[0] = en & (~a[1] & ~a[0]);
  assign bcode[1] = en & (~a[1] & a[0]);
  assign bcode[2] = en & (a[1] & ~a[0]);
  assign bcode[3] = en & (a[1] & a[0]);
endmodule
