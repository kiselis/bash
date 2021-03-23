#!/bin/bash

echo -en "Koks tavo vardas [ `whoami` ] "
read myname
echo "Tavo vardas : ${myname:=Adelė Kiselytė}"
