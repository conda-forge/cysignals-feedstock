if [[ "$(uname)" == "Darwin" ]]; then
  sed -i.bak  "s/resource.setrlimit/#resource.setrlimit/g" rundoctests.py
fi
make build
make install
if [[ "${CONDA_BUILD_CROSS_COMPILATION:-}" != "1" || "${CROSSCOMPILING_EMULATOR}" != "" ]]; then
make test
fi
