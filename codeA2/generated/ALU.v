module ALU(
  input         clock,
  input         reset,
  input  [5:0]  io_sel,
  input  [31:0] io_oper1,
  input  [31:0] io_oper2,
  output        io_comparisonResult,
  output [31:0] io_result
);
  wire  _T = 6'h10 == io_sel; // @[Conditional.scala 37:30]
  wire [31:0] _T_3 = $signed(io_oper1) + $signed(io_oper2); // @[ALU.scala 20:29]
  wire  _T_4 = 6'h11 == io_sel; // @[Conditional.scala 37:30]
  wire  _T_8 = 6'h12 == io_sel; // @[Conditional.scala 37:30]
  wire [31:0] _T_11 = $signed(io_oper1) - $signed(io_oper2); // @[ALU.scala 29:29]
  wire  _T_12 = 6'h20 == io_sel; // @[Conditional.scala 37:30]
  wire [63:0] _T_13 = $signed(io_oper1) * $signed(io_oper2); // @[ALU.scala 36:29]
  wire  _T_14 = 6'h4 == io_sel; // @[Conditional.scala 37:30]
  wire  _T_15 = 6'h5 == io_sel; // @[Conditional.scala 37:30]
  wire  _T_16 = $signed(io_oper1) == $signed(io_oper2); // @[ALU.scala 46:21]
  wire  _T_17 = 6'h6 == io_sel; // @[Conditional.scala 37:30]
  wire  _T_18 = $signed(io_oper1) < $signed(io_oper2); // @[ALU.scala 54:21]
  wire  _T_19 = 6'h8 == io_sel; // @[Conditional.scala 37:30]
  wire  _T_20 = 6'h9 == io_sel; // @[Conditional.scala 37:30]
  wire  _T_21 = 6'ha == io_sel; // @[Conditional.scala 37:30]
  wire [31:0] _GEN_2 = _T_21 ? $signed(io_oper1) : $signed(32'sh0); // @[Conditional.scala 39:67]
  wire [31:0] _GEN_3 = _T_20 ? $signed(io_oper1) : $signed(_GEN_2); // @[Conditional.scala 39:67]
  wire [31:0] _GEN_4 = _T_19 ? $signed(io_oper2) : $signed(_GEN_3); // @[Conditional.scala 39:67]
  wire  _GEN_5 = _T_17 & _T_18; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_6 = _T_17 ? $signed(32'sh0) : $signed(_GEN_4); // @[Conditional.scala 39:67]
  wire  _GEN_7 = _T_15 ? _T_16 : _GEN_5; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_8 = _T_15 ? $signed(32'sh0) : $signed(_GEN_6); // @[Conditional.scala 39:67]
  wire  _GEN_9 = _T_14 | _GEN_7; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_10 = _T_14 ? $signed(32'sh0) : $signed(_GEN_8); // @[Conditional.scala 39:67]
  wire [63:0] _GEN_11 = _T_12 ? $signed(_T_13) : $signed({{32{_GEN_10[31]}},_GEN_10}); // @[Conditional.scala 39:67]
  wire  _GEN_12 = _T_12 ? 1'h0 : _GEN_9; // @[Conditional.scala 39:67]
  wire [63:0] _GEN_13 = _T_8 ? $signed({{32{_T_11[31]}},_T_11}) : $signed(_GEN_11); // @[Conditional.scala 39:67]
  wire  _GEN_14 = _T_8 ? 1'h0 : _GEN_12; // @[Conditional.scala 39:67]
  wire [63:0] _GEN_15 = _T_4 ? $signed({{32{_T_3[31]}},_T_3}) : $signed(_GEN_13); // @[Conditional.scala 39:67]
  wire  _GEN_16 = _T_4 ? 1'h0 : _GEN_14; // @[Conditional.scala 39:67]
  wire [63:0] _GEN_17 = _T ? $signed({{32{_T_3[31]}},_T_3}) : $signed(_GEN_15); // @[Conditional.scala 40:58]
  assign io_comparisonResult = _T ? 1'h0 : _GEN_16; // @[ALU.scala 14:23 ALU.scala 42:27 ALU.scala 47:29 ALU.scala 49:29 ALU.scala 55:29 ALU.scala 57:29]
  assign io_result = _GEN_17[31:0]; // @[ALU.scala 13:13 ALU.scala 20:17 ALU.scala 25:17 ALU.scala 29:17 ALU.scala 36:17 ALU.scala 62:17 ALU.scala 66:17 ALU.scala 70:17]
endmodule
