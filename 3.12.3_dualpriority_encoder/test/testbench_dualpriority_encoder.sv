
module testbench_dualpriority_encoder;
  reg [11:0] req;
  wire [3:0] first;
  wire [3:0] second;

  dualpriority_encoder uut(
    .req,
    .first,
    .second
  );

  initial begin
    req = 12'b101010101010;
    # 200;
    req = 12'b001010101010;
    # 200;
    req = 12'b000010101010;
    # 200;
    req = 12'b000000011010;
    # 200;
    req = 12'b010000011010;
    # 200;
    req = 12'b010010011010;
    # 200;
    req = 12'b000000001010;
    # 200;
    req = 12'b000000000010;
    # 200;
    req = 12'b000000010000;
    # 200;
    req = 12'b000000000000;
    # 200;
    $stop;
  end
endmodule
