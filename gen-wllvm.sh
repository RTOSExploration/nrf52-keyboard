#!/usr/bin/env bash

cp template/Makefile.posix.template template/Makefile.posix

export LLVM_COMPILER=hybrid
export LLVM_COMPILER_PATH=/usr/lib/llvm-14/bin
export BINUTILS_TARGET_PREFIX=arm-none-eabi

cd keyboard/lot60-ble
make clean
make -j$(nproc) CC=wllvm
find _build/ -name "*.out" | xargs -n 1 extract-bc
