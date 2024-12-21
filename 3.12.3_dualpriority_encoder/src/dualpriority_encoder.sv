
module dualpriority_encoder (
  input logic [11:0] req,
  output logic [3:0] first,
  output logic [3:0] second
);
  priority_encoder encode_first (
    .req (req),
    .code(first)
  );

  logic [15:0] bcode;
  logic [11:0] first_decoded;
  bindec_4to16 decode_first (
    .a    (first),
    .en   (1'b1),
    .bcode(bcode)
  );
  assign first_decoded = bcode[12:1];

  logic [11:0] req2;
  assign req2 = req ^ first_decoded;
  priority_encoder encode_second (
    .req (req2),
    .code(second)
  );
endmodule
