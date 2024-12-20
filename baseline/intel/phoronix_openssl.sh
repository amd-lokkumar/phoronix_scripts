#!/bin/bash

module purge

source setvars.sh

export CC=icx
export CXX=icpx

#export KMP_AFFINITY=compact

phoronix-test-suite force-install openssl
phoronix-test-suite run openssl
