# Tell clang to build with GNU99, so it knows about MAP_ANONYMOUS
export CFLAGS="$CFLAGS -std=gnu99"

make --version
make build
make install
make test
