#!/bin/sh

# Padaro visų direktorijoje esančių failų s�

echo "Kur ieškoti failų?"

read kelias

cd $kelias

for i in hello 1 * 2 goodbye
do
  echo "Looping ... i is set to $i"
done
