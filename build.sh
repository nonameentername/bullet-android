#!/usr/bin/env sh

ROOTDIR=$(dirname $(readlink -f $0))

if [ ! -e "$ROOTDIR/bullet/bullet" ]; then
    cd "$ROOTDIR/bullet"
    svn checkout http://bullet.googlecode.com/svn/trunk/ bullet
fi

cd $ROOTDIR
./configure-android build

cd $ROOTDIR/build/
make
