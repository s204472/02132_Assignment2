;buildInfoPackage: chisel3, version: 3.3.2, scalaVersion: 2.12.11, sbtVersion: 1.3.10
circuit ProgramCounter : 
  module ProgramCounter : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip stop : UInt<1>, flip jump : UInt<1>, flip run : UInt<1>, flip programCounterJump : UInt<16>, programCounter : UInt<16>}
    
    reg countReg : UInt<16>, clock with : (reset => (reset, UInt<16>("h00"))) @[ProgramCounter.scala 14:25]
    node _T = add(countReg, UInt<16>("h01")) @[ProgramCounter.scala 15:30]
    node adderOutput = tail(_T, 1) @[ProgramCounter.scala 15:30]
    node _T_1 = eq(io.run, UInt<1>("h00")) @[ProgramCounter.scala 16:29]
    node stopped = or(io.stop, _T_1) @[ProgramCounter.scala 16:25]
    node mux1 = mux(io.jump, io.programCounterJump, adderOutput) @[ProgramCounter.scala 17:17]
    node mux2 = mux(stopped, countReg, mux1) @[ProgramCounter.scala 18:17]
    countReg <= mux2 @[ProgramCounter.scala 19:12]
    io.programCounter <= countReg @[ProgramCounter.scala 20:21]
    
