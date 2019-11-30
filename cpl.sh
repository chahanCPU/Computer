#!/bin/bash

compiler="$HOME/3A/cpujikken/min-caml/min-caml"
assembler="$HOME/3A/cpujikken/ASM/target/debug/asm"

$compiler $1
$assembler $1.s
