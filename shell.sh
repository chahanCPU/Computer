# xvlog --sv FPU/itof/itof.sv
xvlog --sv fetch.sv
xvlog --sv ALU.sv
xvlog --sv decode.sv
xvlog --sv top.sv
xvlog --sv test_cpu.sv
xvlog top_wrapper.v

echo `date`
