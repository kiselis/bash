#!/bin/bash

factorial()
{
if [ "$1" = "baik" ]; then
	echo "Baigta!"
	exit

elif [ "$1" -gt "1" ]; then
		i=`expr $1 - 1`
		j=`factorial $i`
		k=`expr $1 \* $j`
		echo $k
	else
		echo 1
	fi
}

while :
do
	echo "Įveskite skaičių:"
	read x
	factorial $x
done
