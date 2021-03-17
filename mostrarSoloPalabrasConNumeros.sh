#!/bin/bash

while read line
do
	for w in $line
	do
		todoNumeros=true
		for (( i = 0; i < ${#w}; ++i ))
		do
			c="${w:i:1}"
			if ! [[ "$c" =~ ^[0-9]+$ ]]; then
				todoNumeros=false
				break
			fi
		done

		# echo $todoNumeros

		if [[ "$todoNumeros" == true ]]; then
			echo $w
		fi
	done
done < $1
