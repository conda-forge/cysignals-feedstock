if [[ "$python_impl" == "pypy" ]]; then
  sed -i.bak 's/python*/pypy*/g' Makefile
fi

make build
make install
make test
