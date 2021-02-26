#!/bin/bash

if [ -d $1 ]
then
	cd $1
	ficheros=($(ls))
	for fichero in ${ficheros[@]}
	do
		if [ -f $fichero ]
		then
			echo $(wc -w $fichero)
		fi
	done
else
	echo Error, el directorio no ha sido encontrado.
fi
