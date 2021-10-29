import chisel3._
import chisel3.util._

class ALU extends Module {
  val io = IO(new Bundle {
    //Define the module interface here (inputs/outputs)
    val sel = Input(UInt(6.W))
    val oper1 = Input(UInt(32.W))
    val oper2 = Input(UInt(32.W))
    val comparisonResult = Output(Bool())
    val result = Output(UInt(32.W))
  })
  //io.result := 0.S(32.W)
  io.result := 0.U(32.W)
  io.comparisonResult := 0.U

  //0001 = add, 0010 = sub,
  switch(io.sel) {
    // ADDI
    is("b010000".U) {
      io.result := io.oper1 + io.oper2
    }

    // ADD
    is("b010001".U) {
      io.result := io.oper1 + io.oper2
    }
    // SUB
    is("b010010".U) {
      io.result := io.oper1 - io.oper2
    }



    // MULT
    is("b100000".U) {
      io.result := io.oper1 * io.oper2
    }


    //JR
    is("b000100".U) {
      io.comparisonResult := 1.U
    }
    // JEQ
    is("b000101".U) {
      when(io.oper1 === io.oper2) {
        io.comparisonResult := 1.U
      }.otherwise {
        io.comparisonResult := 0.U
      }
    }
    // JLT
    is("b000110".U) {
      when(io.oper1 < io.oper2) {
        io.comparisonResult := 1.U
      }.otherwise {
        io.comparisonResult := 0.U
      }
    }
    // LI
    is("b001000".U) {
      io.result := io.oper2
    }
    // SD
    is("b001001".U) {
      io.result := io.oper1
    }
    // LD
    is("b001010".U) {
      io.result := io.oper1
    }

  }


  //Implement this module here

}