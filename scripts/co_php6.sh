#!/bin/sh -x
#
# $Id$

SRC_DIR=`dirname $0`/../src

cd $SRC_DIR && cvs -d :pserver:cvsread@cvs.php.net:/repository checkout php6
