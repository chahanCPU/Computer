#!/bin/bash

libml="$HOME/3A/cpujikken/min-caml/libmincaml.ml"
libS="$HOME/3A/cpujikken/min-caml/libmincaml.S"
compiler="$HOME/3A/cpujikken/min-caml/min-caml"
compile_path="$HOME/3A/cpujikken/min-caml/test"
assembler="$HOME/3A/cpujikken/ASM/target/release/asm"

cp $libml .
cp $libS .
$compiler $1
rm ./libmincaml.ml
rm ./libmincaml.S
