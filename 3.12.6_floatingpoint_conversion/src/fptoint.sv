
module fptoint (
  input logic [12:0] in_float,
  output logic [7:0] out_int, // sign-magnitude format
  output logic       uf,
  output logic       of
);
  logic sign;
  assign sign = in_float[12];

  logic [3:0] e;
  logic [7:0] f;
  assign e = in_float[11:8];
  assign f = in_float[7:0];
  
  logic [6:0] magnitude;
  always_comb begin
    if (e > 4'd7) begin
      of = 1'b1;
      uf = 1'b0;
      magnitude = 7'b1111111;
    end else if ((e == 4'b0) && (f != 8'b0)) begin
      of = 1'b0;
      uf = 1'b1;
      magnitude = 7'b0000000;
    end else begin
      of = 1'b0;
      uf = 1'b0;
      magnitude = f >> (4'd8 - e);
    end
  end

  assign out_int = {sign, magnitude};
endmodule
