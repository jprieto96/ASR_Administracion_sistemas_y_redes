#!/bin/bash

path=$1
cd $path
archivos=($(ls))

total=0
for archivo in ${archivos[@]}
do
	if [ -f $archivo ]; then
		w=($(wc -l $archivo))
		total=$(($total + $w))
	fi
done

echo $total
