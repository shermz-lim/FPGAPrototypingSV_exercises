
module bindec_4to16 (
  input logic [3:0]   a,
  input logic         en,
  output logic [15:0] bcode
);
  logic [3:0] bcode0, bcode1, bcode2, bcode3;

  bindec_2to4 msb0_bcode (
    .a    (a[1:0]),
    .en   (en & ~a[3] & ~a[2]),
    .bcode(bcode0)
  );
  bindec_2to4 msb1_bcode (
    .a    (a[1:0]),
    .en   (en & ~a[3] & a[2]),
    .bcode(bcode1)
  );
  bindec_2to4 msb2_bcode (
    .a    (a[1:0]),
    .en   (en & a[3] & ~a[2]),
    .bcode(bcode2)
  );
  bindec_2to4 msb3_bcode (
    .a    (a[1:0]),
    .en   (en & a[3] & a[2]),
    .bcode(bcode3)
  );

  assign bcode = {bcode3, bcode2, bcode1, bcode0};
endmodule
