import chisel3._
import chisel3.util._

class ControlUnit extends Module {
  val io = IO(new Bundle {
    val opcode = Input(UInt (6.W))
    val output0 = Output(Bool())
    val output1 = Output(Bool())
    val output2 = Output(Bool())
    val output3 = Output(Bool())
    val output4 = Output(Bool())
    val output5 = Output(Bool())
    //Define the module interface here (inputs/outputs)
  })

  when (io.opcode(0)) {
    io.output0 := 1.U(1.W)
  } .otherwise {
    io.output0 := 0.U(1.W)
  }
  when (io.opcode(1)) {
    io.output1 := 1.U(1.W)
  } .otherwise {
    io.output1 := 0.U(1.W)
  }
  when (io.opcode(2)) {
    io.output2 := 1.U(1.W)
  } .otherwise {
    io.output2 := 0.U(1.W)
  }
  when (io.opcode(3)) {
    io.output3 := 1.U(1.W)
  } .otherwise {
    io.output3 := 0.U(1.W)
  }
  when (io.opcode(4)) {
    io.output4 := 1.U(1.W)
  } .otherwise {
    io.output4 := 0.U(1.W)
  }
  when (io.opcode(5)) {
    io.output5 := 1.U(1.W)
  } .otherwise {
    io.output5 := 0.U(1.W)
  }
  //Implement this module here

}