#!/bin/bash

set -x

arch=gpu_nvhpc_d

\rm -rf compile.$arch
mkdir compile.$arch
cd compile.$arch

Makefile.PL --include '$(SRC)/../Makefile.gpu_nvhpc_d' --SRC ../src

make -j8


