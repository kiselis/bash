#!/bin/bash

myfunc()
{
	echo "\$1 is $1"
	echo "\$2 is $2"

	a="Goodbye Cruel"
}

# Pagrindinis skriptas

a=Hello
b=World
myfunc $a $b
echo "a yra $a"
echo "b yra $b"

