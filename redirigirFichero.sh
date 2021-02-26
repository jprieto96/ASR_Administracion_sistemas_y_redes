#!/bin/bash

nombreF="fichero.txt"

if [ -f $nombreF ]
then
	rm $nombreF
fi

for i in {1..6}
do
	nombreU=""
	while [[ $nombreU = "" ]]
	do
		echo Introduce el nombre de usuario "$i"
		read nombreU
	done
	random=$((RANDOM % 10000))
	echo $nombreU "1234" $random >> $nombreF
done
