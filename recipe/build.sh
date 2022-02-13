#!/bin/bash

set -xe

sed -i.bak 's,/usr/bin/perl,/usr/bin/env perl,' colordiff.pl

make DESTDIR=$PREFIX INSTALL_DIR=/bin MAN_DIR=/man/man1 ETC_DIR=/etc install
