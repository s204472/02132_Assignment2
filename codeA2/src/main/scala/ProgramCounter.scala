import chisel3._
import chisel3.util._

class ProgramCounter extends Module {
  val io = IO(new Bundle {
    val stop = Input(Bool())
    val jump = Input(Bool())
    val run = Input(Bool())
    val programCounterJump = Input(UInt(16.W))
    val programCounter = Output(UInt(16.W))
  })
  //Implement this module here (respect the provided interface, since it used by the tester)

  val countReg = RegInit(0.U(16.W))
  val adderOutput = countReg + 1.U(16.W)
  val stopped = io.stop || (!io.run)
  val mux1 = Mux(io.jump, io.programCounterJump, adderOutput)
  val mux2 = Mux(stopped, countReg, mux1)
  countReg := mux2
  io.programCounter := countReg
}


