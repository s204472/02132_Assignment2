import chisel3._
import chisel3.util._

class CPUTop extends Module {
  val io = IO(new Bundle {
    val done = Output(Bool ())
    val run = Input(Bool ())
    //This signals are used by the tester for loading and dumping the memory content, do not touch
    val testerDataMemEnable = Input(Bool ())
    val testerDataMemAddress = Input(UInt (16.W))
    val testerDataMemDataRead = Output(UInt (32.W))
    val testerDataMemWriteEnable = Input(Bool ())
    val testerDataMemDataWrite = Input(UInt (32.W))
    //This signals are used by the tester for loading and dumping the memory content, do not touch
    val testerProgMemEnable = Input(Bool ())
    val testerProgMemAddress = Input(UInt (16.W))
    val testerProgMemDataRead = Output(UInt (32.W))
    val testerProgMemWriteEnable = Input(Bool ())
    val testerProgMemDataWrite = Input(UInt (32.W))
  })
  //Creating components
  val programCounter = Module(new ProgramCounter())
  val dataMemory = Module(new DataMemory())
  val programMemory = Module(new ProgramMemory())
  val registerFile = Module(new RegisterFile())
  val controlUnit = Module(new ControlUnit())
  val alu = Module(new ALU())

  //Connecting the modules
  programCounter.io.run := io.run
  programCounter.io.stop := false.B


  // Read instruction
  programMemory.io.address := programCounter.io.programCounter
  val instruction = programMemory.io.instructionRead

  // Split opcode to controlbits
  controlUnit.io.opcode := instruction(31, 26)

  // Send adresses into registers
  registerFile.io.writeEnable := controlUnit.io.output5 | controlUnit.io.output4 | controlUnit.io.output3

  registerFile.io.writeSel := instruction(25, 21)
  when(controlUnit.io.output2){
    registerFile.io.aSel := instruction(25, 21)
    registerFile.io.bSel := instruction(20, 16)
  } .otherwise {
    registerFile.io.aSel := instruction(20, 16)
    registerFile.io.bSel := instruction(15, 11)
  }




  val data = instruction(15, 0)

  // ALU
  alu.io.sel := instruction(31, 26)
  alu.io.oper1 := registerFile.io.a
  when(instruction(31, 26) === "b010000".U || instruction(31, 26) === "b001000".U) {
    // automatic sign extension
    alu.io.oper2 := data
  } .otherwise {
    alu.io.oper2 := registerFile.io.b
  }

  // Data memory
  dataMemory.io.address := alu.io.result
  dataMemory.io.dataWrite := registerFile.io.a
  when (instruction(31, 26) === "b001001".U){
    dataMemory.io.writeEnable := true.B
  } .otherwise {
    dataMemory.io.writeEnable := false.B
  }

  // Last mux

  when (instruction(31, 26) === "b001001".U) {
    registerFile.io.writeData := dataMemory.io.dataRead
  } .otherwise {
    registerFile.io.writeData := alu.io.result
  }


  // Jump handling
  when (controlUnit.io.output2 && alu.io.comparisonResult) {
    programCounter.io.jump := true.B
    programCounter.io.programCounterJump := data
  } .otherwise {
    programCounter.io.jump := false.B
    programCounter.io.programCounterJump := data
  }



  when(!io.run){
    io.done := true.B
  } .otherwise {
    io.done := false.B
  }












  //This signals are used by the tester for loading the program to the program memory, do not touch
  programMemory.io.testerAddress := io.testerProgMemAddress
  io.testerProgMemDataRead := programMemory.io.testerDataRead
  programMemory.io.testerDataWrite := io.testerProgMemDataWrite
  programMemory.io.testerEnable := io.testerProgMemEnable
  programMemory.io.testerWriteEnable := io.testerProgMemWriteEnable
  //This signals are used by the tester for loading and dumping the data memory content, do not touch
  dataMemory.io.testerAddress := io.testerDataMemAddress
  io.testerDataMemDataRead := dataMemory.io.testerDataRead
  dataMemory.io.testerDataWrite := io.testerDataMemDataWrite
  dataMemory.io.testerEnable := io.testerDataMemEnable
  dataMemory.io.testerWriteEnable := io.testerDataMemWriteEnable
}