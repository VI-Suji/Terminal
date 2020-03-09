#!/bin/sh

cd $1

b=`ls *.*|wc -l`
a=`ls |wc -l`
c=`expr $a - $b`
echo "No of files is : $b"
echo "No of folders is : $c"
