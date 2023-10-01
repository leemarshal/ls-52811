#!/bin/sh
if [ $# -lt 2 ]
then
	echo "need two inputs"
	exit 1
fi
if [ $1 -lt 1 ] || [ $2 -lt 1 ]
then
	echo "need positive integer inputs"
	exit 2
fi
for i in $(seq 1 $1)
do
	for j in $(seq 1 $2)
	do
		temp=$(expr $i \* $j)
		printf "%d*%d=%d\t" "$i" "$j" "$temp"
	done
	echo
done
