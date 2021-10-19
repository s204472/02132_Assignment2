;buildInfoPackage: chisel3, version: 3.3.2, scalaVersion: 2.12.11, sbtVersion: 1.3.10
circuit RegisterFile : 
  module RegisterFile : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip aSel : UInt<5>, flip bSel : UInt<5>, flip writeData : SInt<32>, flip writeSel : UInt<5>, flip writeEnable : UInt<1>, a : SInt<32>, b : SInt<32>}
    
    reg registerFile : SInt<32>[32], clock @[RegisterFile.scala 16:25]
    when io.writeEnable : @[RegisterFile.scala 19:24]
      registerFile[io.writeSel] <= io.writeData @[RegisterFile.scala 20:31]
      skip @[RegisterFile.scala 19:24]
    io.a <= registerFile[io.aSel] @[RegisterFile.scala 23:8]
    io.b <= registerFile[io.bSel] @[RegisterFile.scala 24:8]
    
