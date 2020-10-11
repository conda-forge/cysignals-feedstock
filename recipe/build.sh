if [[ "$(uname)" == "Darwin" ]]; then
  sed -i.bak  "s/resource.setrlimit/#resource.setrlimit/g" rundoctests.py
fi
make build
make install
make test
