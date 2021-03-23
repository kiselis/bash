#!/bin/bash

# Funkcija

add_a_user()
{
	USER=$1
	PASSWORD=$2
	shift; shift;

	COMMENTS=$@
	echo "Pridedamas vartotojas $USER ... "
	echo useradd -c "$COMMENTS" $USER
	echo passwd $USER $PASSWORD
	echo "Added user $USER ($COMMENTS) with pass $PASSWORD"
}

echo "Skripto pradžia..."
add_a_user Jonas Kiselis Jonas Kiselis Linux analitikas
echo "Skripto pabaiga"
