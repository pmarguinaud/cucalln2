#!/bin/bash

set -x

arch=$1

if [ "x$arch" = "x" ]
then
arch=gpu_nvhpc_d
fi

\rm -rf compile.$arch
mkdir compile.$arch
cd compile.$arch

Makefile.PL --include "\$(SRC)/../Makefile.$arch" --SRC ../src

make -j8


