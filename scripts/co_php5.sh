#!/bin/sh -x
#
# $Id$

SRC_DIR=`dirname $0`/../src

# HEAD
cd $SRC_DIR && cvs -d :pserver:cvsread@cvs.php.net:/repository checkout php5  

# branch 5.3
#cd $SRC_DIR && cvs -d :pserver:cvsread@cvs.php.net:/repository checkout -r PHP_5_3 php5  
