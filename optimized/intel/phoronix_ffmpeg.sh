#!/bin/bash

module purge

source setvars.sh

export CC=icx
export CXX=icpx

export KMP_AFFINITY=compact

phoronix-test-suite force-install ffmpeg
phoronix-test-suite run ffmpeg
