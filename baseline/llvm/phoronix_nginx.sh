#!/bin/bash

module purge

module load llvm/llvm-19.1.3 

export CC=clang
export CXX=clang++

#export KMP_AFFINITY=compact

ulimit -n 65536

phoronix-test-suite force-install nginx
phoronix-test-suite run nginx
