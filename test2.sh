#!/bin/bash
X=0
while [ -n "$X" ]
do
  echo "Įrašykite savo tesk tąNieko išėjimui)"
  read X
  if [ -n "$X" ]; then
    echo "Pasakėte: $X"
  fi
done

