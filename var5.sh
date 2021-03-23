#!/bin/bash

old_IFS="IFS"
IFS=:
echo "Įveskite duomenis atskirtus dvitaškiais"
read x y z
IFS=$old_IFS
echo "x yra $x y yra $y z yra $z"
