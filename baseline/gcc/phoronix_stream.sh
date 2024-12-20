#!/bin/bash

module purge

module load gcc/gcc-14.2.0

export CC=gcc
export CXX=g++

#export KMP_AFFINITY=compact

phoronix-test-suite force-install stream
phoronix-test-suite run stream