export CFLAGS="-v -O2 -g"
for f in `find 2>/dev/null / -name mman.h`; do
    echo "***** $f *****"
    grep -C5 MAP_ANON "$f" || true
done
make build
make install
make test
