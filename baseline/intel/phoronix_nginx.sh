#!/bin/bash

module purge

source setvars.sh

export CC=icx
export CXX=icpx

#export KMP_AFFINITY=compact

ulimit -n 65536

phoronix-test-suite force-install nginx
phoronix-test-suite run nginx
