#!/bin/bash

Jonas=`egrep -i 'mančesteris|glazgas' jonas.txt | cut -d: -f1,2`
echo "Visi gyventojai gyvenantys Mančesteryje"
echo "Tie gyventojai yra: "
echo "$Jonas" | tr ' ' '\012' | tr [:lower:] [:upper:] | tr '[ąčęėįšųūž]' '[ĄČĘĖĮŠŲŪŽ]'
