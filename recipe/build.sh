#!/bin/bash
set -ex

if [[ "$python_impl" == "pypy" ]]; then
  sed -i.bak 's/python\*/pypy\*/g' Makefile
fi

make configure PYTHON="$PYTHON"
./configure --prefix=$PREFIX
make build PYTHON="$PYTHON"
make install PYTHON="$PYTHON"
if [[ "${CONDA_BUILD_CROSS_COMPILATION:-}" != "1" || "${CROSSCOMPILING_EMULATOR}" != "" ]]; then
  make test
fi
