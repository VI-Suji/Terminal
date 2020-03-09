#!/bin/bash

first=1
second=1
if [ $1 -lt 2 ]
then
        echo "No series since"
		exit
fi
echo $first
echo $second
a=$1
a=`expr $a - 2`
for ((i=1;i<=$a;i++))
do
	d=`expr $first + $second `
	echo \n $d
	first=$second
	second=$d
done
