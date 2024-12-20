
module testbench;
  reg [3:0] a, b;
  wire agtb;

  greaterthan4 uut (
    .a,
    .b,
    .agtb
  );

  initial begin
    a = 4'b0000;
    b = 4'b0000;
    # 200;
    a = 4'b0001;
    b = 4'b0000;
    # 200;
    a = 4'b0001;
    b = 4'b0011;
    # 200;
    a = 4'b0010;
    b = 4'b0010;
    # 200;
    a = 4'b0010;
    b = 4'b0000;
    # 200;
    a = 4'b0011;
    b = 4'b0011;
    # 200;
    a = 4'b0011;
    b = 4'b0001;
    # 200;
    a = 4'b0100;
    b = 4'b0000;
    # 200;
    a = 4'b0101;
    b = 4'b0000;
    # 200;
    a = 4'b0101;
    b = 4'b0011;
    # 200;
    a = 4'b1010;
    b = 4'b0010;
    # 200;
    a = 4'b1010;
    b = 4'b0000;
    # 200;
    a = 4'b0011;
    b = 4'b0111;
    # 200;
    a = 4'b0011;
    b = 4'b1001;
    # 200;
    $stop;
  end
endmodule
