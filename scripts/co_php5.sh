#!/bin/sh -x
#
# $Id$

SRC_DIR=`dirname $0`/../src

cd $SRC_DIR && cvs -d :pserver:cvsread@cvs.php.net:/repository checkout -r PHP_5_3 php5  
