xvlog --sv FPU/fadd/fadd.sv
xvlog --sv FPU/fsub/fsub.sv
# xvlog --sv FPU/itof/itof.sv
xvlog --sv top.sv
xvlog top_wrapper.v

echo `date`
