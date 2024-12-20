#!/bin/bash

module purge

source setenv_AOCC.sh

export CC=clang
export CXX=clang++

export KMP_AFFINITY=compact

ulimit -n 65536

phoronix-test-suite force-install nginx
phoronix-test-suite run nginx
