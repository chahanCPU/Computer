# xvlog --sv FPU/fle/fle.sv
# xvlog --sv FPU/flt/flt.sv
# xvlog --sv FPU/feq/feq.sv
xvlog --sv fetch.sv
xvlog --sv ALU.sv
xvlog --sv decode.sv
xvlog --sv ALU.sv
xvlog --sv execute.sv
xvlog --sv writereg.sv
xvlog --sv topneo.sv
# xvlog --sv uart_tx.sv
# xvlog --sv top.sv
xvlog --sv test_cpu.sv
xvlog top_wrapper.v

echo `date`
