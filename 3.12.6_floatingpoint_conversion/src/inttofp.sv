
module inttofp (
  input logic [7:0]   in_int, // sign-magnitude format
  output logic [12:0] out_float
);
  logic sign;
  assign sign = in_int[7];
  
  logic [3:0] e;
  always_comb begin
    casez (in_int[6:0])
      8'b1??????: e = 4'd7;
      8'b01?????: e = 4'd6;
      8'b001????: e = 4'd5;
      8'b0001???: e = 4'd4;
      8'b00001??: e = 4'd3;
      8'b000001?: e = 4'd2;
      8'b0000001: e = 4'd1;
      default: e = 4'd0;
    endcase
  end

  logic [7:0] f;
  assign f = {in_int[6:0] << (7 - e), 1'b0};

  assign out_float = {sign, e, f};
endmodule
