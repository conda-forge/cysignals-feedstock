#!/bin/bash
set -ex

make configure PYTHON="$PYTHON"
./configure --prefix=$PREFIX
make build PYTHON="$PYTHON"
${PYTHON:-python} -m pip install -vv .
if [[ "${CONDA_BUILD_CROSS_COMPILATION:-}" != "1" || "${CROSSCOMPILING_EMULATOR}" != "" ]]; then
  make check-prefix
fi
