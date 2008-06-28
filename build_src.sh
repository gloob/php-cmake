#!/bin/sh -x
#
# $Id$

if [ ! -n "$1" ]
then
  echo "Usage: `basename $0` <dir>."
  exit 65
fi  

cp -r cmake/* $1

rm -rf build && mkdir -p build
cd build && cmake ../$1 
make
