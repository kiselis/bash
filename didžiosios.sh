#!/bin/bash

Jonas=`egrep -i 'mančesteris|glazgas' jonas.txt | cut -d: -f1,2`
echo "Visi gyventojai gyvenantys Mančesteryje"
echo "Tie gyventojai yra: "
echo "$Jonas" | tr ' ' '\012' | tr '[a-z]' '[A-z]' | tr '[ąčęėįšųūž]' '[ĄČĘĖĮŠŲŪŽ]'
