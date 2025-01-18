
module testbench_inttofp;
  reg [7:0]   in_int;
  wire [12:0] out_float;

  inttofp uut(
    .in_int,
    .out_float
  );

  initial begin
    in_int = {0, 7'd0};
    # 200;
    in_int = {0, 7'd1};
    # 200;
    in_int = {0, 7'd10};
    # 200;
    in_int = {0, 7'd127};
    # 200;
    in_int = {1, 7'd0};
    # 200;
    in_int = {1, 7'd1};
    # 200;
    in_int = {1, 7'd10};
    # 200;
    in_int = {1, 7'd127};
    # 200;
    $stop;
  end
endmodule
