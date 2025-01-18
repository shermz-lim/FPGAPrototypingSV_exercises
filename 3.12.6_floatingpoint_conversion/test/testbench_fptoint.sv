
module testbench_fptoint;
  reg [12:0] in_float;
  wire [7:0] out_int;
  wire       uf;
  wire       of;

  fptoint uut(
    .in_float,
    .out_int,
    .uf,
    .of
  );

  initial begin
    in_float = 13'b0000000000000;
    # 200;
    in_float = 13'b0000110000000;
    # 200;
    in_float = 13'b0010010100000;
    # 200;
    in_float = 13'b0011111111110;
    # 200;
    in_float = 13'b1000110000000;
    # 200;
    in_float = 13'b1010010100000;
    # 200;
    in_float = 13'b1011111111110;
    # 200;
    in_float = 13'b0100011111110;
    # 200;
    in_float = 13'b0000010000001;
    # 200;
    $stop;
  end
endmodule
