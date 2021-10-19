module RegisterFile(
  input         clock,
  input         reset,
  input  [4:0]  io_aSel,
  input  [4:0]  io_bSel,
  input  [31:0] io_writeData,
  input  [4:0]  io_writeSel,
  input         io_writeEnable,
  output [31:0] io_a,
  output [31:0] io_b
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] registerFile_0; // @[RegisterFile.scala 16:25]
  reg [31:0] registerFile_1; // @[RegisterFile.scala 16:25]
  reg [31:0] registerFile_2; // @[RegisterFile.scala 16:25]
  reg [31:0] registerFile_3; // @[RegisterFile.scala 16:25]
  reg [31:0] registerFile_4; // @[RegisterFile.scala 16:25]
  reg [31:0] registerFile_5; // @[RegisterFile.scala 16:25]
  reg [31:0] registerFile_6; // @[RegisterFile.scala 16:25]
  reg [31:0] registerFile_7; // @[RegisterFile.scala 16:25]
  reg [31:0] registerFile_8; // @[RegisterFile.scala 16:25]
  reg [31:0] registerFile_9; // @[RegisterFile.scala 16:25]
  reg [31:0] registerFile_10; // @[RegisterFile.scala 16:25]
  reg [31:0] registerFile_11; // @[RegisterFile.scala 16:25]
  reg [31:0] registerFile_12; // @[RegisterFile.scala 16:25]
  reg [31:0] registerFile_13; // @[RegisterFile.scala 16:25]
  reg [31:0] registerFile_14; // @[RegisterFile.scala 16:25]
  reg [31:0] registerFile_15; // @[RegisterFile.scala 16:25]
  reg [31:0] registerFile_16; // @[RegisterFile.scala 16:25]
  reg [31:0] registerFile_17; // @[RegisterFile.scala 16:25]
  reg [31:0] registerFile_18; // @[RegisterFile.scala 16:25]
  reg [31:0] registerFile_19; // @[RegisterFile.scala 16:25]
  reg [31:0] registerFile_20; // @[RegisterFile.scala 16:25]
  reg [31:0] registerFile_21; // @[RegisterFile.scala 16:25]
  reg [31:0] registerFile_22; // @[RegisterFile.scala 16:25]
  reg [31:0] registerFile_23; // @[RegisterFile.scala 16:25]
  reg [31:0] registerFile_24; // @[RegisterFile.scala 16:25]
  reg [31:0] registerFile_25; // @[RegisterFile.scala 16:25]
  reg [31:0] registerFile_26; // @[RegisterFile.scala 16:25]
  reg [31:0] registerFile_27; // @[RegisterFile.scala 16:25]
  reg [31:0] registerFile_28; // @[RegisterFile.scala 16:25]
  reg [31:0] registerFile_29; // @[RegisterFile.scala 16:25]
  reg [31:0] registerFile_30; // @[RegisterFile.scala 16:25]
  reg [31:0] registerFile_31; // @[RegisterFile.scala 16:25]
  wire [31:0] _GEN_65 = 5'h1 == io_aSel ? $signed(registerFile_1) : $signed(registerFile_0); // @[RegisterFile.scala 23:8]
  wire [31:0] _GEN_66 = 5'h2 == io_aSel ? $signed(registerFile_2) : $signed(_GEN_65); // @[RegisterFile.scala 23:8]
  wire [31:0] _GEN_67 = 5'h3 == io_aSel ? $signed(registerFile_3) : $signed(_GEN_66); // @[RegisterFile.scala 23:8]
  wire [31:0] _GEN_68 = 5'h4 == io_aSel ? $signed(registerFile_4) : $signed(_GEN_67); // @[RegisterFile.scala 23:8]
  wire [31:0] _GEN_69 = 5'h5 == io_aSel ? $signed(registerFile_5) : $signed(_GEN_68); // @[RegisterFile.scala 23:8]
  wire [31:0] _GEN_70 = 5'h6 == io_aSel ? $signed(registerFile_6) : $signed(_GEN_69); // @[RegisterFile.scala 23:8]
  wire [31:0] _GEN_71 = 5'h7 == io_aSel ? $signed(registerFile_7) : $signed(_GEN_70); // @[RegisterFile.scala 23:8]
  wire [31:0] _GEN_72 = 5'h8 == io_aSel ? $signed(registerFile_8) : $signed(_GEN_71); // @[RegisterFile.scala 23:8]
  wire [31:0] _GEN_73 = 5'h9 == io_aSel ? $signed(registerFile_9) : $signed(_GEN_72); // @[RegisterFile.scala 23:8]
  wire [31:0] _GEN_74 = 5'ha == io_aSel ? $signed(registerFile_10) : $signed(_GEN_73); // @[RegisterFile.scala 23:8]
  wire [31:0] _GEN_75 = 5'hb == io_aSel ? $signed(registerFile_11) : $signed(_GEN_74); // @[RegisterFile.scala 23:8]
  wire [31:0] _GEN_76 = 5'hc == io_aSel ? $signed(registerFile_12) : $signed(_GEN_75); // @[RegisterFile.scala 23:8]
  wire [31:0] _GEN_77 = 5'hd == io_aSel ? $signed(registerFile_13) : $signed(_GEN_76); // @[RegisterFile.scala 23:8]
  wire [31:0] _GEN_78 = 5'he == io_aSel ? $signed(registerFile_14) : $signed(_GEN_77); // @[RegisterFile.scala 23:8]
  wire [31:0] _GEN_79 = 5'hf == io_aSel ? $signed(registerFile_15) : $signed(_GEN_78); // @[RegisterFile.scala 23:8]
  wire [31:0] _GEN_80 = 5'h10 == io_aSel ? $signed(registerFile_16) : $signed(_GEN_79); // @[RegisterFile.scala 23:8]
  wire [31:0] _GEN_81 = 5'h11 == io_aSel ? $signed(registerFile_17) : $signed(_GEN_80); // @[RegisterFile.scala 23:8]
  wire [31:0] _GEN_82 = 5'h12 == io_aSel ? $signed(registerFile_18) : $signed(_GEN_81); // @[RegisterFile.scala 23:8]
  wire [31:0] _GEN_83 = 5'h13 == io_aSel ? $signed(registerFile_19) : $signed(_GEN_82); // @[RegisterFile.scala 23:8]
  wire [31:0] _GEN_84 = 5'h14 == io_aSel ? $signed(registerFile_20) : $signed(_GEN_83); // @[RegisterFile.scala 23:8]
  wire [31:0] _GEN_85 = 5'h15 == io_aSel ? $signed(registerFile_21) : $signed(_GEN_84); // @[RegisterFile.scala 23:8]
  wire [31:0] _GEN_86 = 5'h16 == io_aSel ? $signed(registerFile_22) : $signed(_GEN_85); // @[RegisterFile.scala 23:8]
  wire [31:0] _GEN_87 = 5'h17 == io_aSel ? $signed(registerFile_23) : $signed(_GEN_86); // @[RegisterFile.scala 23:8]
  wire [31:0] _GEN_88 = 5'h18 == io_aSel ? $signed(registerFile_24) : $signed(_GEN_87); // @[RegisterFile.scala 23:8]
  wire [31:0] _GEN_89 = 5'h19 == io_aSel ? $signed(registerFile_25) : $signed(_GEN_88); // @[RegisterFile.scala 23:8]
  wire [31:0] _GEN_90 = 5'h1a == io_aSel ? $signed(registerFile_26) : $signed(_GEN_89); // @[RegisterFile.scala 23:8]
  wire [31:0] _GEN_91 = 5'h1b == io_aSel ? $signed(registerFile_27) : $signed(_GEN_90); // @[RegisterFile.scala 23:8]
  wire [31:0] _GEN_92 = 5'h1c == io_aSel ? $signed(registerFile_28) : $signed(_GEN_91); // @[RegisterFile.scala 23:8]
  wire [31:0] _GEN_93 = 5'h1d == io_aSel ? $signed(registerFile_29) : $signed(_GEN_92); // @[RegisterFile.scala 23:8]
  wire [31:0] _GEN_94 = 5'h1e == io_aSel ? $signed(registerFile_30) : $signed(_GEN_93); // @[RegisterFile.scala 23:8]
  wire [31:0] _GEN_97 = 5'h1 == io_bSel ? $signed(registerFile_1) : $signed(registerFile_0); // @[RegisterFile.scala 24:8]
  wire [31:0] _GEN_98 = 5'h2 == io_bSel ? $signed(registerFile_2) : $signed(_GEN_97); // @[RegisterFile.scala 24:8]
  wire [31:0] _GEN_99 = 5'h3 == io_bSel ? $signed(registerFile_3) : $signed(_GEN_98); // @[RegisterFile.scala 24:8]
  wire [31:0] _GEN_100 = 5'h4 == io_bSel ? $signed(registerFile_4) : $signed(_GEN_99); // @[RegisterFile.scala 24:8]
  wire [31:0] _GEN_101 = 5'h5 == io_bSel ? $signed(registerFile_5) : $signed(_GEN_100); // @[RegisterFile.scala 24:8]
  wire [31:0] _GEN_102 = 5'h6 == io_bSel ? $signed(registerFile_6) : $signed(_GEN_101); // @[RegisterFile.scala 24:8]
  wire [31:0] _GEN_103 = 5'h7 == io_bSel ? $signed(registerFile_7) : $signed(_GEN_102); // @[RegisterFile.scala 24:8]
  wire [31:0] _GEN_104 = 5'h8 == io_bSel ? $signed(registerFile_8) : $signed(_GEN_103); // @[RegisterFile.scala 24:8]
  wire [31:0] _GEN_105 = 5'h9 == io_bSel ? $signed(registerFile_9) : $signed(_GEN_104); // @[RegisterFile.scala 24:8]
  wire [31:0] _GEN_106 = 5'ha == io_bSel ? $signed(registerFile_10) : $signed(_GEN_105); // @[RegisterFile.scala 24:8]
  wire [31:0] _GEN_107 = 5'hb == io_bSel ? $signed(registerFile_11) : $signed(_GEN_106); // @[RegisterFile.scala 24:8]
  wire [31:0] _GEN_108 = 5'hc == io_bSel ? $signed(registerFile_12) : $signed(_GEN_107); // @[RegisterFile.scala 24:8]
  wire [31:0] _GEN_109 = 5'hd == io_bSel ? $signed(registerFile_13) : $signed(_GEN_108); // @[RegisterFile.scala 24:8]
  wire [31:0] _GEN_110 = 5'he == io_bSel ? $signed(registerFile_14) : $signed(_GEN_109); // @[RegisterFile.scala 24:8]
  wire [31:0] _GEN_111 = 5'hf == io_bSel ? $signed(registerFile_15) : $signed(_GEN_110); // @[RegisterFile.scala 24:8]
  wire [31:0] _GEN_112 = 5'h10 == io_bSel ? $signed(registerFile_16) : $signed(_GEN_111); // @[RegisterFile.scala 24:8]
  wire [31:0] _GEN_113 = 5'h11 == io_bSel ? $signed(registerFile_17) : $signed(_GEN_112); // @[RegisterFile.scala 24:8]
  wire [31:0] _GEN_114 = 5'h12 == io_bSel ? $signed(registerFile_18) : $signed(_GEN_113); // @[RegisterFile.scala 24:8]
  wire [31:0] _GEN_115 = 5'h13 == io_bSel ? $signed(registerFile_19) : $signed(_GEN_114); // @[RegisterFile.scala 24:8]
  wire [31:0] _GEN_116 = 5'h14 == io_bSel ? $signed(registerFile_20) : $signed(_GEN_115); // @[RegisterFile.scala 24:8]
  wire [31:0] _GEN_117 = 5'h15 == io_bSel ? $signed(registerFile_21) : $signed(_GEN_116); // @[RegisterFile.scala 24:8]
  wire [31:0] _GEN_118 = 5'h16 == io_bSel ? $signed(registerFile_22) : $signed(_GEN_117); // @[RegisterFile.scala 24:8]
  wire [31:0] _GEN_119 = 5'h17 == io_bSel ? $signed(registerFile_23) : $signed(_GEN_118); // @[RegisterFile.scala 24:8]
  wire [31:0] _GEN_120 = 5'h18 == io_bSel ? $signed(registerFile_24) : $signed(_GEN_119); // @[RegisterFile.scala 24:8]
  wire [31:0] _GEN_121 = 5'h19 == io_bSel ? $signed(registerFile_25) : $signed(_GEN_120); // @[RegisterFile.scala 24:8]
  wire [31:0] _GEN_122 = 5'h1a == io_bSel ? $signed(registerFile_26) : $signed(_GEN_121); // @[RegisterFile.scala 24:8]
  wire [31:0] _GEN_123 = 5'h1b == io_bSel ? $signed(registerFile_27) : $signed(_GEN_122); // @[RegisterFile.scala 24:8]
  wire [31:0] _GEN_124 = 5'h1c == io_bSel ? $signed(registerFile_28) : $signed(_GEN_123); // @[RegisterFile.scala 24:8]
  wire [31:0] _GEN_125 = 5'h1d == io_bSel ? $signed(registerFile_29) : $signed(_GEN_124); // @[RegisterFile.scala 24:8]
  wire [31:0] _GEN_126 = 5'h1e == io_bSel ? $signed(registerFile_30) : $signed(_GEN_125); // @[RegisterFile.scala 24:8]
  assign io_a = 5'h1f == io_aSel ? $signed(registerFile_31) : $signed(_GEN_94); // @[RegisterFile.scala 23:8]
  assign io_b = 5'h1f == io_bSel ? $signed(registerFile_31) : $signed(_GEN_126); // @[RegisterFile.scala 24:8]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  registerFile_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  registerFile_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  registerFile_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  registerFile_3 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  registerFile_4 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  registerFile_5 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  registerFile_6 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  registerFile_7 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  registerFile_8 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  registerFile_9 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  registerFile_10 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  registerFile_11 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  registerFile_12 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  registerFile_13 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  registerFile_14 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  registerFile_15 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  registerFile_16 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  registerFile_17 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  registerFile_18 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  registerFile_19 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  registerFile_20 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  registerFile_21 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  registerFile_22 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  registerFile_23 = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  registerFile_24 = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  registerFile_25 = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  registerFile_26 = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  registerFile_27 = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  registerFile_28 = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  registerFile_29 = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  registerFile_30 = _RAND_30[31:0];
  _RAND_31 = {1{`RANDOM}};
  registerFile_31 = _RAND_31[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (io_writeEnable) begin
      if (5'h0 == io_writeSel) begin
        registerFile_0 <= io_writeData;
      end
    end
    if (io_writeEnable) begin
      if (5'h1 == io_writeSel) begin
        registerFile_1 <= io_writeData;
      end
    end
    if (io_writeEnable) begin
      if (5'h2 == io_writeSel) begin
        registerFile_2 <= io_writeData;
      end
    end
    if (io_writeEnable) begin
      if (5'h3 == io_writeSel) begin
        registerFile_3 <= io_writeData;
      end
    end
    if (io_writeEnable) begin
      if (5'h4 == io_writeSel) begin
        registerFile_4 <= io_writeData;
      end
    end
    if (io_writeEnable) begin
      if (5'h5 == io_writeSel) begin
        registerFile_5 <= io_writeData;
      end
    end
    if (io_writeEnable) begin
      if (5'h6 == io_writeSel) begin
        registerFile_6 <= io_writeData;
      end
    end
    if (io_writeEnable) begin
      if (5'h7 == io_writeSel) begin
        registerFile_7 <= io_writeData;
      end
    end
    if (io_writeEnable) begin
      if (5'h8 == io_writeSel) begin
        registerFile_8 <= io_writeData;
      end
    end
    if (io_writeEnable) begin
      if (5'h9 == io_writeSel) begin
        registerFile_9 <= io_writeData;
      end
    end
    if (io_writeEnable) begin
      if (5'ha == io_writeSel) begin
        registerFile_10 <= io_writeData;
      end
    end
    if (io_writeEnable) begin
      if (5'hb == io_writeSel) begin
        registerFile_11 <= io_writeData;
      end
    end
    if (io_writeEnable) begin
      if (5'hc == io_writeSel) begin
        registerFile_12 <= io_writeData;
      end
    end
    if (io_writeEnable) begin
      if (5'hd == io_writeSel) begin
        registerFile_13 <= io_writeData;
      end
    end
    if (io_writeEnable) begin
      if (5'he == io_writeSel) begin
        registerFile_14 <= io_writeData;
      end
    end
    if (io_writeEnable) begin
      if (5'hf == io_writeSel) begin
        registerFile_15 <= io_writeData;
      end
    end
    if (io_writeEnable) begin
      if (5'h10 == io_writeSel) begin
        registerFile_16 <= io_writeData;
      end
    end
    if (io_writeEnable) begin
      if (5'h11 == io_writeSel) begin
        registerFile_17 <= io_writeData;
      end
    end
    if (io_writeEnable) begin
      if (5'h12 == io_writeSel) begin
        registerFile_18 <= io_writeData;
      end
    end
    if (io_writeEnable) begin
      if (5'h13 == io_writeSel) begin
        registerFile_19 <= io_writeData;
      end
    end
    if (io_writeEnable) begin
      if (5'h14 == io_writeSel) begin
        registerFile_20 <= io_writeData;
      end
    end
    if (io_writeEnable) begin
      if (5'h15 == io_writeSel) begin
        registerFile_21 <= io_writeData;
      end
    end
    if (io_writeEnable) begin
      if (5'h16 == io_writeSel) begin
        registerFile_22 <= io_writeData;
      end
    end
    if (io_writeEnable) begin
      if (5'h17 == io_writeSel) begin
        registerFile_23 <= io_writeData;
      end
    end
    if (io_writeEnable) begin
      if (5'h18 == io_writeSel) begin
        registerFile_24 <= io_writeData;
      end
    end
    if (io_writeEnable) begin
      if (5'h19 == io_writeSel) begin
        registerFile_25 <= io_writeData;
      end
    end
    if (io_writeEnable) begin
      if (5'h1a == io_writeSel) begin
        registerFile_26 <= io_writeData;
      end
    end
    if (io_writeEnable) begin
      if (5'h1b == io_writeSel) begin
        registerFile_27 <= io_writeData;
      end
    end
    if (io_writeEnable) begin
      if (5'h1c == io_writeSel) begin
        registerFile_28 <= io_writeData;
      end
    end
    if (io_writeEnable) begin
      if (5'h1d == io_writeSel) begin
        registerFile_29 <= io_writeData;
      end
    end
    if (io_writeEnable) begin
      if (5'h1e == io_writeSel) begin
        registerFile_30 <= io_writeData;
      end
    end
    if (io_writeEnable) begin
      if (5'h1f == io_writeSel) begin
        registerFile_31 <= io_writeData;
      end
    end
  end
endmodule
