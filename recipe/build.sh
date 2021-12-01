make build
make install
if [[ "${CONDA_BUILD_CROSS_COMPILATION}" != "1" ]]; then
make test
fi
