#!/bin/bash

module purge

module load llvm/llvm-19.1.3

export CC=clang
export CXX=clang++

export KMP_AFFINITY=compact

phoronix-test-suite force-install stream
phoronix-test-suite run stream
