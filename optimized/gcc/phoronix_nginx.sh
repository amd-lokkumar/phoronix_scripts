#!/bin/bash

module purge

module load gcc/gcc-14.2.0

export CC=gcc
export CXX=g++

export KMP_AFFINITY=compact

ulimit -n 65536

phoronix-test-suite force-install nginx
phoronix-test-suite run nginx
