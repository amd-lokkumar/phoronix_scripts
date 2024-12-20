#!/bin/bash

module purge

source setenv_AOCC.sh

export CC=clang
export CXX=clang++

export KMP_AFFINITY=compact

phoronix-test-suite force-install ffmpeg
phoronix-test-suite run ffmpeg