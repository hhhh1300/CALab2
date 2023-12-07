module IDEX_register
(
  input              rst_i,
  input              clk_i,  
  input              RegWrite_i,
  input              MemToReg_i, 
  input              MemRead_i, 
  input              MemWrite_i,
  input  [1:0]       ALUOp_i,
  input              ALUSrc_i,
  input  [31:0]      RS1data_i, 
  input  [31:0]      RS2data_i,
  input  [31:0]      extended_im_i,
  input  [6:0]       func7_i,
  input  [2:0]       func3_i,
  input  [4:0]       RegisterR1_i,
  input  [4:0]       RegisterR2_i,
  input  [4:0]       RegisterRd_i,

  output reg             RegWrite_o,
  output reg             MemToReg_o, 
  output reg             MemRead_o, 
  output reg             MemWrite_o,
  output reg [1:0]       ALUOp_o,
  output reg             ALUSrc_o,
  output reg [31:0]      RS1data_o, 
  output reg [31:0]      RS2data_o,
  output reg [31:0]      extended_im_o,
  output reg [6:0]       func7_o,
  output reg [2:0]       func3_o,
  output reg [4:0]       RegisterR1_o,
  output reg [4:0]       RegisterR2_o,
  output reg [4:0]       RegisterRd_o
);

reg              RegWrite;
reg              MemToReg; 
reg              MemRead; 
reg              MemWrite;
reg  [1:0]       ALUOp;
reg              ALUSrc;
reg  [31:0]      RS1data; 
reg  [31:0]      RS2data;
reg  [31:0]      extended_im;
reg  [6:0]       func7;
reg  [2:0]       func3;
reg  [4:0]       RegisterR1;
reg  [4:0]       RegisterR2;
reg  [4:0]       RegisterRd;


always@(posedge clk_i or negedge clk_i) begin
    if (clk_i) begin
      RegWrite <= RegWrite_i;
      MemToReg <= MemToReg_i; 
      MemRead <= MemRead_i; 
      MemWrite <= MemWrite_i;
      ALUOp <= ALUOp_i;
      ALUSrc <= ALUSrc_i;
      RS1data <= RS1data_i; 
      RS2data <= RS2data_i;
      extended_im <= extended_im_i;
      func7 <= func7_i;
      func3 <= func3_i;
      RegisterR1 <= RegisterR1_i;
      RegisterR2 <= RegisterR2_i;
      RegisterRd <= RegisterRd_i;
    end
    if(!clk_i) begin
      RegWrite_o <= RegWrite;
      MemToReg_o <= MemToReg; 
      MemRead_o <= MemRead; 
      MemWrite_o <= MemWrite;
      ALUOp_o <= ALUOp;
      ALUSrc_o <= ALUSrc;
      RS1data_o <= RS1data; 
      RS2data_o <= RS2data;
      extended_im_o <= extended_im;
      func7_o <= func7;
      func3_o <= func3;
      RegisterR1_o <= RegisterR1;
      RegisterR2_o <= RegisterR2;
      RegisterRd_o <= RegisterRd;
    end
end

endmodule