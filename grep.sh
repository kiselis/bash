#!/bin/bash

Jonas=`grep -i mančesteris jonas.txt | cut -d: -f1,2`
echo "Visi vartotojai gyvenantys \"Mančesteryje\""
echo "Tie gyventojai yra: "
echo "$Jonas" | tr ' ' '\012'
