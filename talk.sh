#!/bin/bash

echo "Kalbėk"
while :
do
  read INPUT_STRING
  case $INPUT_STRING in
    hello)
      echo "Labas sau"
      ;;
    bye)
      echo "iki kito karto!"
      break
      ;;
    *)
      echo "Nesuprantu Tavęs"
      ;;
  esac
done
echo "Kaip ir viskas, gerbiamieji"
