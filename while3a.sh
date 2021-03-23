#!/bin/sh
while read f
do
  case $f in
    hello) echo English ;;
    Labas) echo Lietuvių ;;
    Sveiks) echo Latviešu ;;
    *) echo kita kalba : $f ;;
  esac
done
