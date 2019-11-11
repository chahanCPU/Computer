xvlog --sv FPU/fadd/fadd.sv
# xvlog --sv FPU/ftoi/ftoi.sv
# xvlog --sv FPU/itof/itof.sv
xvlog --sv top.sv
xvlog top_wrapper.v

echo `date`
