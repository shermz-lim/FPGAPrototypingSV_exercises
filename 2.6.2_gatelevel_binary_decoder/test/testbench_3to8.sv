
module testbench_3to8;
  reg [2:0]  a;
  reg        en;
  wire [7:0] bcode;

  bindec_3to8 uut(
    .a,
    .en,
    .bcode
  );

  initial begin
    a = 3'b000;
    en = 'b0;
    # 200;
    a = 3'b001;
    en = 'b0;
    # 200;
    a = 3'b010;
    en = 'b0;
    # 200;
    a = 3'b011;
    en = 'b0;
    # 200;
    a = 3'b000;
    en = 'b1;
    # 200;
    a = 3'b001;
    en = 'b1;
    # 200;
    a = 3'b010;
    en = 'b1;
    # 200;
    a = 3'b011;
    en = 'b1;
    # 200;
    a = 3'b100;
    en = 'b0;
    # 200;
    a = 3'b101;
    en = 'b0;
    # 200;
    a = 3'b110;
    en = 'b0;
    # 200;
    a = 3'b111;
    en = 'b0;
    # 200;
    a = 3'b100;
    en = 'b1;
    # 200;
    a = 3'b101;
    en = 'b1;
    # 200;
    a = 3'b110;
    en = 'b1;
    # 200;
    a = 3'b111;
    en = 'b1;
    # 200;
    $stop;
  end
endmodule
