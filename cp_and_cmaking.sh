#!/bin/sh -x
#
# $Id$

if [ ! -n "$1" ]
then
  echo "Usage: `basename $0` <dir>."
  exit 65
fi  

ROOT_DIR=`dirname $0`
SELF_DIR=`pwd`

cp -r cmake/* $1
#cd cmake/ && find . -name .svn -prune -o -exec cp {} ../$1 \;

cd $SELF_DIR

#rm -rf build && mkdir -p build
cd build && cmake -DCMAKE_BUILD_TYPE:STRING=Debug ../$1 && make
