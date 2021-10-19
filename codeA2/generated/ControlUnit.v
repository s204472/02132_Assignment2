module ControlUnit(
  input        clock,
  input        reset,
  input  [5:0] io_opcode,
  output       io_output0,
  output       io_output1,
  output       io_output2,
  output       io_output3,
  output       io_output4,
  output       io_output5
);
  assign io_output0 = io_opcode[0]; // @[ControlUnit.scala 17:16 ControlUnit.scala 19:16]
  assign io_output1 = io_opcode[1]; // @[ControlUnit.scala 22:16 ControlUnit.scala 24:16]
  assign io_output2 = io_opcode[2]; // @[ControlUnit.scala 27:16 ControlUnit.scala 29:16]
  assign io_output3 = io_opcode[3]; // @[ControlUnit.scala 32:16 ControlUnit.scala 34:16]
  assign io_output4 = io_opcode[4]; // @[ControlUnit.scala 37:16 ControlUnit.scala 39:16]
  assign io_output5 = io_opcode[5]; // @[ControlUnit.scala 42:16 ControlUnit.scala 44:16]
endmodule
