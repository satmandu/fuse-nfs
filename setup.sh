#!/bin/sh

set -e

libtoolize
aclocal
autoheader
autoreconf -fiv || exit 1
autoconf
automake --add-missing
