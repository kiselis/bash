#!/bin/bash

echo -en "Koks tavo vardas [ `whoami` ] "
read myname
if [ -z "$myname" ]; then
	myname=`whoami`
fi
echo "Tavo vardas: $myname"

