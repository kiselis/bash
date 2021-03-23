echo -en "Atspėk skaičių: "
read X
echo $X | grep "[^0-9]" > /dev/null 2>&1
if [ "$?" -eq "0" ]; then

  echo "Atsiprašome, reikia skaičiaus"
else
  if [ "$X" -eq "7" ]; then
    echo "Įvedėte teisingą skaičių!"
  fi
fi
