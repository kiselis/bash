#!/bin/bash

myfunc()
{
	echo "Mane vadino: $@"
	x=2
}

echo "Skriptas paleistas su $@"
x=1
echo "x yra $x"
myfunc 1 2 3
echo "x yra $x"
