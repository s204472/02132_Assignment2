import chisel3._
import chisel3.iotesters.PeekPokeTester

class AluTester(dut: ALU) extends PeekPokeTester(dut) {
  //ADDI
  poke(dut.io.sel, 16.U(6.W))
  poke(dut.io.oper1, 9.S(32.W))
  poke(dut.io.oper2, 10.S(32.W))
  step(1)
  expect(dut.io.result, 19.S(32.W))

  //ADDI
  poke(dut.io.sel, 17.U(6.W))
  poke(dut.io.oper1, 9.S(32.W))
  poke(dut.io.oper2, 10.S(32.W))
  step(1)
  expect(dut.io.result, 19.S(32.W))

  //SUB
  poke(dut.io.sel, 18.U(6.W))
  poke(dut.io.oper1, 30.S(32.W))
  poke(dut.io.oper2, 10.S(32.W))
  step(1)
  expect(dut.io.result, 20.S(32.W))

  //MULT
  poke(dut.io.sel, 32.U(6.W))
  poke(dut.io.oper1, 9.S(32.W))
  poke(dut.io.oper2, 10.S(32.W))
  step(1)
  expect(dut.io.result, 90.S(32.W))

  //JR
  poke(dut.io.sel, 4.U(6.W))
  poke(dut.io.oper1, 9.S(32.W))
  poke(dut.io.oper2, 10.S(32.W))
  step(1)
  expect(dut.io.comparisonResult, true)

  //JEQ
  poke(dut.io.sel, 5.U(6.W))
  poke(dut.io.oper1, 9.S(32.W))
  poke(dut.io.oper2, 10.S(32.W))
  step(1)
  expect(dut.io.comparisonResult, false)

  poke(dut.io.oper1, 10.S(32.W))
  poke(dut.io.oper2, 10.S(32.W))
  step(1)
  expect(dut.io.comparisonResult, true)

  //JLT
  poke(dut.io.sel, 6.U(6.W))
  poke(dut.io.oper1, 9.S(32.W))
  poke(dut.io.oper2, 10.S(32.W))
  step(1)
  expect(dut.io.comparisonResult, true)

  poke(dut.io.oper1, 10.S(32.W))
  poke(dut.io.oper2, 10.S(32.W))
  step(1)
  expect(dut.io.comparisonResult, false)

  poke(dut.io.oper1, 11.S(32.W))
  poke(dut.io.oper2, 10.S(32.W))
  step(1)
  expect(dut.io.comparisonResult, false)

}

object AluTester {
  def main(args: Array[String]): Unit = {
    println("Testing ALU")
    iotesters.Driver.execute(
      Array("--generate-vcd-output", "on",
        "--target-dir", "generated",
        "--top-name", "ALU"),
      () => new ALU()) {
      c => new AluTester(c)
    }
  }
}
