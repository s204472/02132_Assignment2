import chisel3._
import chisel3.iotesters.PeekPokeTester

class ControlUnitTester(dut: ControlUnit) extends PeekPokeTester(dut) {
  poke(dut.io.opcode, 63.U(6.W))
  step(1)
  expect(dut.io.output0, true)
  expect(dut.io.output1, true)
  expect(dut.io.output2, true)
  expect(dut.io.output3, true)
  expect(dut.io.output4, true)
  expect(dut.io.output5, true)

  poke(dut.io.opcode, 5.U(6.W))
  step(1)
  expect(dut.io.output0, true)
  expect(dut.io.output1, false)
  expect(dut.io.output2, true)
  expect(dut.io.output3, false)
  expect(dut.io.output4, false)
  expect(dut.io.output5, false)

  poke(dut.io.opcode, 0.U(6.W))
  step(1)
  expect(dut.io.output0, false)
  expect(dut.io.output1, false)
  expect(dut.io.output2, false)
  expect(dut.io.output3, false)
  expect(dut.io.output4, false)
  expect(dut.io.output5, false)
}

object ControlUnitTester {
  def main(args: Array[String]): Unit = {
    println("Running the Control Unit tester")
    iotesters.Driver.execute(
      Array("--generate-vcd-output", "on",
        "--target-dir", "generated",
        "--top-name", "ControlUnit"),
      () => new ControlUnit()) {
      c => new ControlUnitTester(c)
    }
  }
}





