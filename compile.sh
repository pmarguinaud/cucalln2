#!/bin/bash

set -x

./scripts/compile.pl     --update --arch gpu_nvhpc_d     --compile
./scripts/compile-ref.pl --update --arch gpu_nvhpc_d_ref --compile



